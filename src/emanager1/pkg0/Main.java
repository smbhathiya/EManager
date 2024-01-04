/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package emanager1.pkg0;

/**
 *
 * @author smbha
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        OpenBar pb = new OpenBar();
        pb.setVisible(true);
        try{
            for(int x=0;x<=100;x++){
                Thread.sleep(15);
                pb.lbl.setText(Integer.toString(x)+"%");
                pb.jProgressBar.setValue(x);
            }
            Login frame = new Login();
            frame.setVisible(true);
            pb.setVisible(false);
        }catch(InterruptedException ex){
            
        }
    }
    
}
