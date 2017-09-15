function rowSumOddNumbers(i) {
  let startNum = 0;
  for (let j = i; j > 0; j--) {
    startNum += 2 * 1;
    if (j === 1) startNum -= 1;
  }

  return startNum + (i - 1) * 2;
}

console.log("Test 1");
console.log("Input: 1");
let result1 = rowSumOddNumbers(1);
let expect1 = 1;
let test1 = result1 === expect1;
test1 ? console.log("passed") : console.log("failed");
console.log("expected:", expect1);
console.log("   result:", result1);

console.log("Test 2");
console.log("Input: 2");
let result2 = rowSumOddNumbers(2);
let expect2 = 8;
let test2 = result2 === expect2;
test2 ? console.log("passed") : console.log("failed");
console.log("expected:", expect2);
console.log("   result:", result2);

console.log("Test 3");
console.log("Input: 3");
let result3 = rowSumOddNumbers(3);
let expect3 = 27;
let test3 = result3 === expect3;
test3 ? console.log("passed") : console.log("failed");
console.log("expected:", expect3);
console.log("   result:", result3);

console.log("Test 4");
console.log("Input: 4");
let result4 = rowSumOddNumbers(4);
let expect4 = 64;
let test4 = result4 === expect4;
test4 ? console.log("passed") : console.log("failed");
console.log("expected:", expect4);
console.log("   result:", result4);

console.log("Test 5");
console.log("Input: 5");
let result5 = rowSumOddNumbers(5);
let expect5 = 125;
let test5 = result5 === expect5;
test5 ? console.log("passed") : console.log("failed");
console.log("expected:", expect5);
console.log("   result:", result5);

console.log("Test 6");
console.log("Input: 6");
let result6 = rowSumOddNumbers(6);
let expect6 = 216;
let test6 = result6 === expect6;
test6 ? console.log("passed") : console.log("failed");
console.log("expected:", expect6);
console.log("   result:", result6);

console.log("Test 7");
console.log("Input: 7");
let result7 = rowSumOddNumbers(42);
let expect7 = 74088;
let test7 = result7 === expect7;
test7 ? console.log("passed") : console.log("failed");
console.log("expected:", expect7);
console.log("   result:", result7);


//                    1                   =>   1
//                 3     5                =>   8
//              7     9    11             =>   27
//          13    15    17    19          =>   64
//       21    23    25    27    29       =>   125
//    31    33    35    37    39    41    =>   216
//
