public class Exercise7 {

    // Recursive method
    public static double futureValue(double amount, double rate, int years) {
        
        // Base case
        if (years == 0) {
            return amount;
        }

        // Recursive case
        return futureValue(amount, rate, years - 1) * (1 + rate);
    }

    public static void main(String[] args) {

        double initialAmount = 10000;
        double growthRate = 0.10; // 10%
        int years = 3;

        double result = futureValue(initialAmount, growthRate, years);

        System.out.println("Future Value after " + years + " years: " + result);
    }
}