package ui.controller;

import domain.db.ToestelDB;
import domain.model.Toestel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Toestellen")
public class Toestellen extends HttpServlet {
    private String destination;
    private ToestelDB databank = new ToestelDB();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        destination = "index.jsp";
        String command = request.getParameter("command");
        if (command == null) command = "";
        switch (command){
            case "overview":
                destination = overview(request, response);
                break;
            case "find":
                destination = find(request, response);
                break;
            case "add":
                destination = add(request, response);
                break;
            case "delete":
                destination = delete(request, response);
                break;
            case "home":
                destination = home(request, response);
                break;
            default:
                destination = home(request, response);
                break;
        }

        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String add(HttpServletRequest request, HttpServletResponse response){
        String naam = request.getParameter("Tnaam");
        String bouwjaar = request.getParameter("bouwjaar");
        String leverancier = request.getParameter("leverancier");
        String opslag = request.getParameter("opslag");
        String aantal = request.getParameter("aantal");

        if (!naam.isEmpty() && !bouwjaar.isEmpty() && !leverancier.isEmpty() && !opslag.isEmpty() && !aantal.isEmpty()){
            databank.add(new Toestel(naam, leverancier, Integer.parseInt(opslag), Integer.parseInt(aantal), Integer.parseInt(bouwjaar)));
            request.setAttribute("toestellen", databank.getToestellen());
            request.setAttribute("aantal", databank.getTotaalAantalToestellen());

            destination = "overview.jsp";
        }else{
            request.setAttribute("error", "U moet alle verplichte velden invullen.");
            destination = "toevoegen.jsp";
        }
        return destination;

    }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        String verwijderString = request.getParameter("verwijder");

        if (verwijderString.equals("Zeker")){
            String naam = request.getParameter("naam");
            databank.verwijder(naam);
            destination = overview(request, response);
            return destination;
        }else{
            return "index.jsp";
        }
    }

    private String find(HttpServletRequest request, HttpServletResponse response){
        String naam=request.getParameter("naam");
        String destination="";

        if (naam==null) {
            destination="nietGevonden.jsp";
        }
        else {
            Toestel toestel = databank.find(naam);
            if (toestel==null) {
                destination="nietGevonden.jsp";
            }
            else {
                destination="gevonden.jsp";
                request.setAttribute("toestel", toestel);
            }
        }
        return destination;
    }

    private String overview(HttpServletRequest request, HttpServletResponse response){

        request.setAttribute("toestellen", databank.getToestellen());
        request.setAttribute("aantal", databank.getTotaalAantalToestellen());

        destination = "overview.jsp";
        return destination;
    }

    private String home(HttpServletRequest request, HttpServletResponse response){

        request.setAttribute("aantal", databank.getTotaalAantalToestellen());

        destination = "index.jsp";
        return destination;
    }
}
