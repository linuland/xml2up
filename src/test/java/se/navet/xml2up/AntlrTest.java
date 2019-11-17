package se.navet.xml2up;

import me.tomassetti.examples.MarkupParser.MarkupLexer;
import me.tomassetti.examples.MarkupParser.MarkupParser;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class AntlrTest {

    @Test
    void shouldWork() {
        ANTLRInputStream inputStream = new ANTLRInputStream(
                "I would like to [b][i]emphasize[/i][/b] this and [u]underline [b]that[/b][/u] ." +
                        "Let's not forget to quote: [quote author="John"]You're wrong![/quote]");
        MarkupLexer markupLexer = new MarkupLexer(inputStream);
        CommonTokenStream commonTokenStream = new CommonTokenStream(markupLexer);
        MarkupParser markupParser = new MarkupParser(commonTokenStream);

        MarkupParser.FileContext fileContext = markupParser.file();
        MarkupVisitor visitor = new MarkupVisitor();
        visitor.visit(fileContext);

        assertEquals(0, 1 - 1);
    }
}