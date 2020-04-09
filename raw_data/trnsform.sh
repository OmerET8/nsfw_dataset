#!/bin/bash

scripts_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
base_dir="$(dirname "$scripts_dir")"
raw_data_dir="$base_dir/raw_data"

declare -a sfw_names=(
	"drawings"
	"neutral"
	)
	
declare -a nsfw_names=(
	"hentai"
	"porn"
	"sexy"
	)

for cname in "${sfw_names[@]}"
do
	echo "Getting images for class: $cname"
	urls_file="$raw_data_dir/$cname/urls_$cname.txt"
	cat "$urls_file" >> "$raw_data_dir/sfw/urls_sfw.txt"
done



for cname in "${nsfw_names[@]}"
do
	echo "Getting images for class: $cname"
	urls_file="$raw_data_dir/$cname/urls_$cname.txt"
	cat "$urls_file" >> "$raw_data_dir/nsfw/urls_nsfw.txt"
done
