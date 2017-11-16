/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.Blackjack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
//import java.util.Random;
import java.util.Collections;

/**
 *
 * @author 富澤　志保
 */


abstract class Human{
    abstract public int open();
    abstract public void setCard(ArrayList<Integer> a);
    abstract public boolean checkSum();
    public ArrayList<Integer> myCards = new ArrayList<>();
}

class Dealer extends Human{
    ArrayList<Integer> cards = new ArrayList<>();
        
    public Dealer(){
        for(int i=1;i<=13;i++){
            for(int j=1;j<=4;j++){
                cards.add(i);
            }
        }
    }
    
    public ArrayList<Integer> deal(){
        Collections.shuffle(cards);
        ArrayList<Integer> deal = new ArrayList<>();
        deal.add(cards.remove(0));
        deal.add(cards.remove(0));
        return deal;
        
    }
    
    public ArrayList<Integer> hit(){
        ArrayList<Integer> hit = new ArrayList<>();
        hit.add(cards.remove(0));
        return hit;
    }
    
    
    
    public void setCard(ArrayList<Integer> a){
        for(int i=0;i<a.size();i++){
            myCards.add(a.get(i));
        }     
    }
    
    public boolean checkSum(){
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            if(myCards.get(i)>10){
                myCards.set(i,10);
            }
            sum = sum + myCards.get(i);
        }
        if(sum<17){
            return true;
        }else{
            return false;
        }
    }

    public int open() {
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            if(myCards.get(i)>10){
                myCards.set(i,10);
            }
            sum = sum + myCards.get(i);
        }
        return sum;
    }

        
    
}

class User extends Human{
    public void setCard(ArrayList<Integer> a){
        for(int i=0;i<a.size();i++){
            myCards.add(a.get(i));
        }     
    }
    
    public boolean checkSum(){
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            if(myCards.get(i)>10){
                myCards.set(i,10);
            }
            sum = sum + myCards.get(i);
        }
        if(sum<17){
            return true;
        }else{
            return false;
        }
    }

    public int open() {
        int sum=0;
        for(int i=0;i<myCards.size();i++){
            if(myCards.get(i)>10){
                myCards.set(i,10);
            }
            sum = sum + myCards.get(i);
        }
        return sum;
    }
    
}

public class Blackjack extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Dealer d = new Dealer();
            User u = new User();
            
            d.setCard(d.deal());
            out.print("初期手札："+d.open()+"<br>");
            for(int i=0;i<10;i++){
                if(d.checkSum()==true){
                    d.setCard(d.hit());
                    out.print(d.open()+",");
                }else{
                    break;
                }
            }
            
            out.print("<br>");
            
            u.setCard(d.deal());                            //UserクラスのsetCardの引数がDealerクラスのdealメソッドで返された値
            out.print("初期手札："+u.open()+"<br>");        //Userクラスに継承されてるmyCardsに値が入るのでdealメソッドはDealerクラスのものと同じで大丈夫
            for(int i=0;i<10;i++){
                if(u.checkSum()==true){
                    u.setCard(d.hit());
                    out.print(u.open()+",");
                }else{
                    break;
                }
            }
            
            out.print("<br>最終結果：ディーラー"+d.open()+",ユーザー"+u.open()+"<br>");
            if(u.open()<22 && d.open()<22){
                if(u.open()>d.open()){
                    out.print("勝ち<br>");
                }else if(u.open()==d.open()){
                    out.print("引き分け<br>");
                }else{
                    out.print("負け<br>");
                }
            }else if(u.open()<22 && d.open()>=22){
                out.print("勝ち<br>");
            }else{
                out.print("負け<br>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
