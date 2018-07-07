package com.tedu.test;

public class TestMain {
    public static void main(String[] args){

        /**
         *  1. i和j的值
         *  考do..while()循环
         */
        /*
        int x=1;int y=10;
        do {
            if(x++ > --y) {
                System.out.println(x+"..."+y);
                continue;
            }
            System.out.println(x+"======"+y);
        }while(x<5);
        System.out.println(x+","+y);
        */


        /**
         *  2. 循环几次
         *  循环while()条件问题
         */
//        int words = 27;
//        do {
//            words--;
//            System.out.println(words);
//        }while(words<=18);
//
//        for(int i = 27;i<=18;i--){
//            System.out.println(i);
//        }

        /**
         *  3. 判断
         *  数组下标越界,下标从0开始
         *  int 没有null值,默认0
         */
//        int[] len = new int[10];
//        System.out.println(len[10]);


        /**
         * 4. 输出结果: 4
         * 不定义第三个量实现两个数字交换
         */
//        int s1 = 50;
//        int s2 = 30;
//        s1 = s1+s2;
//        s2 = s1-s2;
//        s1 = s1-s2;
//        System.out.println(s1+","+s2);


        /**
         * 5. 考按位运算和逻辑运算
         * 按位运算操作符（& ,| ）两边的都要计算
         * 逻辑运算如果操作符（&&, || ）左边成立则就不在计算右边了
         */
//        methodA(0);
//        System.out.println(j);


        /**
         * 二,多选题
         *  1.java变量命名规则:
         *  最常规: 首字母是英文字母、$和下划线，由字母、数字和下划线组成
         */

        /**
         *  2.数组
         */
//        int x[3][2] = {{1,2},{2,5},{5}};
//        int x[] = {1,2};
//        int x2[] = new int[]{1,22};

        /**
         * 三,填空题
         *  1. i = 1, re = true;
         */
//        int i = 0;
//        boolean re = false;
//        re = ((++i)+i ==2) ? true : false;
//        System.out.println("i = "+i+",re = "+re);

        /**
         *  2, 结果: 5,6
         */
//        int a = 6;
//        int b = a>5?a>9?a++:a--:a+2;
//        System.out.println(a+","+b);

        /**
         * 四,简答
         */
//        int[] xx = new int[999];
//        for (int i = 0; i < xx.length; i++){
//            System.out.println(xx[i]);
//        }


    }

    /*  5 */
    private static int j = 0;


    private static boolean methodB(int k){
        j+=k;
        return true;
    }
    private static void methodA(int i){
        boolean b;
        b = i<10 | methodB(4);
        b = i<10 || methodB(8);
    }


}
