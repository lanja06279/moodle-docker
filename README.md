# 📘 Moodle Docker

Projet permettant de lancer **Moodle** avec **Docker** et **Docker Compose**.

---

# 🧰 Prérequis

* **Docker** (version 20.10+)
* **Docker Compose** (version 2.0+)

---

# 📦 Installation

## 1. Cloner le dépôt

```bash
git clone https://github.com/lanja06279/moodle-docker.git
cd moodle-docker
```

## 2. Vérifier les fichiers

```bash
ls
```

Vous devez voir :

```
docker-compose.yml
Dockerfile
moodle/
README.md
```

---

# ▶️ Lancement

## Démarrer les conteneurs

```bash
docker compose up --build-d
```

## Vérifier que les conteneurs tournent

```bash
docker ps -a
```

---

# 🌐 Accès à Moodle

Ouvrir dans votre navigateur :

```
http://localhost:8080
```

---

# ⛔ Arrêter le projet

```bash
docker compose down
```

---

# 🔄 Redémarrer

```bash
docker compose restart
```
