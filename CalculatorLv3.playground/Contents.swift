import UIKit

// Lv3 : AddOperation(더하기), SubstractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 연산 클래스를을 만든 후 클래스간의 관계를 고려하여 Calculator 클래스와 관계를 맺기
// 추가사항: 클래스의 책임(단일책임원칙) 적용하기,

class Calculator {
    private let addOperation: AddOperation
    private let subtractOperation: SubstractOperation
    private let multiplyOperation: MultiplyOperation
    private let divideOperation: DivideOperation
    
    init(addOperation: AddOperation, subtractOperation: SubstractOperation, multiplyOperation: MultiplyOperation, divideOperation: DivideOperation){
        self.addOperation = addOperation
        self.subtractOperation = subtractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
    }
    
    func calculate(operator: String, firstNum: Int, secondNum: Int) -> Double? {
        switch `operator` {
        case "+":
            return addOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "-":
            return subtractOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "*":
            return multiplyOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "/":
            return divideOperation.operate(firstNum: firstNum, secondNum: secondNum)
        default:
            return nil
        }
    }
}
//덧셈 클래스
class AddOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum + secondNum)
    }
}

//뺏셈 클래스
class SubstractOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum - secondNum)
    }
}

//곱셈 클래스
class MultiplyOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum * secondNum)
    }
}

//나눗셈 클래스
class DivideOperation {
    func operate(firstNum: Int, secondNum: Int) -> Double{
        return Double(firstNum / secondNum)
    }
}



//프로퍼티 초기화
let calculator = Calculator(addOperation: AddOperation(), subtractOperation: SubstractOperation(), multiplyOperation: MultiplyOperation(), divideOperation: DivideOperation())

//옵셔널 기본값 설정
let addResult = calculator.calculate(operator: "+", firstNum: 30, secondNum: 30) ?? 0
let subResult = calculator.calculate(operator: "-", firstNum: 40, secondNum: 20) ?? 0
let multiplyResult = calculator.calculate(operator: "*", firstNum: 2, secondNum: 9) ?? 0
let divideResult = calculator.calculate(operator: "/", firstNum: 30, secondNum: 20) ?? 0




