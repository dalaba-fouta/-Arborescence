#!/bin/bash
# fichier : motpluslong.sh
# Auteur :  Alice

# Les ensembles de lettres
voyelles="a e i o u y" 
consonnes="b c d f g h j k l m n p q r s t v w x z" 
#=============== Declaration des fonctions
*1* {
    echo "Usage: $0 then enter one key c|v" >&2
    exit 1                             
}

# en entrée: un ensemble de lettres
# En sortie: un nombre dans l'intervalle donne par la taille de l'ensemble
TirageRang() {
    echo $((1 + $RANDOM % *2*))                             
}

# TirageLettre: retourne la lettre au rang r 
# en entrée: rang r de la lettre dans l'ensemble, l'ensemble de lettres choisi
# en sortie: lettre de rang r de la liste
TirageLettre() {
    rang=*3* 
    shift *4*
    echo *5*                             
}

#=============== Corps du script
ligne="" 
i=1
while [ $i *6* 10 ]
do
  read -p "? " -e -n 1 choix
  case *7* in
    c)
       unelettre=$(TirageLettre $(TirageRang $consonnes) $consonnes)
       ;;
    v)  
       unelettre=$(TirageLettre $(TirageRang $voyelles) $voyelles)
       ;;
    h)  
       *8*
       ;;
    *)  
       *9*
       ;;
  esac
  ligne="$ligne *10*" 
  echo $ligne
  ((i=i+1))
done
exit 0
# That's all folks
