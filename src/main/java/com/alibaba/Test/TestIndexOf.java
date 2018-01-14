package com.alibaba.Test;

/**
 * Created by ${lbin8521} on 2018/1/13.
 */
public class TestIndexOf
{
    public static void main(String[] args) {
        String str  = "abcdefgde";
        String str2= "232323234554";
        int number = str.indexOf('e');
        char c = str.charAt(1);
        int newNumber = (int)c;
        char newChar = (char) (120-c);
        int de = str.indexOf("de");
        int de1 = str.indexOf("de", 4);
        int i = str2.indexOf('2', 5);
        System.out.println(i);
        System.out.println("这里使用了双参数后的结果为："+de1);
        System.out.println("de在字符串中的位置："+de);
        System.out.println("将字符强转化为数字类型后的结果为："+newNumber);
        System.out.println("字符串中的索引1对应的字符为："+c);
        System.out.println("该数字出现在字符串数组中的索引位置为："+number);
    }

}
