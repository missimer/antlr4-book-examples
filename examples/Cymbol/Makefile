all:
	antlr4 Cymbol.g4
	javac Cymbol*.java

grun-gui:
	grun Cymbol file -gui t.cymbol

grun-tokens:
	grun Cymbol file -tokens t.cymbol

clean:
	rm -rf *.java *.class *~ *.tokens
