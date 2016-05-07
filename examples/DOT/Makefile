all:
	antlr4 DOT.g4
	javac DOT*.java

grun-gui:
	grun DOT graph -gui t.dot

grun-tokens:
	grun DOT graph -tokens t.dot

clean:
	rm -rf *.java *.class *~ *.tokens
