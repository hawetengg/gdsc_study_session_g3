int findMaximum(final List<int> arr) {
  int max = arr[0];

  for (int i = 1; i < arr.length; i++) 
  {
    if (arr[i] > max) 
    {
      max = arr[i];
    }
  }
  return max;
}

int findMinimum(final List<int> arr) {
  int min = arr[0];

  for (int i = 1; i < arr.length; i++) 
  {
    if (arr[i] < min) {
      min = arr[i];
    }
  }
  return min;
}

int calculateSum(final List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) 
  {
    sum += arr[i];
  }
  return sum;
}

double calculateAverage(final List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) 
  {
    sum += arr[i];
  }
  return sum / arr.length;
}

void main() {
  final List<int> numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int max = findMaximum(numbers);
  print("Max: $max");
  int min = findMinimum(numbers);
  print("Min: $min");
  int sum = calculateSum(numbers);
  print("Sum: $sum");
  double avg = calculateAverage(numbers);
  print("Average: $avg");
}
