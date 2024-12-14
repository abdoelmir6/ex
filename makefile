README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date de génération: $(date)" >> README.md
	echo "Nombre de lignes dans guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md

run:
	bash guessinggame.sh
