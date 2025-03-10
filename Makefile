install:
	composer install

console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- src tests
	composer exec --verbose phpstan

lint-fix:
	composer exec --verbose phpcbf -- src tests

test:
	composer exec --verbose phpunit tests

test-coverage:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-clover

brain-games:
	./bin/brain-gamesmake

validate:
	composer validate

	.DEFAULT_GOAL := build-run

setup:
	./gradlew wrapper --gradle-version 8.5

clean:
	./gradlew clean

build:
	./gradlew clean build


run-dist:
	./build/install/java-package/bin/java-package

run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestReport

lint:
	./gradlew checkstyleMain
	composer exec --verbose phpcs -- src tests

check-deps:
	./gradlew dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build
