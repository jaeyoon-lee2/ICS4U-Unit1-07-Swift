/*
This program gets the width and height, calculate
and shows height required for 1 board foot in inches.
author  Jay Lee
version 1.0
since   2020-04-29
*/

func BoardFoot(width: Double, length: Double) -> Double {
  // Calculate height
  let height = 144 / (width * length)

  // Return value
  return height
}


enum InvalidInputError : Error {
  case invalidInput
}

// Input
print("Enter width in inches: ", terminator: "")
let widthString = readLine()
print("Enter length in inches: ", terminator: "")
let lengthString = readLine()

do {
  guard let width = Double(widthString!), let length = Double(lengthString!)
  else{
    throw InvalidInputError.invalidInput
  }
  if (width > 0 && length > 0) {
    let height = BoardFoot(width: width, length: length)

    // Output
    print("The height of \(width) x \(length) in size required for 1 board "
          + "foot (144 in³) is \(height) in.")
  } else {
    print("Out of range!")
  }
} catch {
  print("Invalid input!")
}
print("\nDone.")
