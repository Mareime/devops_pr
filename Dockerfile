# Étape 1 : Choisir l'image de base (Python)
FROM python:3.9-slim

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt /app/

# Étape 4 : Installer les dépendances requises
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Copier le code de l'application dans le conteneur
COPY . /app/

# Étape 6 : Exposer le port utilisé par Flask
EXPOSE 5000

# Étape 7 : Lancer l'application Flask
CMD ["python", "app.py"]
