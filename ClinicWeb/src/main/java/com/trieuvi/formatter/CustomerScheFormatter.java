/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.formatter;

import com.trieuvi.pojos.CustomerSche;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Star
 */
public class CustomerScheFormatter implements Formatter<CustomerSche>{

    @Override
    public String print(CustomerSche t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public CustomerSche parse(String string, Locale locale) throws ParseException {
        CustomerSche c = new CustomerSche();
        c.setId(Integer.parseInt(string));
        
        return c;
    }
    
}
