package model;

public class Map {

    private final int id;


    private String  level;


    public Map(final int id, final String level) {
        super();
        this.id = id;
        this.level = level;
    }


    public int getId() {
        return this.id;
    }


    public String getlevel() {
        return this.level;
    }

    /**
     * Sets the name.
     *
     * @param name
     *            the new name
    /
    public void setlevel(final String level) {
    this.level = level;
    }

    /
     * (non-Javadoc)
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return this.getId() + " : " + this.getlevel();
    }
}