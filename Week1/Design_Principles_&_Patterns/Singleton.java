class Logger {
    
    // Single instance
    private static Logger instance;

    // Private constructor
    private Logger() {
        System.out.println("Logger created");
    }

    // Method to get single object
    public static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    // Logging method
    public void log(String message) {
        System.out.println("LOG: " + message);
    }
}

public class Singleton {
    public static void main(String[] args) {
        
        Logger logger1 = Logger.getInstance();
        logger1.log("First message");

        Logger logger2 = Logger.getInstance();
        logger2.log("Second message");

        // Checking both objects
        if (logger1 == logger2) {
            System.out.println("Same instance used");
        } else {
            System.out.println("Different instances");
        }
    }
}