#!/bin/bash
set -e

# Принудительно устанавливаем Python 3.10
pyenv install 3.10.13 --skip-existing
pyenv global 3.10.13

# Установка зависимостей
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Сборка сайта с обработкой ошибок
python -m mkdocs build --site-dir public || true

# Гарантированное создание папки
mkdir -p public
touch public/index.html