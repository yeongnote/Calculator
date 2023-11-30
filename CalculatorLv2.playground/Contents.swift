import UIKit

// Lv2 : Lv1에서 만든 Calculator 클래스에 추가 연산이 가능하도록 코드를 추가하고, 연산 진행 후 출력하기

//Calculator 클래스
class Calculator {
    //저장 프로퍼티 설정.
    var firstNum: Double = 0
    var secondNum: Double = 0
    
    //연산 메서드
    func calculrate(operators: String, firstNum: Double, secondNum: Double) -> Double{
        
        switch operators {
        case "+":
            return firstNum + secondNum
        case "-":
            return firstNum - secondNum
        case "*":
            return firstNum * secondNum
        case "/":
            return firstNum / secondNum
        case "%":
            let firstNum = Int(firstNum)
            let secondNum = Int(secondNum)
            return Double(firstNum % secondNum)
        default:
            return 0
        }
    }
}
//객체 생성
let calculrator = Calculator()
//각 연산별로 할당.
let add = calculrator.calculrate(operators: "+", firstNum: 30, secondNum: 40)
let sub = calculrator.calculrate(operators: "-", firstNum: 100, secondNum: 20)
let multiply = calculrator.calculrate(operators: "*", firstNum: 3, secondNum: 4)
let divide = calculrator.calculrate(operators: "/", firstNum: 30, secondNum: 3)
//나머지 연산 추가
let remainder = calculrator.calculrate(operators: "%", firstNum: 30, secondNum: 3)
//출력
print("덧셈 값: \(add)")
print("뺏샘 값: \(sub)")
print("곱셈 값: \(multiply)")
print("나눗셈 값: \(divide)")
print("나머지 값: \(remainder)")

//Lv1에서 나머지 연산이 추가 되었습니다. 나머지 연산을 적용할 때는 정수형만 가능하여 나머지 case 안에 입력 받은 값을 담을 상수를 만들어 Int타입으로 형변환하여 코드를 완성했습니다.
