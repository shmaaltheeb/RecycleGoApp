//
//  ViewController.swift
//  RecycleGo!
//
//  Created by Shamma Alkaabi on 10/02/2023.
//

import UIKit
import SwiftUI


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

class RAddress: UIViewController{
    
    @IBOutlet var picker1: UIPickerView!
    
    let emirates = ["Abu Dhabi","Dubai","Sharjah", "Um AlQuwain","Ras AlKhaimah","Fujairah","Ajman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.dataSource = self
        picker1.delegate = self
        
    }
}
extension RAddress: UIPickerViewDataSource, UIPickerViewDelegate {
    
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

class TestAddress: UIViewController {
  
    @IBOutlet var glassimg: UIImageView!
    @IBOutlet var blur1: UIImageView!
    
    @IBOutlet var electronicsimg: UIImageView!
    @IBOutlet var blur2: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var p22: UIButton!
    var glassn = 1
    @IBAction func p2(_ sender: Any){
     
        text.text = "GLASS: \(glassn)"
        glassn+=1
        
    }
    var elecn = 1
    @IBOutlet weak var electronicst: UILabel!
    @IBAction func electronicbuttonc(_ sender: Any) {
        electronicst.text = "ELECTRONICS: \(elecn)"
        elecn+=1
    }
    
    @IBOutlet weak var metalsimg: UIImageView!
    
    @IBOutlet weak var blur3: UIImageView!
    
    @IBOutlet weak var metalsb: UIButton!
    
    @IBOutlet weak var metalst: UILabel!
    var metalsn = 1
    @IBAction func metalsbc(_ sender: Any) {
        metalst.text = "METALS:  \(metalsn)"
        metalsn+=1
    }
    
    @IBOutlet weak var plasticimg: UIImageView!
    
    @IBOutlet weak var blur4: UIImageView!
    
    @IBOutlet weak var blur5: UIImageView!
    @IBOutlet weak var papersimg: UIImageView!
    @IBOutlet weak var paperst: UILabel!
    @IBOutlet weak var plasticst: UILabel!
    
    @IBOutlet weak var plastb: UIButton!
    var plastn = 1
    var papern = 1
    
    @IBAction func plastbc(_ sender: Any) {
        plasticst.text = "PLASTICS: \(plastn)"
        plastn+=1
    }
    
    @IBOutlet weak var paperb: UIButton!

    
    @IBAction func paperbc(_ sender: Any) {
        paperst.text = "PAPERS: \(papern)"
        papern+=1
    }
    override func viewDidLoad(){
        glassimg.layer.cornerRadius = 35
        glassimg.clipsToBounds = true
        blur1.layer.cornerRadius = 30
        blur1.clipsToBounds = true
        electronicsimg.layer.cornerRadius = 35
        electronicsimg.clipsToBounds = true
        blur2.layer.cornerRadius = 30
        blur2.clipsToBounds = true
        metalsimg.layer.cornerRadius = 35
        metalsimg.clipsToBounds = true
        blur3.layer.cornerRadius = 30
        blur3.clipsToBounds = true
        papersimg.layer.cornerRadius = 35
        papersimg.clipsToBounds = true
        blur4.layer.cornerRadius = 30
        blur4.clipsToBounds = true
        blur5.layer.cornerRadius = 30
        blur5.clipsToBounds = true
        plasticimg.layer.cornerRadius = 35
        plasticimg.clipsToBounds = true


        
        
        
    }
    
    
}

