import java.util.*;
class FinanceForecast {
    static double futureValue(double currentValue, double growthRate, int years) {
        if (years == 0) return currentValue;
        return futureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double currentValue = sc.nextDouble();
        double growthRate = sc.nextDouble();
        int years = sc.nextInt();
        double result = futureValue(currentValue, growthRate, years);
        System.out.printf("Future Value after %d years = %.2f\n", years, result);
        sc.close();
    }
}