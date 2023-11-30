import UIKit

// Lv3 : AddOperation(더하기), SubstractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 연산 클래스를을 만든 후 클래스간의 관계를 고려하여 Calculator 클래스와 관계를 맺기
// 추가사항: 클래스의 책임(단일책임원칙) 적용하기,

//Calculator 클래스
class Calculator {
    var firstNum: Double
    var secondNum: Double
    
    init(firstNum: Double, secondNum: Double) {
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
}

//덧셈 클래스
class AddOperation {
    func add(firstNum: Double, secondNum: Double) -> Double{
        return firstNum + secondNum
    }
}

//뺏셈 클래스
class SubstractOperation {
    func sub(firstNum: Double, secondNum: Double) -> Double{
        return firstNum - secondNum
    }
}

//곱셈 클래스
class MultiplyOperation {
    func multiply(firstNum: Double, secondNum: Double) -> Double{
        return firstNum * secondNum
    }
}

//나눗셈 클래스
class DivideOperation {
    func divide(firstNum: Double, secondNum: Double) -> Double{
        return firstNum / secondNum
    }
}

//프로퍼티 초기화
let calculator = Calculator(firstNum: 0, secondNum: 0)

let addResult = AddOperation()
let subResult = SubstractOperation()
let multiplyResult = MultiplyOperation()
let divideResult = DivideOperation()

print("덧셈 값: \(addResult.add(firstNum: 30, secondNum: 10))")
print("빼셈 값: \(subResult.sub(firstNum: 10, secondNum: 5))")
print("곱셉 값: \(multiplyResult.multiply(firstNum: 10, secondNum: 5))")
print("나눗셈 값: \(divideResult.divide(firstNum: 10, secondNum: 5))")
