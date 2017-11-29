all: README.md

README.md:
	echo "# Guessing game" > README.md
	echo -n " Date: " >> README.md
	date >> README.md
	echo -n " Number of lines of code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
