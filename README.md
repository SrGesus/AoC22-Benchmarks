# AoC Compare (WIP)

This repository benchmarks a couple of [Advent of Code](https://adventofcode.com/) repositories for fun, simply calculating their average runtimes using [hyperfine](https://lib.rs/crates/hyperfine).

This is also an attempt to just learn a little more about git (using submodules), and exercise a bit of automation.

# How to Run
After cloning the repository, to run it first you'll have to clone the submodules, this can be done by simply running the Makefile:
```bash 
make
```
Afterwards, you can run the benchmark of each day by running:
```bash
make run1
```


## Dependencies
These are the main requirements for the benchmarks to run:
* git
* cargo
* hyperfine
* julia

# Repositories Benchmarked
This is an attempt to benchmark the following repositories:
* https://github.com/abread/AdventOfCode2022/
* https://github.com/Dacops/AoC/
* https://github.com/diogotcorreia/advent-of-code
* https://github.com/EdSwordsmith/adventofcode
* https://github.com/RafDevX/advent-of-code
* https://github.com/RageKnify/advent_of_code
* https://github.com/randomicecube/aoc-2022
* https://github.com/SrGesus/AdventofCode
* https://github.com/franciscoBSalgueiro/AdventOfCode
* https://github.com/vugonz/aoc-dumb
