import UIKit

//Lv1 : 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들고, 클래스를 이용하여 연산을 진행하고 출력하기

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
//출력
print("덧셈 값: \(add)")
print("뺏샘 값: \(sub)")
print("곱셈 값: \(multiply)")
print("나눗셈 값: \(divide)")

//덧셈, 뺏셈, 곱셈, 나눗셈 4가지 연산이 가능하도록 클래스를 만들었습니다. 클래스 내부에는 연산 기호에 따라 연산을 적용 할 수 있도록 반환값에 적용했습니다.
