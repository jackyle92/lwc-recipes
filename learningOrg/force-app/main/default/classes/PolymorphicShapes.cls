public with sharing class PolymorphicShapes {
    public PolymorphicShapes() {
    }

    public static void printArea(AbstractShape s) {
        System.debug('The area of our shape is: ' + s.getArea());
    }
    public static void setColour(AbstractShape s, Integer r, Integer g, Integer b) {
        s.red = r;
        s.green = g;
        s.blue = b;
        System.debug('The colour of Shape is ' + s.red + ' ' + s.green + ' ' + s.blue);
    }
    public static void makeBlack(AbstractShape s) {
        s.setToBlack();
        System.debug('The colour of Shape is ' + s.red + ' ' + s.green + ' ' + s.blue);
    }
}