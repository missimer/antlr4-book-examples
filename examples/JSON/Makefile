all:
	antlr4 JSON.g4
	javac JSON*.java

grun-gui:
	grun JSON json -gui t.json

grun-tokens:
	grun JSON json -tokens t.json

clean:
	rm -rf *.java *.class *~ *.tokens
