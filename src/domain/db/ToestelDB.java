package domain.db;

import domain.model.Toestel;

import java.util.ArrayList;

public class ToestelDB {
    private ArrayList<Toestel> toestellen = new ArrayList<>();

    public ToestelDB(){
        Toestel LenovoLegion = new Toestel("Lenovo-Legion-512", "Lenovo", 512, 8, 2020);
        Toestel AppleMacbookPro = new Toestel("Apple-MacbookPro-1tb", "Apple", 1000, 1, 2017);
        Toestel MicrosoftSurface = new Toestel("Microsoft-surface-256", "Microsoft", 256, 2, 2019);

        toestellen.add(LenovoLegion);
        toestellen.add(AppleMacbookPro);
        toestellen.add(MicrosoftSurface);
    }

    public ArrayList<Toestel> getToestellen(){
        return toestellen;
    }

    public void add(Toestel toestel){
        toestellen.add(toestel);
    }

    public void verwijder(String naam){
        Toestel teVerwijderenToestel = find(naam);
        toestellen.remove(teVerwijderenToestel);
    }

    public Toestel find(String naam) {
        for (Toestel toestel:toestellen) {
            if (toestel.getNaam().equals(naam)) {
                return toestel;
            }
        }
        return null;
    }

    public int getTotaalAantalToestellen(){
        int aantal = 0;
        for (Toestel toestel: toestellen) {
            aantal += toestel.getAantal();
        }
        return aantal;
    }
}
