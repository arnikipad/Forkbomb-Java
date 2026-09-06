.PHONY: build clean run

build:
	javac forkbomb.java

clean:
	rm -f *.class

run: build
	java ForkBomb

help:
	@echo "Available targets:"
	@echo "  make build - Compile the Java program"
	@echo "  make clean - Remove compiled class files"
	@echo "  make run   - Compile and run the program"
	@echo "  make help  - Show this help message"
