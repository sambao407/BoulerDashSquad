package controller;

/**
 * <h1>The Class UserOrder links the orders to the player.</h1>
 *
 * @author Marc ROUILLE marc.rouille@cesi.fr
 * @version 1.0
 */
public class UserOrder implements IUserOrder {

    /** The player. */
    private int player;

    /** The order. */
    private Order order;

    /**
     * Gets the player.
     *
     * @return the player
     */
    public int getPlayer() {
        return this.player;
    }

    /**
     * Gets the order.
     *
     * @return the order
     */
    public Order getOrder() {
        return this.order;
    }
}
