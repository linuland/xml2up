package se.navet.xml2up;

public class Xml2upMain {
    public static int main(String[] args) {
        if (args.length != 2) {
            System.err.println("Error: parametrar saknas");
            System.err.println("Usage: Xml2upMain <xmlfil> <upfil>");
            System.err.println("       Läser från <xmlfil> och skriver till <upfil>");
            return -1;
        }
        return 0;
    }
}
