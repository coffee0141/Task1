#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Haru Motoyama
# SPDX-License-Identifier: BSD-3-Clause
ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

input=$(seq 1000000)

output=$(echo "$input" | python3 ./omikuji)

total_count=$(echo "$output" | awk '{sum += $1} END {print sum}')
[ "$total_count" -eq 1000000 ] || ng "$LINENO"

echo "$output" | while read -r line; do
    if ! [[ $line =~ ^[0-9]+\ (大吉|中吉|小吉|凶)$ ]]; then
        ng "$LINENO"
        break
    fi
done

[ "$res" -eq 0 ] && echo "OK"
exit $res

