#!/bin/bash
FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
echo -e "\n### Vowel frequency: ${FREQ_RESULT}\nContributor: ${GITHUB_USER}\nTimestamp: ${TIMESTAMP}" >> README.md
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"
