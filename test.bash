#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### 正常な動作 ###
out=$(seq 4 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### 異常な動作 ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit "$res"
