//
//  ViewController.swift
//  WindowShopper
//
//  Created by Peerapol on 21/3/2562 BE.
//  Copyright © 2562 iPpanther. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatePressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

