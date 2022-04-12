//
//  HomeViewController.swift
//  ece564_fe
//
//  Created by Lu Yu on 2022/4/13.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "toCalculatorPage",
            let vc = segue.destination as? CalculatorViewController{
            vc.resultHandler = {[weak self] text in
                self?.resultLabel.text = text
            }
        }
    }

}
