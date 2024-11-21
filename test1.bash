#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Tomoya Tsuji <s23c1093hj@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause
ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(echo 8 | ./prime_factorization)
[ "${out}" = 8=2*2*2 ] || ng "$LINENO"

out=$(echo 2 | ./prime_factorization)
[ "${out}" = "2=2, 2は素数だよ" ] || ng "$LINENO"

out=$(echo あ | ./prime_factorization)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./prime_factorization)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit "$res"
