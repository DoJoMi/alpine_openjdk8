.PHONY:  keygen build

build:
	docker build -t alpine_openjdk8 .

deploy:
	docker run --rm -it alpine_openjdk8 sh -c "java -version"
