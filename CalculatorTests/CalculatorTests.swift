import XCTest
@testable import Calculator // Import the module where Calculator is defined

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
    
    override func tearDown() {
        calculator = nil
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(calculator.add(3, 4), 7, "Addition should return the correct sum")
        XCTAssertEqual(calculator.add(-3, 4), 1, "Addition with negative numbers should return the correct sum")
        XCTAssertEqual(calculator.add(0, 0), 0, "Addition with zeros should return zero")
    }
    
    func testSubtract() {
        XCTAssertEqual(calculator.subtract(5, 3), 2, "Subtraction should return the correct difference")
        XCTAssertEqual(calculator.subtract(3, 5), -2, "Subtraction with reverse order should return negative difference")
        XCTAssertEqual(calculator.subtract(0, 0), 0, "Subtraction with zeros should return zero")
    }
    
    func testMultiply() {
        XCTAssertEqual(calculator.multiply(3, 4), 12, "Multiplication should return the correct product")
        XCTAssertEqual(calculator.multiply(-3, 4), -12, "Multiplication with negative numbers should return the correct product")
        XCTAssertEqual(calculator.multiply(0, 4), 0, "Multiplication with zero should return zero")
    }
    
    func testDivide() {
        XCTAssertEqual(calculator.divide(8, 4), 2, "Division should return the correct quotient")
        XCTAssertEqual(calculator.divide(10, 3), 3, "Division should truncate towards zero")
//        XCTAssertThrowsError(try calculator.divide(5, 5), "Division by zero should throw an error")
    }
    
    func testPower() {
        XCTAssertEqual(calculator.power(2, 3), 8, "Power function should return the correct result")
        XCTAssertEqual(calculator.power(5, 0), 1, "Any number raised to the power of 0 should be 1")
    }
    
    func testFactorial() {
        XCTAssertEqual(calculator.factorial(5), 120, "Factorial of 5 should be 120")
        XCTAssertEqual(calculator.factorial(0), 1, "Factorial of 0 should be 1")
    }
    
    func testIsPrime() {
        XCTAssertTrue(calculator.isPrime(2), "2 is a prime number")
        XCTAssertTrue(calculator.isPrime(7), "7 is a prime number")
        XCTAssertTrue(calculator.isPrime(17), "17 is a prime number")
        XCTAssertFalse(calculator.isPrime(4), "4 is not a prime number")
        XCTAssertFalse(calculator.isPrime(10), "10 is not a prime number")
    }
    
    func testIsEven() {
        XCTAssertTrue(calculator.isEven(4), "4 is an even number")
        XCTAssertTrue(calculator.isEven(0), "0 is an even number")
        XCTAssertFalse(calculator.isEven(3), "3 is not an even number")
    }
    
    func testIsOdd() {
        XCTAssertTrue(calculator.isOdd(3), "3 is an odd number")
        XCTAssertFalse(calculator.isOdd(4), "4 is not an odd number")
        XCTAssertFalse(calculator.isOdd(0), "0 is not an odd number")
    }
}

