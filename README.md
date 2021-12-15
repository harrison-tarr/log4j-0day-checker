A simple script to check for 0 day log4j vulnerabilies.

Requires an input file of git REPO urls (https, not ssh clone url)

Usage: `cat input.txt | while read line; do ./split.sh "$line" "$organizationName"; done`

make sure to replace $organizationName with your organization's name

NOTE: it does not clean up after itself. If you need to remove all the repos, you can `rm -rf dir` the directory you're working in. You'll need to copy out the script if it's your only copy
