install:
	composer install

console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- src bin

lint-fix:
	composer exec --verbose phpcbf -- src bin
