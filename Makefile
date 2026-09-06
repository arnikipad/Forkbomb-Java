.PHONY: build clean run jar

build:
	javac forkbomb.java

jar: build
	jar cfe forkbomb.jar ForkBomb ForkBomb.class

clean:
	rm -f *.class *.jar

run: build
	java ForkBomb

help:
	@echo "Available targets:"
	@echo "  make build - Compile the Java program"
	@echo "  make jar   - Create executable JAR file"
	@echo "  make clean - Remove compiled class files and JAR"
	@echo "  make run   - Compile and run the program"
	@echo "  make help  - Show this help message"
