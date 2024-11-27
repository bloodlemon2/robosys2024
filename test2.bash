#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Tomoya Tsuji <s23c1093hj@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

### 正常な動作 ###
out=$(seq 5 | ./multiply)
[ "${out}" = 120 ] || ng "$LINENO"

### 異常な動作 ###
out=$(echo 1.0 | ./multiply)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


out=$(echo あ | ./multiply)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./multiply)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit "$res"
