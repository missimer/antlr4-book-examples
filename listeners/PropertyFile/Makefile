all:
	antlr4 -visitor PropertyFile.g4
	javac *.java

run-listener:
	java TestPropertyFile t.properties

run-visitor:
	java TestPropertyFileVisitor t.properties

clean:
	rm -rf *.class *.tokens PropertyFile*.java *~
