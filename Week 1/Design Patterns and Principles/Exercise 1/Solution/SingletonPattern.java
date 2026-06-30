public class SingletonPattern {
    public static void main(String[] args) {
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();
        logger1.log("Logger 1");
        logger2.log("Logger 2");
        if (logger1 == logger2) System.out.println("One instance of Logger");
        else System.out.println("Multiple instances of Logger");
    }
}