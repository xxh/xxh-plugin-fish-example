#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts A:K:q option
do
  case "${option}"
  in
    q) QUIET=1;;
    A) ARCH=${OPTARG};;
    K) KERNEL=${OPTARG};;
  esac
done

function loadcolor(){
# Colors  http://wiki.bash-hackers.org/snipplets/add_color_to_your_scripts
# More info about colors in bash http://misc.flogisoft.com/bash/tip_colors_and_formatting
esc_seq="\x1b["  #In Bash, the <Esc> character can be obtained with the following syntaxes:  \e  \033  \x1B
NC=$esc_seq"39;49;00m" # NC = Normal Color
# Colors with black background (40;)set for emails.
red=$esc_seq"31;40;01m"
green=$esc_seq"32;40;00m"
yellow=$esc_seq"33;40;01m"
blue=$esc_seq"34;40;01m"
magenta=$esc_seq"35;40;01m"
cyan=$esc_seq"36;40;01m"
}
loadcolor

# Makes a directory if it is not found.
function mkdirifnotfound(){
  mkdir -p "$build_dir/$founddirectory"
}

###### Some example code to help jump start new fish plugins.
###### This code does the not so easy task of copying files with their unknown directory structure.

### Copy files to the build directory that will be uploaded to remote hosts.
### This defaults to the "pluginrc.fish" file but other can be added after it separated by a space.
#for filestocopy in pluginrc.fish
#do
#  for found in $(find "$filestocopy" -depth -print)
#  do
#    if [ -f "$found" ]; then
#      founddirectory=$(dirname "$found")
#      if [ "$founddirectory" == "." ]; then
#        founddirectory=""
#      fi
#      mkdirifnotfound
#      cp -r "$found" "$build_dir"
#    else
#      mkdirifnotfound
#    fi
#  done
#done


rm -rf $build_dir
mkdir -p $build_dir

for f in pluginrc.fish
do
    cp $CDIR/$f $build_dir/
done
