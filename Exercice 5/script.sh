echo "Où stocker le projet ?"
read emplacement

echo "Quel est le nom du projet ?"
read projet

cd "$emplacement" || exit

# Créer un dossier avec le nom du projet

mkdir "$projet"
cd "$projet" || exit

# Créer la structure de dossiers et fichiers
mkdir -p asset/css asset/js asset/media
touch asset/css/main.css
touch asset/js/main.js
touch asset/media/profil.png
touch index.html

echo "Structure du projet $projet créée avec succès dans $emplacement."

git add script.sh

git push origin feature
