public abstract with sharing class AbstractShape {
    public AbstractShape() {

    }
    public abstract Double getArea();
    public Integer red;
    public Integer green;
    public Integer blue;

    public void setToBlack() {
        red = 0;
        green = 0;
        blue = 0;
    }
    public virtual Integer getNumbersOfSides() {
        return 4;
    }
}