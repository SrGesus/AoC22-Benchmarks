
make:
	git submodule update --init

clean:
	rm -rf abread borges correia dacops espadeiro gaspar gongas rso salgueiro srgesus david

update: clean
	git submodule update --remote

run1: 
	hyperfine --warmup 1 --runs 100 \
		'$(shell ./get_cmd.sh abread 1)' \
		'$(shell ./get_cmd.sh borges 1)' \
		'$(shell ./get_cmd.sh correia 1)' \
		'$(shell ./get_cmd.sh espadeiro 1)' \
		'$(shell ./get_cmd.sh gaspar 1)' \
		'$(shell ./get_cmd.sh gongas 1)' \
		'$(shell ./get_cmd.sh rso 1)' \
		'$(shell ./get_cmd.sh salgueiro 1)' \
		'$(shell ./get_cmd.sh srgesus 1)' \
		'$(shell ./get_cmd.sh david 1)' \
		# '$(shell ./get_cmd.sh dacops 1)'


run4: 
	hyperfine -warmup 1 --runs 10 \
		'$(shell ./get_cmd.sh abread 4)' \
		'$(shell ./get_cmd.sh borges 4)' \
		'$(shell ./get_cmd.sh correia 4)' \
		'$(shell ./get_cmd.sh rso 4)' \
		'$(shell ./get_cmd.sh espadeiro 4)' \
		'$(shell ./get_cmd.sh srgesus 4)' \
		'$(shell ./get_cmd.sh gaspar 4)' \
		'$(shell ./get_cmd.sh dacops 4)'

run5: 
	hyperfine --warmup 1 --runs 1 \
		'$(shell ./get_cmd.sh borges 5)' \
		'$(shell ./get_cmd.sh correia 5)' \
		'$(shell ./get_cmd.sh rso 5)' \
		'$(shell ./get_cmd.sh espadeiro 5)' \
		'$(shell ./get_cmd.sh srgesus 5)' \
		'$(shell ./get_cmd.sh gaspar 5)' \
		'$(shell ./get_cmd.sh david 5)' \
		'$(shell ./get_cmd.sh abread 5)' \
		# '$(shell ./get_cmd.sh salgueiro 5)'

run7: 
	hyperfine --warmup 3 --runs 100 \
		'$(shell ./get_cmd.sh abread 7)' \
		'$(shell ./get_cmd.sh borges 7)' \
		'$(shell ./get_cmd.sh correia 7)' \
		'$(shell ./get_cmd.sh espadeiro 7)' \
		'$(shell ./get_cmd.sh gaspar 7)' \
		'$(shell ./get_cmd.sh rso 7)' \
		'$(shell ./get_cmd.sh salgueiro 7)' \
		'$(shell ./get_cmd.sh srgesus 7)' \

run8: 
	hyperfine --warmup 3 --runs 10 \
		'$(shell ./get_cmd.sh abread 8)' \
		'$(shell ./get_cmd.sh borges 8)' \
		'$(shell ./get_cmd.sh correia 8)' \
		'$(shell ./get_cmd.sh espadeiro 8)' \
		'$(shell ./get_cmd.sh gaspar 8)' \
		'$(shell ./get_cmd.sh rso 8)' \
		'$(shell ./get_cmd.sh salgueiro 8)' \
		'$(shell ./get_cmd.sh srgesus 8)' \

run9:
	hyperfine --warmup 3 --runs 1000 \
		'$(shell ./get_cmd.sh abread 9)' \
		'$(shell ./get_cmd.sh borges 9)' \
		'$(shell ./get_cmd.sh correia 9)' \
		'$(shell ./get_cmd.sh gaspar 9)' \
		'$(shell ./get_cmd.sh rso 9)' \
		'$(shell ./get_cmd.sh salgueiro 9)' \
		'$(shell ./get_cmd.sh srgesus 9)' \