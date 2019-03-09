package se.navet.xml2up;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class AntlrTest {

    @Test
    void mainUtanTvaArgumentSkaGeMinusEtt() {
        assertEquals(-1, Xml2upMain.main(new String[]{}));
        assertEquals(-1, Xml2upMain.main(new String[]{ "fil.xml" }));
    }
}