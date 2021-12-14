// 2.1
// Draw right triangle
//*
//* *
//* * *
//* * * *
//* * * * *

func drawRightTriangle(rows: Int = 5) {
    // Write your code here
    for i in 1...rows
    {
      for j in 1...i
      {
        if(j > 1)
        {
          print(" ", terminator: "");
        }
        print("*", terminator: "");
      }
      print();
    }
    
}
drawRightTriangle(rows:6);


// Draw Floyd's triangle.
// Floyd's triangle, named after Rober Floyd, is a right angled triangle, which is made using natural numbers. It starts from 1 and consecutively selects the next greater number in sequence.
// 1
// 2  3
// 4  5  6
// 7  8  9  10
// 11 12 13 14 15
func drawFloydTriangle(rows: Int = 5) {
    // Write your code here
    var count : Int = 1;
    for i in 1...rows
    {
        for j in 1...i
        {
          if(j > 1)
          {
            print(" ", terminator: "");
          }
          print(count, terminator: "");
          if(count < 10)
          {
            print(" ", terminator: "");
          }
          count = count + 1;  
        }
        print();
    }
}

drawFloydTriangle(rows: 10);

print("Test passed!");


//2.2
// Complete below function
// If input has only unique letters taking letter case into account. -> return true. Otherwise, return false.

func isUnique(input: String) -> Bool {
    for i in 0...(input.count-2)
    {
      // print(input[input.index(input.startIndex, offsetBy: i)]);
      for j in (i+1)...(input.count-1)
      {
        if(input[input.index(input.startIndex, offsetBy: i)] == input[input.index(input.startIndex, offsetBy: j)]) // to compare character at i with others
        {
          // print("\(i) \(input[input.index(input.startIndex, offsetBy: i)])  \(j) \(input[input.index(input.startIndex, offsetBy: j)])")
          return false;
        }
      } 
    }
    return true;
}



print("2.2");

assert(isUnique(input: "ThIsIsNOTUniqueString") == false)
assert(isUnique(input: "QqWwEeRr") == true)
assert(isUnique(input: "QQWwEeRR") == false)
print("Test passed!")
