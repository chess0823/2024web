package day4;
import java.util.Scanner;

public class DSSD {

   public static void main(String[] args) {

      Scanner sc = new Scanner(System.in);
      int end = sc.nextInt();
      sc.close();
      
      //첫번째 줄
      for(int i = 0; i < end - 1; i++) {
         System.out.print(" ");
      }
      System.out.println("*");
      
      //두번쨰~끝-1줄
      for(int i = 1; i < end - 1; i++) {
         for(int j = i; j < end - 1; j++) {
            System.out.print(" ");
         }
         System.out.print("*");
         for(int j = 0; j < 2*(i-1)+1; j++) {
            System.out.print(" ");
         }
         System.out.println("*");
         
      }
      
      //끝줄
      for(int i = 0; i < (end-1)*2+1; i++) {
         System.out.print("*");
      }
      System.out.println();
   }
}