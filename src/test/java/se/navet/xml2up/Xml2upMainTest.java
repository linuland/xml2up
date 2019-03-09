package se.navet.xml2up;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@DisplayName("Pass the method parameters provided by the @ValueSource annotation")
class Xml2upMainTest {

    @DisplayName("Should pass a non-null message to our test method")
    @ParameterizedTest(name = "{index} => message=''{0}''")
    @ValueSource(strings = {"Hello", "World"})
    void shouldPassNonNullMessageAsMethodParameter(String message) {
        assertNotNull(message);
    }

    @Test
    void mainUtanTvaArgumentSkaGeMinusEtt() {
        assertEquals(-1, Xml2upMain.main(new String[]{}));
        assertEquals(-1, Xml2upMain.main(new String[]{ "fil.xml" }));
    }
}