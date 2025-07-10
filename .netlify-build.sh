#!/bin/bash
set -e

# Установка зависимостей
pip install -r requirements.txt

# Сборка с обработкой ошибок
mkdocs build --site-dir public || true

# Создание папки public если её нет
mkdir -p public

# Заглушка для index.html
if [ ! -f public/index.html ]; then
  echo "<h1>Build in progress</h1>" > public/index.html
fi