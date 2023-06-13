#!/bin/bash

install_dir="/usr/local/bin"

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ ! -d "$install_dir" ]; then
	echo "ERROR: Installation directory '$install_dir' does not exist!"
	echo "Please create it manually then try again"
	exit 1
fi

cp "$script_dir/autogit" "$install_dir/autogit"

chmod u+x "$install_dir/autogit"

manpage_path="/usr/share/man/man1"
autogit_manpage="$manpage_path/autogit.1"

sudo mkdir -p "$manpage_path"

sudo cp "$script_dir/autogit.1" "$autogit_manpage"

sudo mandb

echo "Installtion completed!"
echo "The autogit script is now available for use globally."
echo " "
echo "Run \"man autogit\""
