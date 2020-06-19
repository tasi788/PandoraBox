#!/bin/bash
TOKEN="{TOKEN}"
CHAT_ID="{CHAT_ID}"

Hash=$1
Name=$2
Path=$3
let Size=$4/1048576

echo "$Name $Path"

url="https://api.telegram.org/bot$TOKEN/sendMessage"

text="💬 Hash: <code>$Hash</code>
📋 Name: <code>$Name</code>
📂 Path: <code>$Path</code>
📥 Size: <code>$Size MB</code>"

curl -X POST $url -d chat_id=$CHAT_ID -d text="$text" -d parse_mode="html" >/dev/null 2>&1