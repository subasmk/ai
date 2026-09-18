#!/bin/bash
REPO_DIR="/home/ubuntu/github/ai"
cd "$REPO_DIR" || exit 1
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")
echo "$TIMESTAMP" >> timestamp.log
git add timestamp.log
git commit -m "Daily commit: $TIMESTAMP"
git push
