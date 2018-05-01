package com.hz.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class CustomDateConverter implements Converter<String, Date>{
	
	@Override
	public Date convert(String source) {
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = simple.parse(source);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
}

