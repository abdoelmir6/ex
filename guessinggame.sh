#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
get_file_count() {
  echo $(ls -1 | wc -l)
}

# Demande à l'utilisateur de deviner le nombre de fichiers
guessing_game() {
  correct_guess=$(get_file_count)
  user_guess=-1

  # Boucle jusqu'à ce que l'utilisateur devine correctement
  while [ $user_guess -ne $correct_guess ]; do
    echo "Devinez le nombre de fichiers dans le répertoire actuel :"
    read user_guess

    if [ $user_guess -lt $correct_guess ]; then
      echo "Trop bas, essayez encore !"
    elif [ $user_guess -gt $correct_guess ]; then
      echo "Trop haut, essayez encore !"
    fi
  done

  echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
}

# Lancer le jeu
guessing_game
