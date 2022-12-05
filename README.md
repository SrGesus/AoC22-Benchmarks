# AoC Compare

This repository benchmarks a couple of [Advent of Code](https://adventofcode.com/) repositories for fun, simply calculating their average runtimes using [hyperfine](https://lib.rs/crates/hyperfine).

# How to Run
After cloning the repository, to run it first you'll have to clone the submodules, this can be done by simply running the Makefile:
```bash 
make
```
Afterwards, you can run the benchmark of each day by running:
```bash
make run01
```


## Dependencies
These are the main requirements for the benchmarks to run:
* git
* cargo
* hyperfine

# Repositories Benchmarked
This is an attempt to benchmark the following repositories:
* https://github.com/abread/AdventOfCode2022/
* https://github.com/Dacops/AoC/
* https://github.com/diogotcorreia/advent-of-code
* https://github.com/EdSwordsmith
* https://github.com/RafDevX/advent-of-code
* https://github.com/RageKnify/advent_of_code
* https://github.com/randomicecube/aoc-2022
* https://github.com/SrGesus/AdventofCode

git submodule add https://github.com/SrGesus/AdventofCode srgesus &&
git submodule add https://github.com/abread/AdventOfCode2022/ abread &&
git submodule add https://github.com/RageKnify/advent_of_code borges &&
git submodule add https://github.com/diogotcorreia/advent-of-code correia &&
git submodule add https://github.com/Dacops/AoC/ dacops &&
git submodule add https://github.com/RafDevX/advent-of-code rso &&
git submodule add https://github.com/EdSwordsmith/adventofcode espadeiro &&
git submodule add https://github.com/randomicecube/aoc-2022 gaspar