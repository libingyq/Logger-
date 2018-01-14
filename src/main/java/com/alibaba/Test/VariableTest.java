package com.alibaba.Test;

import java.util.Arrays;
import java.util.Scanner;

/**
 * Created by ${lbin8521} on 2018/1/1.
 */
public class VariableTest {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入");
        int i = scanner.nextInt();
        String string = null;
        if(i<0){
            int j = -i;
            string = String.valueOf(j);
            StringBuffer reserse = reserse(string);
            String  str = new String(reserse);
            str="-"+str;
            int i1 = Integer.parseInt(str);
            System.out.println(i1);
        }else{
            string= String.valueOf(i);
            StringBuffer reserse = reserse(string);
            String Nstring = new String(reserse);
            int i2 = Integer.parseInt(Nstring);
            System.out.println(i2);
        }

    }

    public static StringBuffer reserse(String str){
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.reverse();
        return stringBuffer;
    }


}
