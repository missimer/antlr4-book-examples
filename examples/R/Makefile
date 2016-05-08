all:
	antlr4 R.g4
	javac R*.java

grun-gui:
	grun R prog -gui t.R

grun-tokens:
	grun R prog -tokens t.R

clean:
	rm -rf *.java *.class *~ *.tokens
