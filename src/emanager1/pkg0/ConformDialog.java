/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package emanager1.pkg0;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author smbha
 */
public class ConformDialog {
        public static void conformExit() {
        int confirmExit = JOptionPane.showConfirmDialog(
                null,
                "Are you sure you want to Exit?",
                "Exit",
                JOptionPane.YES_NO_OPTION
        );

        if (confirmExit == JOptionPane.YES_OPTION) {
            System.exit(0);
        }
    }

    public static void conformLogout(JFrame currentFrame) {
        Login login = new Login();
        int confirmLogout = JOptionPane.showConfirmDialog(
                null,
                "Are you sure you want to logout?",
                "Logout",
                JOptionPane.YES_NO_OPTION
        );

        if (confirmLogout == JOptionPane.YES_OPTION) {
            currentFrame.dispose();
            login.show();
        }
    }
}
