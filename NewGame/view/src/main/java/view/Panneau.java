package view;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by MPN on 20/06/2017.
 */
public class Panneau extends JPanel {

    // Coordonnées XY des éléments de la carte
    int nb_map_x;
    int nb_map_y;

    // Taille en pixels des éléments de la carte
    int map_x;
    int map_y;

    // Taille du niveau
    int levelsize = 10;

    // Taille d'affichage du sprite
    int cellsize = 25;

    // Coordonnées XY des sprites
    int nb_cell_x;
    int nb_cell_y;

    // Taille en pixels des sprites
    int cell_x;
    int cell_y;

    public void paintComponent(Graphics graphics) {
        try {
            for (nb_map_y = 1; nb_map_y <= levelsize; nb_map_y++){
                map_y = cellsize * nb_map_y;

                for (nb_map_x = 1; nb_map_x <= levelsize; nb_map_x++){
                    map_x = cellsize * nb_map_x;

                    if (nb_map_y == 1 || nb_map_x == 1 || nb_map_y == levelsize || nb_map_x == levelsize) {
                        nb_cell_x = 2;
                        nb_cell_y = 1;
                    }
                    else {
                        nb_cell_x = 3;
                        nb_cell_y = 1;
                    }

                    cell_x = 16 * nb_cell_x;
                    cell_y = 16 * nb_cell_y;

                    System.out.println(" X : "+nb_map_x+" Y : "+nb_map_y);

                    Image img = ImageIO.read(new File("C:\\Users\\MPN\\Desktop\\NewGame\\view\\src\\main\\java\\view\\bground.png"));
                    graphics.drawImage(img,
                            map_x, map_y, // Decalage case DROITE, BAS
                            map_x - cellsize, map_y - cellsize, // Decalage case GAUCHE, HAUT
                            cell_x, cell_y, // Selection cellule DROITE, BAS
                            cell_x - 16, cell_y - 16, // Selection cellule GAUCHE, HAUT
                            this);
                }
            }

        }

        catch (IOException e) {
            e.printStackTrace();
        }

    }
}