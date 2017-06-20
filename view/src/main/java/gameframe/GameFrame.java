package gameframe;

import javax.swing.*;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Observable;

/**
 * Created by patri on 16/06/2017.
 */
public class GameFrame extends JFrame implements KeyListener
{
    private final IEventPerformer eventPerformer;
    public GameFrame(IEventPerformer eventPerformer, IGraphicsBuilder graphicsBuilder, Observable observable) throws HeadlessException
    {
        this.eventPerformer = eventPerformer;
        //Set the game and window title
        this.setTitle("BoulderDash - Java Project A1");
        //Assignment of the mean to do, in order to close the window
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //Forbid the resizing of the window
        this.setResizable(false);
        //Register the listener "this"
        this.addKeyListener(this);
        //Make the window visible
        this.setVisible(true);

        final GamePanel gamePanel = new GamePanel(graphicsBuilder);
        //Set the content of the panel as "gamePanel"
        this.setContentPane(gamePanel);
        //Set the window size
        this.setSize(graphicsBuilder.getGlobalWidth() + this.getInsets().left + this.getInsets().right, graphicsBuilder.getGlobalHeight() + this.getInsets().top + this.getInsets().bottom);
        observable.addObserver(gamePanel);
        //Center the window on the screen
        this.setLocationRelativeTo(null);

        //Make the window visible
        this.setVisible(true);
    }

    public void keyPressed(final KeyEvent keyEvent)
    {
        this.eventPerformer.eventPerform(keyEvent);
    }

    public void keyReleased(final KeyEvent keyEvent)
    {

    }

    public void keyTyped(final KeyEvent keyEvent)
    {

    }
}
