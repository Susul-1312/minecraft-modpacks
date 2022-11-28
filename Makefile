all: markdown-main markdown-content refresh

markdown-main:
	markdown readme.md | ./html-wrap.sh Main > index.html

markdown-content:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "markdown {}readme.md | ./html-wrap.sh {} > {}index.html"

refresh:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "cd {} && yes | packwiz refresh && cd -"

update:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "cd {} && yes | packwiz update --all && cd -"
