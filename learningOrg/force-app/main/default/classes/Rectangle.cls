public with sharing class Rectangle extends AbstractShape{
    private Double length = 0;
    private Double width = 0;

    public Rectangle(Double length, Double width) {
        this.length = length;
        this.width = width;
    }

    public override Double getArea() {
        return this.length * this.width;
    }
}