all:
	antlr4 -no-listener -visitor LabeledExpr.g4
	javac *.java

clean:
	rm -rf *~ *.class LabeledExprLexer.java *.tokens LabeledExprParser.java
	rm -rf LabeledExprBaseVisitor.java LabeledExprVisitor.java
