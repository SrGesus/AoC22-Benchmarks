#! /bin/bash

ROOT_DIR=$PWD

case $1 in
abread)
    cd $PWD/abread && cargo build --release --bin day$2
    cd $ROOT_DIR
    echo cd $PWD/abread "&&" cat $PWD/inputs/$2.txt "|" ./target/release/day$2
;;
borges)
    rm $PWD/borges/2022/$(printf 'day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/borges/2022/$(printf 'day%02d' $2)/input.txt
    cd $PWD/borges/2022/$(printf 'day%02d' $2) && cargo build --release --bin part2
    cd $ROOT_DIR
    echo cd $PWD/borges/2022/$(printf 'day%02d' $2) "&&" ./target/release/part2
;;
correia)
    rm $PWD/correia/2022/inputs/$(printf 'day%02d.txt' $2)
    ln -s $PWD/inputs/$2.txt $PWD/correia/2022/inputs/$(printf 'day%02d.txt' $2)
    cd $PWD/correia/2022 && cargo build --release
    cd $ROOT_DIR
    echo cd $PWD/correia/2022/ "&&" ./target/release/aoc2022 $2
;;
dacops)
    cd dacops/AoC_22/Day_$2
    make -s
    cd $ROOT_DIR
    echo cd $PWD/dacops/AoC_22/Day_$2 "&&" cat $PWD/inputs/$2.txt "|" ./day$2-2
;;
espadeiro)
    case $2 in
        5)
        echo cd $PWD/espadeiro/aoc2022/$(printf 'day%02d' $2) "&&" cargo run --release $PWD/inputs/$2.txt
        ;;
        *)
        cd $PWD/espadeiro/aoc2022/$(printf 'day%02d' $2) && cargo build --release 
        cd $ROOT_DIR
        echo cd $PWD/espadeiro/aoc2022/$(printf 'day%02d' $2) "&&" cat $PWD/inputs/$2.txt "|" ./target/release/$(printf 'day%02d' $2)
        ;;
    esac
;;
rso)
    rm $PWD/rso/2022/inputs/$(printf 'day%02d.txt' $2)
    ln -s $PWD/inputs/$2.txt $PWD/rso/2022/inputs/$(printf 'day%02d.txt' $2)
    cd $PWD/rso/2022 && cargo build --release
    cd $ROOT_DIR
    echo cd $PWD/rso/2022 "&&" ./target/release/aoc2022 $2
;;
srgesus)
    rm $PWD/srgesus/AoC2022/resources/$(printf 'day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/srgesus/AoC2022/resources/$(printf 'day%02d' $2)/input.txt
    cd $PWD/srgesus/AoC2022/ && cargo build --release --bin $(printf 'day%02d-2' $2)
    cd $ROOT_DIR
    echo cd $PWD/srgesus/AoC2022/ "&&" ./target/release/$(printf 'day%02d-2' $2)
;;
gaspar)
    case $2 in
    1)
        cd $PWD/gaspar/day-$2/
        g++ -O3 -Wall aoc-$2.cpp -o exec
        rm aoc-$2-input.txt
        ln -s $ROOT_DIR/inputs/$2.txt aoc-input.txt
        cd $ROOT_DIR
        echo cd $PWD/gaspar/day-$2/ "&&" ./exec
    ;;
    *)
        cd $PWD/gaspar/day-$2/
        make -s
        rm resources/aoc-input.txt
        ln -s $ROOT_DIR/inputs/$2.txt resources/aoc-input.txt
        cd $ROOT_DIR
        echo cd $PWD/gaspar/day-$2/ "&&" ./ex-2/aoc-$2
    ;;
    esac
;;
salgueiro)
    rm $PWD/salgueiro/2022/$(printf 'day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/salgueiro/2022/$(printf 'day%02d' $2)/input.txt
    echo cd $PWD/salgueiro/2022/$(printf 'day%02d' $2)/ "&&" julia $(printf 'day%02d.jl' $2)
;;
david)
    rm $PWD/david/$(printf 'Day%02d' $2)/input.txt
    ln -s $PWD/inputs/$2.txt $PWD/david/$(printf 'Day%02d' $2)/input.txt
    echo python $PWD/david/$(printf 'Day%02d' $2)/$(printf 'Day%02d' $2).py
;;
gongas)
    echo todo
;;
esac