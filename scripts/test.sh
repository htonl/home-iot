#!/bin/bash

HEADLINE_COUNT="$(wc -l news.html| cut -d " " -f 1)"
echo "${HEADLINE_COUNT}"

