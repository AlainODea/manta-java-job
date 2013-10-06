package com.alainodea;

import javax.xml.bind.DatatypeConverter;
import java.io.*;
import java.nio.charset.Charset;
import java.util.regex.Pattern;

public class NeedleFinder {
    public static void main(String[] args) throws Exception {
        byte[] bytes = DatatypeConverter.parseBase64Binary(args[0]);
        Charset charset = Charset.forName("UTF-8");
        String base64Pattern = new String(bytes, charset);
        Pattern pattern = Pattern.compile(base64Pattern);
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        try {
            String line;
            while ((line = reader.readLine()) != null)
                if (pattern.matcher(line).matches())
                    System.out.println(line);
        } finally {
            reader.close();
        }
    }
}
