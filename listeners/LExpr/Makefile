all:
	antlr4 -visitor LExpr.g4
	javac *.java

run-visitor:
	java TestLExprVisitor t.expr

clean:
	rm -rf *~ LExpr*.java *.class *.tokens
