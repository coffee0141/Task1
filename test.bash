#!/bin/bash

# エラー時に行番号を表示する関数
ng () {
    echo "${1}行目が違うよ"
    res=1
}

# 初期状態
res=0

# 標準入力を準備
input=$(seq 10)

# スクリプトを実行
output=$(echo "$input" | python3 ./omikuji.py)

# 合計回数を検証
total_count=$(echo "$output" | awk '{sum += $1} END {print sum}')
[ "$total_count" -eq 10 ] || ng "$LINENO"

# 出力形式を検証
echo "$output" | while read -r line; do
    if ! [[ $line =~ ^[0-9]+\ (大吉|中吉|小吉|凶)$ ]]; then
        ng "$LINENO"
        break
    fi
done

# 全テストが通過したか確認
[ "$res" -eq 0 ] && echo "OK"
exit $res

