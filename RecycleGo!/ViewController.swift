//
//  ViewController.swift
//  RecycleGo!
//
//  Created by Shamma Alkaabi on 10/02/2023.
//

import UIKit


class CAddress: UIViewController{
    
    @IBOutlet var picker1: UIPickerView!
    
    let emirates = ["Abu Dhabi","Dubai","Sharjah", "Um AlQuwain","Ras AlKhaimah","Fujairah","Ajman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.dataSource = self
        picker1.delegate = self
        
    }
}
extension CAddress: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return emirates.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return emirates[row]
    }
}

class ViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}


