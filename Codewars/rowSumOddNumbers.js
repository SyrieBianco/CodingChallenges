function rowSumOddNumbers(i) {
  let startNum = 0;
  for (i; i > 0; i--) {
    startNum += 2 * 1;
    if (i === 1) startNum -= 1;
  }

  return startNum + (i - 1) * 2;
}

console.log(rowSumOddNumbers(1) === 1);
console.log(rowSumOddNumbers(42) == 74088);


// running concerns:
  // will my for loop mutate my input "i", and does it matter?
