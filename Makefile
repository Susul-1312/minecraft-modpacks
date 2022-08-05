all: markdown update

markdown:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "markdown {}readme.md > {}index.html"

update:
	/bin/ls -1 -d */ | xargs -I {} -d '\n' sh -c "cd {} && yes | packwiz update --all && packwiz refresh && cd -"
