all: pull add commit push

add:
	echo "$$(date): by $$(whoami)" >> ./index.html

pull:
	git pull origin master

commit:
	git add .
	git config user.name "asim3 from runner"
	git config user.email "asim3"
	git commit -m "commit by $$(whoami)"
	git commit -m "commit by $$(whoami) @ $$(date +%R)"

push:
	git push origin master
