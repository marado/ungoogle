#!/bin/bash
encoded=$(cat $1|sed 's/url=/#/'|cut -d# -f2)
printf -v decoded '%b' "${encoded//%/\\x}"
echo "${decoded}"
