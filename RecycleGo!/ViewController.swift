//
//  ViewController.swift
//  RecycleGo!
//
//  Created by Shamma Alkaabi on 10/02/2023.
//
import CoreML
import UIKit
import SwiftUI

var glassn = 1
var elecn = 1
var plastn = 1
var papern = 1
var metalsn = 1
var glasstotalf = 0
var electronicstotalf = 0
var plastictotalf = 0
var metalstotalf = 0
var paperstotalf = 0


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
    
    @IBAction func p2(_ sender: Any){
     
        text.text = "GLASS: \(glassn)"
        glassn+=1
        
    }
   
    @IBOutlet weak var electronicst: UILabel!
    @IBAction func electronicbuttonc(_ sender: Any) {
        electronicst.text = "ELECTRONICS: \(elecn)"
        elecn+=1
    }
    
    @IBOutlet weak var metalsimg: UIImageView!
    
    @IBOutlet weak var blur3: UIImageView!
    
    @IBOutlet weak var metalsb: UIButton!
    
    @IBOutlet weak var metalst: UILabel!

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
        glassn = 1
        elecn = 1
        plastn = 1
        papern = 1
        metalsn = 1
        
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

class ptaddress: UIViewController {
   
    @IBOutlet weak var glass: UILabel!
    
    @IBOutlet weak var tott: UILabel!
    @IBOutlet weak var paperpt: UILabel!
    @IBOutlet weak var electt: UILabel!
    @IBOutlet weak var metaltt: UILabel!
    @IBOutlet weak var plasticctt: UILabel!
    var total = glassn-1+papern-1+plastn-1+elecn-1+metalsn-1
    
    override func viewDidLoad() {
        if glassn==1 && papern==1 && elecn==1 && metalsn==1 && plastn==1 {
            glass.text = "You have no items in the cart"
            paperpt.isHidden = true
            electt.isHidden = true
            metaltt.isHidden = true
            plasticctt.isHidden = true
        }
        if glassn<=1 {
            glass.text = "Glass: -"
        } else {
            glass.text = "Glass: \(glassn-1) pieces"
        }
        if papern<=1 {
            paperpt.isHidden = false
            paperpt.text = "Paper: -"
        } else {
            paperpt.isHidden = false
            paperpt.text = "Paper: \(papern-1) pieces"
        }
        if elecn<=1 {
            electt.isHidden = false
            electt.text = "Electronics: -"
        } else {
            electt.isHidden = false
            electt.text = "Electronic: \(elecn-1) pieces"
        }
        if metalsn<=1 {
            metaltt.isHidden = false
            metaltt.text = "Metal: -"
        } else {
            metaltt.isHidden = false
            metaltt.text = "Metal: \(metalsn-1) pieces"
        }
        if plastn<=1 {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic: -"
        } else {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic: \(plastn-1) pieces"
        }
        tott.text = "Total: \(total) pieces"
        
    }
}

class p2taddress: UIViewController {
   
    @IBOutlet weak var glass: UILabel!
    
    @IBOutlet weak var tott: UILabel!
    @IBOutlet weak var paperpt: UILabel!
    @IBOutlet weak var electt: UILabel!
    @IBOutlet weak var metaltt: UILabel!
    @IBOutlet weak var plasticctt: UILabel!
    var total = glassn-1+papern-1+plastn-1+elecn-1+metalsn-1
    
    override func viewDidLoad() {
        if glassn==1 && papern==1 && elecn==1 && metalsn==1 && plastn==1 {
            glass.text = "You have no items in the cart"
            paperpt.isHidden = true
            electt.isHidden = true
            metaltt.isHidden = true
            plasticctt.isHidden = true
        }
        if glassn<=1 {
            glass.text = "Glass: -"
        } else {
            glass.text = "Glass: \((glassn-1)*10) AED    \(glassn-1) pieces"
        }
        if papern<=1 {
            paperpt.isHidden = false
            paperpt.text = "Paper: -"
        } else {
            paperpt.isHidden = false
            paperpt.text = "Paper:  \((papern-1)*10) AED    \(papern-1) pieces"
        }
        if elecn<=1 {
            electt.isHidden = false
            electt.text = "Electronics: -"
        } else {
            electt.isHidden = false
            electt.text = "Electronic:  \((elecn-1)*10) AED    \(elecn-1) pieces"
        }
        if metalsn<=1 {
            metaltt.isHidden = false
            metaltt.text = "Metal: -"
        } else {
            metaltt.isHidden = false
            metaltt.text = "Metal:  \((metalsn-1)*10) AED    \(metalsn-1) pieces"
        }
        if plastn<=1 {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic: -"
        } else {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic:  \((plastn-1)*10) AED    \(plastn-1) pieces"
        }
        tott.text = "Total:  \(total*10) AED    \(total) pieces"
        
    }
}
var totalf = 0
class rewardsScreen: UIViewController {
    
    @IBOutlet weak var imgv: UIImageView!
    @IBOutlet weak var pts: UILabel!
    
    @IBOutlet weak var rwb: UILabel!
    override func viewDidLoad() {
        glasstotalf = glassn-1
        electronicstotalf = elecn-1
        plastictotalf = plastn-1
        metalstotalf = metalsn-1
        paperstotalf = papern-1
        totalf = totalf+glasstotalf+electronicstotalf+plastictotalf+metalstotalf+paperstotalf
        pts.text = "\(totalf)"
        
        if totalf>=100 {
            rwb.text = "You have reached a total of 100 or more points! You can use this to redeem a free drink!"
            imgv.image = UIImage(named: "loadi3")
        } else if totalf>=75 {
            rwb.text = "Close to the finish line!"
            imgv.image = UIImage(named: "loadib2")
        } else if totalf>=50 {
            rwb.text = "Halfway there to a free drink!"
            imgv.image = UIImage(named: "loadi2")
        } else if totalf>=25 {
            rwb.text = "Collect more points to redeem a free drink!"
            imgv.image = UIImage(named: "loadib1")
        } else {
            rwb.text = "Collect points to redeem a free drink!"
            imgv.image = UIImage(named: "loadi1")
        }
        
    }
}


let config = MLModelConfiguration()
class aiscreen: UIViewController {
    @IBOutlet weak var aiim: UIImageView!
    
    override func viewDidLoad() {
        
    }
    private func analyzeImage(image: UIImage?){
        guard let buffer = image?.resize(size: CGSize(width: 224, height: 224))?.getCVPixelBuffer() else {return}
        do {
            let config = MLModelConfiguration()
            let model = try RecyclablesAI_Model(configuration: config)
            let input = RecyclablesAI_ModelInput(image: buffer)
            let output = try model.prediction(input: input)
            let text = output.classLabel
            
            //test2
        } catch {
            print(error.localizedDescription)
        }
    }
}
