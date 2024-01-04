/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package emanager1.pkg0;

/**
 *
 * @author smbha
 */
abstract class User {
    protected String userType;

    public User(String userType) {
        this.userType = userType;
    }

    public abstract void setLabels(MainMenu mn);
}

class Manager extends User {
    public Manager() {
        super("Manager");
    }

    @Override
    public void setLabels(MainMenu mn) {
        mn.userlbl.setText(userType);
        mn.titlelbl.setText("MANAGER MENU");
    }
}

class Assistant extends User {
    public Assistant() {
        super("Assistant");
    }

    @Override
    public void setLabels(MainMenu mn) {
        mn.userlbl.setText(userType);
        mn.titlelbl.setText("ASSISTANT MENU");
        mn.createaccountb.setVisible(false);
        mn.empoperationsb.setVisible(false);
    }
}