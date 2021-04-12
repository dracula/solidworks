#!/bin/sh

# Copy files to backup location
mkdir -p solidworks-filebackup/data/taskpane/common

if ! cp /c/Program\ Files/SOLIDWORKS\ Corp/SOLIDWORKS/swStyleBlueu.dll \
	solidworks-filebackup/
then
	exit 1 # don't overwrite files if no copy is made
fi

if ! cp /c/Program\ Files/SOLIDWORKS\ Corp/SOLIDWORKS/data/taskpane/common/*.css \
	solidworks-filebackup/data/taskpane/common/
then
	exit 1 # don't overwrite files if no copy is made
fi

# Make changes to ui dll
chmod +w /c/Program\ Files/SOLIDWORKS\ Corp/SOLIDWORKS/swStyleBlueu.dll
vim -u NONE \
	"+%s/73 *, *73 *, *73/40,42,54/g" \
	"+%s/80 *, *80 *, *80/68,71,90/g" \
	"+%s/55 *, *55 *, *55/40,42,54/g" \
	"+wq" \
	/c/Program\ Files/SOLIDWORKS\ Corp/SOLIDWORKS/swStyleBlueu.dll

# Make changes to css files
sed -i 's/#494949/#282A36/g' \
	/c/Program\ Files/SOLIDWORKS\ Corp/SOLIDWORKS/data/taskpane/common/*.css
