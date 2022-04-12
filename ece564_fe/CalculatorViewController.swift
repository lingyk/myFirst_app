//
//  CalculatorViewController.swift
//  ece564_fe
//
//  Created by Lu Yu on 2022/4/13.
//

import UIKit

class CalculatorViewController: UIViewController {
    var resultHandler : ((_ text:String)->())?
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    
    
    @IBOutlet weak var addOperator: UIButton!
    
    @IBOutlet weak var subtractionOperator: UIButton!
    @IBOutlet weak var multiplicationOperator: UIButton!
    @IBOutlet weak var divisionOperator: UIButton!
    
    @IBOutlet weak var clearOperator: UIButton!
    @IBOutlet weak var equalOperator: UIButton!
    
    var numBtnList = [UIButton]()
    var operatorBtnList = [UIButton]()
    override func viewDidLoad() {
        super.viewDidLoad()
        showLabel.text = ""
        numBtnList = [zeroBtn,oneBtn,twoBtn,threeBtn,fourBtn,fiveBtn,sixBtn,sevenBtn,eightBtn,nineBtn]
        for (index,item) in numBtnList.enumerated() {
            item.tag = index
            item.addTarget(self, action: #selector(clickNum(btn:)), for: .touchUpInside)
        }
        operatorBtnList = [addOperator,subtractionOperator,multiplicationOperator,divisionOperator]
        
        for (index,item) in operatorBtnList.enumerated() {
            item.tag = index
            item.addTarget(self, action: #selector(clickOperator(btn:)), for: .touchUpInside)
        }
        clearOperator.addTarget(self, action: #selector(clickClearOperator(btn:)), for: .touchUpInside)
        equalOperator.addTarget(self, action: #selector(clickEqualOperator(btn:)), for: .touchUpInside)
    }
    

    @objc func clickNum(btn:UIButton)  {
        let text = btn.titleLabel!.text!
        showLabel.text = showLabel.text! + text
    }
    
    @objc func clickOperator(btn:UIButton)  {
        let text = btn.titleLabel!.text!
        showLabel.text = showLabel.text! + text
    }
    @objc func clickClearOperator(btn:UIButton)  {
       
        showLabel.text = ""
    }
    @objc func clickEqualOperator(btn:UIButton)  {
        let text = showLabel.text!
        if text.contains("*") {
            let list = text.components(separatedBy: "*")
            if list.count == 2,
               let first = Int(list.first!),
               let last = Int(list.last!){
                showLabel.text = text + "=" + String(first * last)
            }
        }else if text.contains("/") {
            let list = text.components(separatedBy: "/")
            if list.count == 2,
               let first = Int(list.first!),
               let last = Int(list.last!),
                last != 0{
                showLabel.text = text + "=" + String(first / last)
            }
        }else if text.contains("+") {
            let list = text.components(separatedBy: "+")
            if list.count == 2,
               let first = Int(list.first!),
               let last = Int(list.last!){
                showLabel.text = text + "=" + String(first + last)
            }
        } else if text.contains("-") {
            let list = text.components(separatedBy: "-")
            if list.count == 2,
               let first = Int(list.first!),
               let last = Int(list.last!){
                showLabel.text = text + "=" + String(first - last)
            }
        }
        if showLabel.text!.contains("="),
           let handler = self.resultHandler {
            handler(showLabel.text!)
            
        }else{
            print("operator error")
        }
        
    }
}
