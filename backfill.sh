#!/bin/bash

DATES=(
  "2026-02-12" "2026-02-16" "2026-02-28"
  "2026-03-19"
  "2026-04-04" "2026-04-20"
)

for DATE in "${DATES[@]}"; do
  echo "update $DATE" >> log.txt
  git add .
  GIT_AUTHOR_DATE="${DATE}T12:00:00" GIT_COMMITTER_DATE="${DATE}T12:00:00" git commit -m "daily update: $DATE"
done

git push origin main --force