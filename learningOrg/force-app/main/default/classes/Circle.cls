public with sharing class Circle extends AbstractShape {
    private Double radius = 0;
    public Circle(Double radius) {
        this.radius = radius;
    }
    
    public override Double getArea(){
        return Math.PI * radius * radius;
    }
    public override Integer getNumbersOfSides() {
        return 1;
    }
}