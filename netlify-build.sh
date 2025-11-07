#!/bin/bash
set -e

# Установка зависимостей
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Убедимся, что находимся в корне
echo "Current directory: $(pwd)"
echo "Contents:"
ls -la

# Сборка
python -m mkdocs build