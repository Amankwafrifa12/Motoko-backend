import Debug "mo:base/Debug";
import Float "mo:base/Float";

actor Project2 {

  // Add two numbers
  public func add(x: Float, y: Float) : async Float {
    return x + y;
  };

  // Subtract y from x
  public func subtract(x: Float, y: Float) : async Float {
    return x - y;
  };

  // Multiply two numbers
  public func multiply(x: Float, y: Float) : async Float {
    return x * y;
  };

  // Divide x by y (with basic zero division check)
  public func divide(x: Float, y: Float) : async ?Float {
    if (y == 0) {
      return null;
    };
    return ?(x / y);
  };

  // Exponentiation: x raised to the power of y
  public func power(x: Float, y: Float) : async Float {
    return Float.pow(x, y);
  };

  // Square root of x (returns null if x < 0)
  public func sqrt(x: Float) : async ?Float {
    if (x < 0) {
      return null;
    };
    return ?(Float.sqrt(x));
  };

};
