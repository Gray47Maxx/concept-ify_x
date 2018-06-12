#!/bin/bash
sleep 5
set -e
## /tmp/tweakprop.sh | tweakprop http://forum.xda-developers.com/showthread.php?t=2664332 | https://notabug.org/kl3/tweakprop
ver=0.5.9a

OUTFD=$2


ex() {
	exit 1
}

build=/system/build.prop
echo "" >> $build



for part in system data
do
	if mount | grep -q "/$part"
	then
		mount -o rw,remount "/$part" "/$part" &	else
		mount -o rw "/$part"
	fi
done

chmod 0666 $build


tweak="/tmp/tweak.prop"

## abort execution if file is not found or empty
test -s "$tweak"
## check if original $build should be backed up
answer=$(sed "s/BACKUP=//p;d" "$tweak")

backup() {
	## create backup file containing date and used tweakprop version
	## if valid and writeable
	echo "# Backup of $build created at `date` using tweakprop version $ver" > "$1" || ex "Cannot write to backup file $1" && \
	(cat "$build" >> "$1")
}

case "$answer" in
y|Y|yes|Yes|YES)
	## use same directory where tweak.prop was found
	backup "${tweak%/*}/${build##*/}.backup"
	;;

n|N|no|No|NO)
	;;

*)
	## check if empty or invalid
	[[ -z "$answer" || ! -d $(dirname "$answer") ]] && ex "Given path is empty or parent directory does not exist" || backup "$answer"
	;;
esac


## read only lines matching valid entry pattern (someVAR=someVAL, !someSTR, @someENTR|someSTR, $someVAR=someVAL)
sed -r '/(^#|^ *$|^BACKUP=)/d;/(.*=.*|^\!|^\@.*\|.*|^\$.*\|.*)/!d' "$tweak" | while read line
do
	## remove entry
	if echo "$line" | grep -q '^\!'
	then
		entry=$(echo "${line#?}" | sed -e 's/[\/&]/\\&/g')
		## remove from $build if present
		grep -q "$entry" "$build" && (sed "/$entry/d" -i "$build")

	## append string
	elif echo "$line" | grep -q '^\@'
	then
		entry=$(echo "${line#?}" | sed -e 's/[\/&]/\\&/g')
		var=$(echo "$entry" | cut -d\| -f1)
		app=$(echo "$entry" | cut -d\| -f2)
		## append string to $var's value if present in $build
		grep -q "$var" "$build" && (sed "s/^$var=.*$/&$app/" -i "$build")

	## change value only iif entry exists
	elif echo "$line" | grep -q '^\$'
	then
		entry=$(echo "${line#?}" | sed -e 's/[\/&]/\\&/g')
		var=$(echo "$entry" | cut -d\| -f1)
		new=$(echo "$entry" | cut -d\| -f2)
		## change $var's value iif $var present in $build
		grep -q "$var=" "$build" && (sed "s/^$var=.*$/$var=$new/" -i "$build")

	## add or override entry
	else
		var=$(echo "$line" | cut -d= -f1)
		## if variable already present in $build
		if grep -q "$var" "$build"
		then
			## override value in $build if different
			grep -q $(grep "$var" "$tweak") "$build" || (sed "s/^$var=.*$/$line/" -i "$build")
		## else append entry to $build
		else
			echo "$line" >> "$build"
		fi
	fi
done

## trim empty and duplicate lines of $build
sed '/^ *$/d' -i "$build"

chmod 0644 "$build"

done

sync

exit 0