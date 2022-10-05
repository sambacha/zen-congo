#!/usr/bin/env bash
echo " ✔︎ Staring Build process.."

hugo --gc --ignoreCache -e production --cleanDestinationDir --buildFuture --enableGitInfo --baseURL https://www-securerpc.netlify.app --log --logFile hugo.log
npx pagefind --source "public"
date "+%Y-%m-%dT%H:%M:%S%z" > public/build_id.txt
sleep 1
exit 0
