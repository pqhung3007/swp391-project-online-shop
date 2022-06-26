/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package verify;

import java.util.Random;

/**
 *
 * @author Admin
 */
public class RandomCode {
    public String activateCode(){
        Random rand=new Random();
        int number=rand.nextInt(999999);
        return String.format("%06d",number);
    }
}
