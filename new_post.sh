#!/usr/bin/bash
if [[ "$@" ]]; then
    curDate=$(date +%Y-%m-%d)
    newTitle=$(echo "$@" | sed "s/ /-/" | sed "s%/%%")
    newFileName="_posts/$curDate-$newTitle.markdown"
    if [[ $? = 0 ]] && [[ ! -e $newFileName ]]; then
        echo "---
layout: post
title:
date: $curDate
categories:
---" >> $newFileName
    fi
fi
