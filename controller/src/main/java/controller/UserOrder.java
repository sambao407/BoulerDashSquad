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
     * The Constructor UserOrder
     *
     * @param player
     *          The player
     * @param order
     *          The order
     */
    public UserOrder(final int player, final Order order) {
        this.player = player;
        this.order = order;
    }

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
