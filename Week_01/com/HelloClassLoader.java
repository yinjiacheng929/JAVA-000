package com;


import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class HelloClassLoader extends ClassLoader {


    public static void main(String[] args) {
        HelloClassLoader helloClassLoader = new HelloClassLoader();
        try {
            Class<?> cls = helloClassLoader.findClass("Hello");
            Object o = cls.newInstance();
            Method method = cls.getMethod("hello");
            method.invoke(o);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        byte[] bytes = getBytesByFile("D:\\java training camp\\JAVA-000\\Week_01\\Hello.xlass");
        return defineClass(name, bytes, 0, bytes.length);
    }


    //将文件转换成Byte数组
    public static byte[] getBytesByFile(String pathStr) {
        File file = new File(pathStr);
        try {
            FileInputStream fis = new FileInputStream(file);
            ByteArrayOutputStream bos = new ByteArrayOutputStream(1000);
            byte[] bytes = new byte[1000];
            int n;
            while ((n = fis.read(bytes)) != -1) {

                bos.write(bytes, 0, n);
            }
            fis.close();
            byte[] data = bos.toByteArray();
            for (int i = 0; i < data.length; i++) {
                data[i] = (byte) (255 - data[i]);
            }
            bos.close();
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
