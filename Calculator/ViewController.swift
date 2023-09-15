//
//  ViewController.swift
//  Calculator
//
//  Created by Owner on 2022/09/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!   //計算結果を表示するラベル
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0   //どの四則演算をするか判定するための変数
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select3() {
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4() {
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func plus() {
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func equal() {
        if ope == 1 {
            //プラスのとき
            number3 = number2 + number1
        } else if ope == 2 {
            //マイナスのとき
            number3 = number2 - number1
        } else if ope == 3 {
            //かけ算のとき
            number3 = number2 * number1
        } else if ope == 4 {
            //わり算のとき
            number3 = number2 / number1
        }
        label.text = String(number3)
    }

    
}


