all: markdown-main markdown-content update

markdown-main:
	markdown readme.md | ./html-wrap.sh Main > index.html

markdown-content:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "markdown {}readme.md | ./html-wrap.sh {} > {}index.html"

update:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "cd {} && yes | packwiz update --all && packwiz refresh && cd -"
