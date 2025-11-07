#!/bin/bash
set -e

# Установка зависимостей
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Сборка сайта
python -m mkdocs build 