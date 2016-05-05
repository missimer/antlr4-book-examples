all:
	antlr4 CSV.g4
	javac CSV*.java

grun-gui:
	grun CSV file -gui data.csv

grun-tokens:
	grun CSV file -tokens data.csv

clean:
	rm -rf *.java *.class *~ *.tokens
