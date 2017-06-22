

import java.applet.Applet;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.Graphics;
import java.awt.Graphics2D;

/**
 * Created by Samba on 22/06/2017.
 */
public class KeyListenerTutorial extends Applet implements KeyListener {
    private Rectangle rect; //The rectangle that we move

    public void init()
    {
        this.addKeyListener(this);
        rect = new Rectangle(0, 0, 50, 50);
    }

    public void paint(Graphics g)
    {
        setSize(500, 500);
        Graphics2D g2 = (Graphics2D)g;
        g2.fill(rect);
    }

    @Override
    public void keyTyped(KeyEvent e) {

    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_RIGHT) {
            rect.setLocation(rect.x + 2, rect.y);
        }
        else if (e.getKeyCode() == KeyEvent.VK_LEFT) {
            rect.setLocation(rect.x - 2, rect.y);
        }
        else if (e.getKeyCode() == KeyEvent.VK_UP) {
            rect.setLocation(rect.x, rect.y -2);
        }
        else if (e.getKeyCode() == KeyEvent.VK_DOWN) {
            rect.setLocation(rect.x, rect.y + 2);
        }
        repaint();
    }

    @Override
    public void keyReleased(KeyEvent e) {

    }
}

