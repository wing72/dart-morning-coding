void main() {
  List<int> nums = [0, 1, 0, 3, 12];

  moveZeroes(nums);

  print(nums); // 예상 출력: [1, 3, 12, 0, 0]
}

void moveZeroes(List<int> nums) {
  int nonZeroPos = 0;

  // 모든 비-0 요소를 배열의 앞부분으로 이동
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[nonZeroPos] = nums[i];
      nonZeroPos++;
    }
  }

 //noZeropos는 요소가 끝나는 자리이고 그 이후에는 0으로 만듬
  for (int i = nonZeroPos; i < nums.length; i++) {
    nums[i] = 0;
  }
}
