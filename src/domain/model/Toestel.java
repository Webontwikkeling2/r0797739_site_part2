package domain.model;

import java.time.LocalDate;

public class Toestel {
    private String naam, leverancier;
    private int opslag, aantal;
    private int bouwjaar;

    public Toestel(String naam, String leverancier, int opslag, int aantal, int bouwjaar) {
        this.naam = naam;
        this.leverancier = leverancier;
        this.opslag = opslag;
        this.aantal = aantal;
        this.bouwjaar = bouwjaar;
    }

    public String getNaam() {
        return naam;
    }

    public String getLeverancier() {
        return leverancier;
    }

    public int getOpslag() {
        return opslag;
    }

    public int getAantal() {
        return aantal;
    }

    public int getBouwjaar() {
        return bouwjaar;
    }

    public void setAantal(int aantal) {
        this.aantal = aantal;
    }
}
