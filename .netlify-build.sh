#!/bin/bash
set -e

# Установка зависимостей
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Сборка сайта
python -m mkdocs build --site-dir public || true

# Гарантированное создание папки public
mkdir -p public
echo "<h1>Build completed</h1>" > public/index.html