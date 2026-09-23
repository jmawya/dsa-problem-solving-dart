class Solution {
  int carFleet(int target, List<int> position, List<int> speed) {
    int n = position.length;

    if (n == 0) return 0;

    List<List<int>> cars = List.generate(
      n,
          (i) => [position[i], speed[i]],
    );

    cars.sort((a, b) => b[0].compareTo(a[0]));

    int fleets = 0;
    double maxTime = 0.0;

    for (var car in cars) {
      double time = (target - car[0]) / car[1];

      if (time > maxTime) {
        maxTime = time;
        fleets++;
      }
    }

    return fleets;
  }
}

void main() {
  Solution solution = Solution();

  int target = 12;
  List<int> position = [10, 8, 0, 5, 3];
  List<int> speed = [2, 4, 1, 1, 3];

  int result = solution.carFleet(target, position, speed);

  print(result);
}