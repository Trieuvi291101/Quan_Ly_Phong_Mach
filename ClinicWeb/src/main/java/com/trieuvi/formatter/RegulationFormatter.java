/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.formatter;

import com.trieuvi.pojos.Regulation;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Star
 */
public class RegulationFormatter implements Formatter<Regulation>{

    @Override
    public String print(Regulation t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Regulation parse(String string, Locale locale) throws ParseException {
        Regulation c = new Regulation();
        c.setId(Integer.parseInt(string));
        
        return c;
    }
    
}
