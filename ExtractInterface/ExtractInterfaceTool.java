import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.FileInputStream;
import java.io.InputStream;

public class ExtractInterfaceTool {
    public static void main(String[] args) throws Exception {
        String inputFile = null;
        if(args.length > 0) {
            inputFile = args[0];
        }
        InputStream is = System.in;
        if(inputFile != null) {
            is = new FileInputStream(inputFile);
        }
        ANTLRInputStream input = new ANTLRInputStream(is);
        JavaLexer lexer = new JavaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        JavaParser parser = new JavaParser(tokens);
        ParseTree tree = parser.compilationUnit();
        ExtractInterfaceListener extractor = new ExtractInterfaceListener(parser);
        ParseTreeWalker walker = new ParseTreeWalker();
        walker.walk(extractor, tree);
    }
}
