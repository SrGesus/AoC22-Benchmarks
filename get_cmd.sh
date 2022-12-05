#! /bin/bash

ROOT_DIR=$PWD

case $1 in
abread)
    echo cd $PWD/abread "&&" cat $PWD/inputs/$2.txt "|" cargo run --release --bin day$2
;;
borges)
    rm $PWD/borges/2022/$(printf 'day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/borges/2022/$(printf 'day%02d' $2)/input.txt
    echo cd $PWD/borges/2022/$(printf 'day%02d' $2) "&&" cargo run --release --bin part2
;;
correia)
    rm $PWD/correia/2022/inputs/$(printf 'day%02d.txt' $2)
    ln -s $PWD/inputs/$2.txt $PWD/correia/2022/inputs/$(printf 'day%02d.txt' $2)
    echo cd $PWD/correia/2022/ "&&" cargo run --release $2
;;
dacops)
    cd dacops/AoC_22/Day_$2
    make -s
    cd $ROOT_DIR
    echo cd $PWD/dacops/AoC_22/Day_$2 "&&" cat $PWD/inputs/$2.txt "|" ./day$2-2
;;
espadeiro)
    echo cd $PWD/espadeiro/aoc2022/$(printf 'day%02d' $2) "&&" cat $PWD/inputs/$2.txt "|" cargo run --release
;;
rso)
    rm $PWD/rso/2022/inputs/$(printf 'day%02d.txt' $2)
    ln -s $PWD/inputs/$2.txt $PWD/rso/2022/inputs/$(printf 'day%02d.txt' $2)
    echo cd $PWD/rso/2022 "&&" cargo run --release $2
;;
srgesus)
    rm $PWD/srgesus/AoC2022/resources/$(printf 'day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/srgesus/AoC2022/resources/$(printf 'day%02d' $2)/input.txt
    echo cd $PWD/srgesus/AoC2022/ "&&" cargo run --release --bin $(printf 'day%02d-2' $2)
;;
gaspar)
    case $2 in
    1)
        cd $PWD/gaspar/day-$2/
        g++ -O3 -Wall aoc-$2.cpp -o exec
        rm aoc-$2-input.txt
        ln -s $ROOT_DIR/inputs/$2.txt aoc-$2-input.txt
        cd $ROOT_DIR
        echo cd $PWD/gaspar/day-$2/ "&&" ./exec
    ;;
    *)
        cd $PWD/gaspar/day-$2/ex-2
        g++ aoc-$2.cpp -o exec
        rm aoc-$2-input.txt
        ln -s $ROOT_DIR/inputs/$2.txt aoc-$2-input.txt
        cd $ROOT_DIR
        echo cd $PWD/gaspar/day-$2/ex-2 "&&" ./exec
    ;;
    esac
;;
esac