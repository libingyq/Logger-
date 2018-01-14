package com.alibaba.Test;

import sun.swing.icon.SortArrowIcon;

import javax.sound.midi.Soundbank;
import java.awt.*;
import java.util.*;
import java.util.List;

/**
 * Created by ${lbin8521} on 2018/1/13.
 */
public class TestArray {
    public static void main(String[] args) {
        int[] array1 = new int[]{2, 3, 5, 7, 23};
        int[] array2 = new int[]{3, 5, 6};
        //求两个数组的交集

        //1.新定义一个集合(这里要是使用的是set集合 因为它有去重的能力) 用来存放两者的交集
        //方法1：使用双重for循环的方式进行查寻 将数组长度小的作为外层的循环
        Set<Integer> insertsectionSet = new HashSet<>();
        //判断数组的长度的大小 将数组长度小的放到外层
        if (array1.length > array2.length) {
            for (int i = 0; i < array2.length; i++) {
                for (int j = 0; j < array1.length; j++) {
                    if (array2[i] == array1[j]) {
                        insertsectionSet.add(array2[i]);
                    }
                }
            }

        }
        Iterator<Integer> iterator = insertsectionSet.iterator();
        while (iterator.hasNext()) {
            Integer next = iterator.next();
            System.out.print(next + " ");
        }
    }


    //使用方式2来求的两个数组的交集
    public static void pointMethod(int[] array1, int[] array2) {
        //1.将两个数组都进行排序
        Arrays.sort(array1);
        Arrays.sort(array2);
        //2.创建一个set集合来存放两个数组的交集的元素
        Set<Integer> set = new HashSet<>();
        //3.试创建两个数组的指针位置
        int array1Index = 0;
        int array2Index = 0;
        //4.获得两个数组的长度
        int array1Size = array1.length;
        int array2Size = array2.length;

        //求出两个数组中的最小的那个、
        if (array1.length < array2.length) {
            while (array1Index < array1Size) {
                for (int i = array2Index; i < array2Size; i++) {
                    if (array1[array1Index] == array2[i]) {
                        set.add(array1[array1Index]);
                        array1Index++;
                        }else if(array1[array1Index]<array2[i]){
                        //因为数组是排序好的 若是当前元素没有要遍历的元素大的话 那么后面的一定就不能有重复的e
                        array1Index++;
                        break;
                    }else if(i==array2Size-1){
                        //此时已经到了数组的最后一位了
                        array1Index++;
                    }
                }
            }

        }


        //3.使用小的数组作为外层的循环遍历


    }


    public static void sortArray(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {
            for (int j = 0; j < array.length - 1 - i; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    public static int[] ScannerArray() {
        System.out.println("请输入数组的初始化的长度：");
        Scanner scanner = new Scanner(System.in);
        int length = scanner.nextInt();
        int[] array1 = new int[length];
        boolean flag = true;
        for (int i = 0; i < array1.length; i++) {
            System.out.println("请输入第" + (i + 1) + "个元素的值：");
            array1[i] = scanner.nextInt();
        }
        return array1;
    }

    public static void OutArray(int[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
    }

}
