/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.formatter;

import com.trieuvi.pojos.Producer;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Star
 */
public class ProducerFormatter implements Formatter<Producer>{

    @Override
    public String print(Producer t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Producer parse(String string, Locale locale) throws ParseException {
        Producer c = new Producer();
        c.setId(Integer.parseInt(string));
        
        return c;
    }
    
}
