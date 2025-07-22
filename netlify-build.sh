#!/bin/bash
set -e

# Проверка версии Python
echo "Using Python: $(python --version)"
echo "Using PIP: $(pip --version)"

# Установка зависимостей
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Сборка сайта
python -m mkdocs build --site-dir public