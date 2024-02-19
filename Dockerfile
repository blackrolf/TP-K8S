# Utilisez une image de base Python officielle
FROM python:3.9-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY . /app

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port sur lequel l'API fonctionnera
EXPOSE 5000

# Définissez la variable d'environnement pour Flask
ENV FLASK_APP=app.py

# Commande pour lancer l'application
CMD ["flask", "run", "--host=0.0.0.0"]
