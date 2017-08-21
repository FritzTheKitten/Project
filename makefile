all: README.md

README.md:
	echo "# Project" > README.md
	echo "## Bash, Make, Git, and GitHub" >> README.md
	echo "" >> README.md
	echo "This file was created on"  >> README.md
	date  >> README.md
	echo "" >> README.md
	echo "Number of lines in the file *guessinggame.sh*:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

