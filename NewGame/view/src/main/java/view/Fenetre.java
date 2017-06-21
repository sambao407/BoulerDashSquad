package view;

import javax.swing.*;

/**
 * Created by MPN on 20/06/2017.
 */
public class Fenetre extends JFrame {
    public Fenetre() {
        this.setTitle("Fenetre de test");
        this.setSize(300, 300);
        this.setLocationRelativeTo(null);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setVisible(true);

        this.setContentPane(new Panneau());
    }
}
