package com.alibaba.Test;

/**
 * Created by ${lbin8521} on 2018/1/7.
 */
//将输入的英文语句 进行到序的输出的操作
public class TestReverse {
    public static void main(String[] args) {
        String str = "You Love Me ";
        for(int i =reservse(str).length-1;i>=0;i--){
            System.out.print(reservse(str)[i]+" ");
        }
    }

    public static String[] reservse(String string){
        String stringArray[] = string.split(" ");
        return stringArray;

    }


}
