public class ShapeHierarchy {
    public static void main(String[] args) {
        Shape circle = new Circle(5.0);
        System.out.println("Circle Area: " + circle.calculateArea());

        Shape rectangle = new Rectangle(3, 6.0);
        System.out.println("Rectangle Area: " + rectangle.calculateArea());
    }
}
