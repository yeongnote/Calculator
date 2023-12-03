import UIKit

// AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 연산 클래스들을 AbstractOperation라는 클래스명으로 만들어 사용하여 추상화하고 Calculator 클래스의 내부 코드를 변경합니다.
// 클래스간의 결합도, 의존성(의존성역전원칙) 고려하기.

//프로토콜을 대신할 추상화 클래스 설정.
class AbstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double? {
        return nil
    }
}

//연산 클래스
class AddOperation: AbstractOperation {
    override func operate(firstNum: Int, secondNum: Int) -> Double? {
        return Double(firstNum + secondNum)
    }
}

//추상화 클래스에서 상속 받은 연산 클래스
class SubtractOperation: AbstractOperation {
    override func operate(firstNum: Int, secondNum: Int) -> Double? {
        return Double(firstNum - secondNum)
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(firstNum: Int, secondNum: Int) -> Double? {
        return Double(firstNum * secondNum)
    }
}

class DividOperation: AbstractOperation {
    override func operate(firstNum: Int, secondNum: Int) -> Double? {
        return Double(firstNum / secondNum)
    }
}


class Calculator {
    private var abstractOperation: AbstractOperation
    
    init(operation: AbstractOperation){
        self.abstractOperation = operation
    }
    
    func setOperate(operation: AbstractOperation) {
        self.abstractOperation = operation
    }

    func calculator(firstNum: Int, secondNum: Int) -> Double? {
        abstractOperation.operate(firstNum: firstNum, secondNum: secondNum)
    }
}


let calculator = Calculator(operation: AddOperation())

let add = calculator.calculator(firstNum: 10, secondNum: 10)

calculator.setOperate(operation: SubtractOperation())
let sub = calculator.calculator(firstNum: 100, secondNum: 99)

calculator.setOperate(operation: MultiplyOperation())
let multiply = calculator.calculator(firstNum: 3, secondNum: 3)

calculator.setOperate(operation: DividOperation())
let divide = calculator.calculator(firstNum: 44, secondNum: 4)
