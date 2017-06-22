package gameframe;

import java.awt.*;
import java.awt.image.ImageObserver;

/**
 * Created by patri on 16/06/2017.
 */
public interface IGraphicsBuilder
{
    public void applyModelToGraphic(Graphics graphics, ImageObserver observer);
    public int getGlobalWidth();
    public int getGlobalHeight();
}
