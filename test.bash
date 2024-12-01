#!/bin/bash 

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### plus test ###

### NOMAL INPUT ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO" 

# 各コードの期待出力を定義
declare -A expected_outputs
expected_outputs[C]='コード: C
e o ┌───┬───┬───┬───┬
B   ├─●─┼───┼───┼───┼
G o ├───┼───┼───┼───┼
D   ├───┼─●─┼───┼───┼
A   ├───┼───┼─●─┼───┼
E x └───┴───┴───┴───┴
      1   2   3   4'
expected_outputs[D]='コード: D
e   ┌───┬─●─┬───┬───┬
B   ├───┼───┼─●─┼───┼
G   ├───┼─●─┼───┼───┼
D o ├───┼───┼───┼───┼
A x ├───┼───┼───┼───┼
E x └───┴───┴───┴───┴
      1   2   3   4'

expected_outputs[E]='コード: E
e o ┌───┬───┬───┬───┬
B o ├───┼───┼───┼───┼
G   ├─●─┼───┼───┼───┼
D   ├───┼─●─┼───┼───┼
A   ├───┼─●─┼───┼───┼
E o └───┴───┴───┴───┴
      1   2   3   4'

expected_outputs[F]='コード: F
e   ┌─●─┬───┬───┬───┬
B   ├─●─┼───┼───┼───┼
G   ├───┼─●─┼───┼───┼
D   ├───┼───┼─●─┼───┼
A   ├───┼───┼─●─┼───┼
E   └─●─┴───┴───┴───┴
      1   2   3   4'

expected_outputs[G]='コード: G
e   ┌───┬───┬─●─┬───┬
B o ├───┼───┼───┼───┼
G o ├───┼───┼───┼───┼
D o ├───┼───┼───┼───┼
A   ├───┼─●─┼───┼───┼
E   └───┴───┴─●─┴───┴
      1   2   3   4'

expected_outputs[A]='コード: A
e o ┌───┬───┬───┬───┬
B   ├───┼─●─┼───┼───┼
G   ├───┼─●─┼───┼───┼
D   ├───┼─●─┼───┼───┼
A o ├───┼───┼───┼───┼
E x └───┴───┴───┴───┴
      1   2   3   4'

expected_outputs[B]='コード: B
e   ┌───┬─●─┬───┬───┬
B   ├───┼───┼───┼─●─┼
G   ├───┼───┼───┼─●─┼
D   ├───┼───┼───┼─●─┼
A   ├───┼─●─┼───┼───┼
E x └───┴───┴───┴───┴
      1   2   3   4'

for chord in "${!expected_outputs[@]}"; do
    out=$(echo "$chord" | ./Fingering_Gt)
    [ "$out" = "${expected_outputs[$chord]}" ] || ng "$LINENO"
done

out=$(echo H | ./Fingering_Gt)
[ $? = 1 ] || ng "$LINENO"
[ "${out}" = "登録されていません" ] || ng "$LINENO"

out=$(echo あ | ./Fingering_Gt)
[ $? = 1 ] || ng "$LINENO"
[ "${out}" = "登録されていません" ] || ng "$LINENO"

out=$(echo | ./Fingering_Gt)
[ $? = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
