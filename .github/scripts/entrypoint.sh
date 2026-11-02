#!/bin/bash
set -e
echo "Starting vowel frequency analyzer..."
FILE_PATH="${FILE:-data.txt}"
RESULT=$(python3 /app/.github/scripts/frequency.py "$FILE_PATH")
echo "Result: $RESULT"
bash /app/.github/scripts/update_readme.sh "$RESULT" "${GITHUB_USER:-unknown}"
echo "Analysis complete."
