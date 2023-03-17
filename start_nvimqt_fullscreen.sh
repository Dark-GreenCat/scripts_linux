#! /bin/sh
file_path=$1

while [ -z "$file_path" ]
do
	echo "Provide a file path"
	read -r -p $'File path: ' file_path
done

nvim-qt --fullscreen "$file_path"
