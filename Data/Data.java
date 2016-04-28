import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.FileInputStream;
import java.io.InputStream;

public class Data {
    public static void main(String[] args) throws Exception {

        InputStream is = System.in;
        ANTLRInputStream input = new ANTLRInputStream(is);
        DataLexer lexer = new DataLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        DataParser parser = new DataParser(tokens);
        ParseTree tree = parser.file(); // parse; start at file
        System.out.println(tree.toStringTree(parser)); // print tree as text
    }
}
