all: pull add commit push

add:
	echo "$$(date): by $$(whoami)" >> ./index.html

pull:
	git pull origin master

commit:
	if [ -n "${GITHUB_ACTOR}" ]; then       git config user.name github-actions;       git config user.email github-actions@github.com;     fi
	git add .
	git commit -m "commit by $$(whoami) @ $$(date +%R)"

push:
	git push origin master
