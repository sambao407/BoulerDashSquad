package gameframe;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

import javax.imageio.ImageIO;
import javax.swing.JPanel;

/**
 * Created by patri on 16/06/2017.
 */
public class GamePanel extends JPanel implements Observer
{
    private final IGraphicsBuilder	graphicsBuilder;

    public  GamePanel(final IGraphicsBuilder graphicBuilder)
    {
        this.graphicsBuilder = graphicBuilder;
    }


    //Update the frame
    public void update(final Observable arg0, final Object arg1)
    {
        //Refresh the screen
        this.repaint();
    }

    /*protected void paintComponent(final Graphics graphics)
    {
        this.graphicsBuilder.applyModelToGraphic(graphics, this);
    }*/

    private HashMap<Character, Image[]> translator = new HashMap<Character, Image[]>();
    private Image image[];

    {
        try {
            image[0] = ImageIO.read(new File("C:\\Users\\patri\\Documents\\A1\\S2\\UE 3\\Projet\titane.png"));

        } catch (IOException e) {
            // TODO Auto-generated catch block
            translator.put('u',image);
            e.printStackTrace();
        }

    }

}