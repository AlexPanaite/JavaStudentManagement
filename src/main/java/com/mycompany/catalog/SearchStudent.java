/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.catalog;

/**
 *
 * @author aleex
 */
public class SearchStudent {
    
    private int codst;
    private String nume;
    private String prenume;
    private String cetatenie;
    private String datan;
    
    
    
    public SearchStudent(int CodSt,String Nume,String Prenume, String  Cetatenie, String DataN)
    {
        this.codst = CodSt;
        this.nume = Nume;
        this.prenume = Prenume;
        this.cetatenie = Cetatenie;
        this.datan = DataN;
        
    }
    
    public int getCodSt()
    {
        return codst;
    }
    
    public String getNume()
    {
        return nume;
    }
    
    public String getPrenume()
    {
        return prenume;
    }
    public String getCetatenie()
    {
        return cetatenie;
    }
    public String getDataN()
    {
        return datan;
    }
    
    
}
