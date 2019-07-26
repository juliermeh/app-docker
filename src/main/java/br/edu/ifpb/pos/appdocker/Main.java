/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.pos.appdocker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Tyathian
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        String user = "postgres";
        String senha = "12345";
        Connection con = DriverManager.getConnection("jdbc:postgresql://host-banco:5433/banco", user, senha);
        //Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", user, senha);
        
        String sql = "SELECT * FROM Pessoas;";
        PreparedStatement stat = con.prepareStatement(sql);
        stat.execute();
        
        ResultSet rs = stat.getResultSet();
        while(rs.next()){
            System.out.println(rs.getString("nome"));
        }
    }
        
}
