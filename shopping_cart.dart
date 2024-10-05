void main() {
  // Sample item prices
  List<double> itemPrices = [5.0, 12.5, 20.0, 8.0, 15.0, 7.5];

  // Calculate the total price with tax
  double totalPrice = calculateTotal(itemPrices, tax: 0.07); // 7% tax
  print("Total price (with tax): \$${totalPrice.toStringAsFixed(2)}");

  // Filter items above a certain threshold using an anonymous function
  List<double> filteredPrices = itemPrices.where((price) => price >= 10).toList();
  print("Filtered prices (>= \$10): $filteredPrices");

  // Apply discount
  double discountPercentage = 20.0; // 20% discount
  List<double> discountedPrices = applyDiscount(itemPrices, (price) => price * (1 - discountPercentage / 100));
  print("Prices after applying discount: $discountedPrices");

  // Calculate the final price after applying discount
  double finalPrice = calculateTotal(discountedPrices, tax: 0.07);
  print("Final price (after discount and tax): \$${finalPrice.toStringAsFixed(2)}");

  // Calculate special discount based on the factorial of the number of items
  double specialDiscountPercentage = calculateFactorialDiscount(itemPrices.length);
  double finalPriceAfterSpecialDiscount = finalPrice * (1 - specialDiscountPercentage / 100);
  print("Final price after special discount: \$${finalPriceAfterSpecialDiscount.toStringAsFixed(2)}");
}

// Function to calculate total price with optional tax
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  double total = prices.fold(0.0, (sum, price) => sum + price);
  return total + (total * tax);
}

// Function to apply a discount using a higher-order function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Recursive function to calculate factorial discount
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1.0;
  return n * calculateFactorialDiscount(n - 1);
}
