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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
