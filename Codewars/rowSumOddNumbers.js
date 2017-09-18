function rowSumOddNumbers(i) {
  let range = 0;
  for (let j = i - 1; j > 0; j--) { range += j; }

  return (range * 2) * (i + 1) + i;
}
