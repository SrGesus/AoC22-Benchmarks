
make:
	git submodule update --init

clean:
	rm -rf abread borges correia dacops espadeiro gaspar gongas rso salgueiro srgesus

update: clean
	git submodule update --remote

run1: make
	hyperfine --warmup 3 --runs 100 \
		'$(shell ./get_cmd.sh abread 1)' \
		'$(shell ./get_cmd.sh borges 1)' \
		'$(shell ./get_cmd.sh correia 1)' \
		'$(shell ./get_cmd.sh rso 1)' \
		'$(shell ./get_cmd.sh espadeiro 1)' \
		'$(shell ./get_cmd.sh srgesus 1)' \
		'$(shell ./get_cmd.sh gaspar 1)' \
		# '$(shell ./get_cmd.sh dacops 1)'


run4: make
	hyperfine --runs 1 \
		'$(shell ./get_cmd.sh abread 4)' \
		'$(shell ./get_cmd.sh borges 4)' \
		'$(shell ./get_cmd.sh correia 4)' \
		'$(shell ./get_cmd.sh rso 4)' \
		'$(shell ./get_cmd.sh espadeiro 4)' \
		'$(shell ./get_cmd.sh srgesus 4)' \
		'$(shell ./get_cmd.sh gaspar 4)' \
		'$(shell ./get_cmd.sh dacops 4)'

run5: make
	hyperfine --warmup 3 --runs 1 \
		'$(shell ./get_cmd.sh borges 5)' \
		'$(shell ./get_cmd.sh correia 5)' \
		'$(shell ./get_cmd.sh rso 5)' \
		'$(shell ./get_cmd.sh srgesus 5)' \