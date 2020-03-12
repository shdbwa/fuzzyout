#!/bin/env sh 
printf '%s%s%s%s' "$(tput setaf 3)" "$(tput blink)" "
# # # # # # # # ## # # # # # # #
# FUZZY YOUTUBE MP3 DOWNLOADER #	
# # # # # # # # ## # # # # # # #
Enter Keywords :" "$(tput sgr0)";
read YTSEARCH;
DDGRLINE=$( ddgr -j -w www.youtube.com --url-handler 'echo' $YTSEARCH )
YTURL=$( echo $DDGRLINE )
youtube-dl $YTURL -x 
