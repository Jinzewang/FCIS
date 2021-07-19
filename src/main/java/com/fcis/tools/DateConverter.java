package com.fcis.tools;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class DateConverter implements Converter<String,Date> {
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    public Date convert(String source) {
        try {
            return sdf.parse(source);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
