package controllerTest;

import java.awt.*;
import java.awt.event.*;

public class KeyboardInput {

    @Override
    public void keyPressed(KeyEvent evt) {
        printEventInfo("Key Pressed", evt);

    }

    private void printEventInfo(String str, KeyEvent e) {
        System.out.println(str);
        int code = e.getKeyCode();
        System.out.println("    Code :  " + KeyEvent.getKeyText(code));
        System.out.println("    Char :  " + e.getKeyChar());
        int mods = e.getModifiersEx();
        System.out.println("    Mods :  " + );
    }
}
