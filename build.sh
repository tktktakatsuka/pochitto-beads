#!/bin/sh
# src/app.html(ページ本体)に、ページの頭の部分を足して index.html を作る。
# app.html は Claude の試作ページとしても公開しているので、そちらには頭の部分を書かない。
set -e
cd "$(dirname "$0")"
{
  cat src/head.html
  cat src/app.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html を作りました"
