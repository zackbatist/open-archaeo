#!/bin/bash
INPUT=open-archaeo.csv
OLDIFS=$IFS
IFS='|'
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read item_name description github gist gitlab  bitbucket launchpad twitter blogpost cran pypi website author1_name author2_name author3_name author4_name author5_name tag1 tag2 tag3 tag4 tag5
do
echo -e "* **$item_name:** $description</br>";
echo "**Tags:** " && if ! [ -z "$tag1" ]; then printf "[$tag1] · "; fi && if ! [ -z "$tag2" ]; then printf "[$tag2] · "; fi && if ! [ -z "$tag3" ]; then printf "[$tag3] · "; fi && if ! [ -z "$tag4" ]; then printf "[$tag4] · "; fi && if ! [ -z "$tag5" ]; then printf "[$tag5] · "; fi && echo -e "</br>"
echo "**Links:** "&& if ! [ -z "$github" ]; then printf "[[GitHub]]($github) · "; fi && if ! [ -z "$gist" ]; then printf "[[Gist]]($gist) · "; fi && if ! [ -z "$gitlab" ]; then printf "[[GitLab]]($gitlab) · "; fi && if ! [ -z "$bitbucket" ]; then printf "[[BitBucket]]($bitbucket) · "; fi && if ! [ -z "$launchpad" ]; then printf "[[Launchpad]]($launchpad) · "; fi && if ! [ -z "$twitter" ]; then printf "[[Twitter]]($twitter) · "; fi && if ! [ -z "$blogpost" ]; then printf "[[Blog Post]]($blogpost) · "; fi && if ! [ -z "$cran" ]; then printf "[[CRAN]]($cran) · "; fi && if ! [ -z "$pypi" ]; then printf "[[PyPi]]($pypi) · "; fi && if ! [ -z "$website" ]; then printf "[[Website]]($website)"; fi && echo -e "</br>"
echo "**Authors:** " && if ! [ -z "$author1_name" ]; then printf "$author1_name · "; fi && if ! [ -z "$author2_name" ]; then printf "$author2_name · "; fi && if ! [ -z "$author3_name" ]; then printf "$author3_name · "; fi && if ! [ -z "$author4_name" ]; then printf "$author4_name · "; fi && if ! [ -z "$author5_name" ]; then printf "$author5_name · "; fi && echo -e "</br>"
echo ""
done < $INPUT
IFS=$OLDIFS
