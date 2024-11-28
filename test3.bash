#!/bin/bash
# SPDX-FileCopyrightText: 2024 Tomoya Tsuji <s23c1093hj@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

### 正常な動作 ###
out=$(echo 0 1 2 3 4 5 6 7 8 9 | tr ' ' '\n' | ./s3_school_credit_generator)
[ "$?" = 0 ] || ng "$LINENO"

out=$(echo 5 8 2 1 0 | tr ' ' '\n' | ./s3_school_credit_generator)
[ "$?" = 0 ] || ng "$LINENO"

out=$(echo 12 | ./s3_school_credit_generator)
[ "${out}" = "正しい形式で履修登録をしてください" ] || ng "$LINENO"

out=$(echo 1 1 1 | tr ' ' '\n' | ./s3_school_credit_generator)
[ "${out}" = "1つの科目を何個も履修できません" ] || ng "$LINENO"

### 異常な動school_credit_generator作 ###
out=$(echo 1.0 | ./s3_school_credit_generator)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./s3_school_credit_generator)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a | ./s3_school_credit_generator)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./s3_school_credit_generator)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit "$res"
