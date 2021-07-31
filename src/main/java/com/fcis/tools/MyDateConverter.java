package com.fcis.tools;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class MyDateConverter implements Converter<String,Date> {

    public Date convert(String source) {
        Date date =null;
        try {

            if(source.contains("/")){
                date=new SimpleDateFormat("yyyy/MM/dd").parse(source);
            }else {
                date=new SimpleDateFormat("yyyy-MM-dd").parse(source);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
