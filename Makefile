install: # локальная установка composer
	composer install

brain-games: # запустить файл bin/brain-games.php
	./bin/brain-games

validate: # избегаем добавления пакетов в основной каталог packagist
	composer validate
	.DEFAULT_GOAL := build-run

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin

build-run: build run

.PHONY: build
