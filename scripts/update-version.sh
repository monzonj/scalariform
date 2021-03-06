#!/bin/bash
PREVIOUS=$1
NEXT=$2

cd `dirname $0`/..

while read p; do
  echo "Changing $p"
  sed -i s/$PREVIOUS/$NEXT/g $p
done < scripts/version-list.txt

git diff
