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
var CityAddC = ""
var StreetAddC = ""
var VillaAddC = ""
var CityAddP = ""
var StreetAddP = ""
var CompantAddP = ""
var CompanyName = ""
var ProductUsageV = ""
var CustomerName = ""

class CAddress: UIViewController{
    
    @IBOutlet weak var StreetC: UITextField!
    @IBOutlet weak var VillaC: UITextField!
    
    @IBOutlet weak var CityC: UITextField!

    @IBOutlet var nextB: UIButton!
    @IBOutlet var picker1: UIPickerView!

    @IBAction func next(_ sender: Any) {
        CityAddC = CityC.text!
        StreetAddC = StreetC.text!
        VillaAddC = VillaC.text!
    }
    let emirates = ["Abu Dhabi","Dubai","Sharjah", "Um AlQuwain","Ras AlKhaimah","Fujairah","Ajman"]
    @objc func dismissKeyboard() {
        if StreetC.isFirstResponder {
            StreetC.resignFirstResponder()
        } else if VillaC.isFirstResponder {
            VillaC.resignFirstResponder()
        } else if CityC.isFirstResponder {
            CityC.resignFirstResponder()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.dataSource = self
        picker1.delegate = self
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            view.addGestureRecognizer(tapGesture)
        
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
    
    @IBOutlet var StreetR: UITextField!
    @IBOutlet var picker1: UIPickerView!
    @IBOutlet var CompanyNameB: UITextField!
    @IBOutlet var CityB: UITextField!
    @IBOutlet var CompanyBuildingB: UITextField!
    
    @IBOutlet var nextRr: UIButton!
    @IBAction func nextClicked(_ sender: Any) {
        CityAddP = CityB.text!
        StreetAddP = StreetR.text!
        CompantAddP = CompanyBuildingB.text!
        CompanyName = CompanyNameB.text!
    }
    let emirates = ["Abu Dhabi","Dubai","Sharjah", "Um AlQuwain","Ras AlKhaimah","Fujairah","Ajman"]
    
    @objc func dismissKeyboard() {
        if StreetR.isFirstResponder {
            StreetR.resignFirstResponder()
        } else if CompanyBuildingB.isFirstResponder {
            CompanyBuildingB.resignFirstResponder()
        } else if CompanyNameB.isFirstResponder {
            CompanyNameB.resignFirstResponder()
        } else if CityB.isFirstResponder {
            CityB.resignFirstResponder()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.dataSource = self
        picker1.delegate = self
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            view.addGestureRecognizer(tapGesture)
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

    @IBOutlet weak var Aiimg: UIImageView!
    
    @IBOutlet weak var blur6: UIImageView!
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
        blur6.layer.cornerRadius = 30
        blur6.clipsToBounds = true
        Aiimg.layer.cornerRadius = 35
        Aiimg.clipsToBounds = true
        
        
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
            glass.text = "Glass: \((glassn-1)*10) AED    \(glassn-1) kgs"
        }
        if papern<=1 {
            paperpt.isHidden = false
            paperpt.text = "Paper: -"
        } else {
            paperpt.isHidden = false
            paperpt.text = "Paper:  \((papern-1)*10) AED    \(papern-1) kgs"
        }
        if elecn<=1 {
            electt.isHidden = false
            electt.text = "Electronics: -"
        } else {
            electt.isHidden = false
            electt.text = "Electronic:  \((elecn-1)*10) AED    \(elecn-1) kgs"
        }
        if metalsn<=1 {
            metaltt.isHidden = false
            metaltt.text = "Metal: -"
        } else {
            metaltt.isHidden = false
            metaltt.text = "Metal:  \((metalsn-1)*10) AED    \(metalsn-1) kgs"
        }
        if plastn<=1 {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic: -"
        } else {
            plasticctt.isHidden = false
            plasticctt.text = "Plastic:  \((plastn-1)*10) AED    \(plastn-1) kgs"
        }
        tott.text = "Total:  \(total*10) AED    \(total) kgs"
        
    }
}
var totalf = 0
class rewardsScreen: UIViewController {
    
    @IBOutlet weak var imgv: UIImageView!
    @IBOutlet weak var pts: UILabel!
    
    @IBOutlet weak var maitext: UILabel!
    @IBAction func maibuttonclicked(_ sender: Any) {
        maitext.text = "Redeemed"
        totalf = totalf - 15
        maibutton.isHidden = true
    }
    @IBOutlet weak var maibutton: UIButton!
    @IBOutlet weak var laptopButton: UIButton!

    @IBAction func LpatopButtonClicked(_ sender: Any) {
        laptoptext.text = "Redeemed"
        totalf = totalf - 100
        laptopButton.isHidden = true
    }
    @IBOutlet weak var laptoptext: UILabel!
    @IBOutlet weak var Username: UILabel!
    @IBOutlet weak var rwb: UILabel!
   
    @IBOutlet weak var laptopimg: UIImageView!
    @IBOutlet weak var maiimg: UIImageView!
    override func viewDidLoad() {
        maiimg.layer.cornerRadius = 35
        maiimg.clipsToBounds = true
        laptopimg.layer.cornerRadius = 35
        laptopimg.clipsToBounds = true
        Username.text = CustomerName
        if CustomerName=="" {
            Username.text = "Shamma"
        }
        glasstotalf = glassn-1
        electronicstotalf = elecn-1
        plastictotalf = plastn-1
        metalstotalf = metalsn-1
        paperstotalf = papern-1
        totalf = totalf+glasstotalf+electronicstotalf+plastictotalf+metalstotalf+paperstotalf
        pts.text = "\(totalf)"
        laptopButton.isHidden = true
        maibutton.isHidden = true
        if totalf>=15{
            maibutton.isHidden = false
        }
        if totalf>=100 {
            rwb.text = "You have reached a total of 100 or more points! You can use this to redeem a free drink!"
            imgv.image = UIImage(named: "loadi3")
            laptopButton.isHidden = false
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
class aiscreen: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let aiim: UIImageView = {
        let aiim = UIImageView()
        aiim.contentMode = .scaleAspectFit
        return aiim
    }()
    @IBOutlet weak var label: UILabel!
    
 
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        aiim.frame = CGRect(x: 20, y: view.safeAreaInsets.top, width: view.frame.size.width-40, height: view.frame.size.width-40)
        label.frame = CGRect(x: 20, y: view.safeAreaInsets.top+(view.frame.size.width-40)+10, width: view.frame.size.width-40, height: 100)
    }
    override func viewDidLoad() {
        view.addSubview(aiim)
        aiim.image = UIImage(systemName: "photo")
        label.text = "Select Image"
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapImage))
        aiim.isUserInteractionEnabled = true
        tap.numberOfTapsRequired = 1
        aiim.addGestureRecognizer(tap)
    }
    @objc func didTapImage(){
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true)
        
    }
    private func analyzeImage(image: UIImage?){
        guard let buffer = image?.resize(size: CGSize(width: 224, height: 224))?.getCVPixelBuffer() else {return}
        do {
            let config = MLModelConfiguration()
            let model = try RecyclablesAI_1(configuration: config)
            let input = RecyclablesAI_1Input(image: buffer)
            let output = try model.prediction(input: input)
            let text = output.classLabel
            label.text = text
        } catch {
            print(error.localizedDescription)
        }
    }
    //Image Picker
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //cancelled
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        aiim.image = image
        analyzeImage(image: image)
    }
}

class deliverScreenC: UIViewController {
    
    @IBOutlet var refresh: UIButton!
    @IBOutlet weak var DeliveryAddress: UILabel!
    override func viewDidLoad() {
        if StreetAddC=="" {
            DeliveryAddress.text = "Address not found (for demo purposes we will move on)"
        } else {
            DeliveryAddress.text = "To: \(StreetAddC), \(VillaAddC), \(CityAddC)"
        }
        
    }
}

class deliverScreenR: UIViewController {
    
    @IBOutlet var Refresh: UIButton!
    @IBOutlet var DeliveryAdd: UILabel!
    override func viewDidLoad() {
        if StreetAddP=="" {
            DeliveryAdd.text = "Address not found (for demo purposes we will move on)"
        } else {
            DeliveryAdd.text = "To: \(StreetAddP), \(CompantAddP), \(CityAddP). Thank you \(CompanyName) for your purchase"
        }
        
    }
}

class delivered1: UIViewController {
   
    @IBOutlet var Refresh1: UIButton!
    @IBOutlet weak var ProductUsage: UITextField!
    
    @IBAction func RefreshClicked1(_ sender: Any) {
        ProductUsageV = ProductUsage.text!
    }
    @objc func dismissKeyboard() {
        ProductUsage.resignFirstResponder()
    }

    override func viewDidLoad() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
           view.addGestureRecognizer(tapGesture)
    }
}

class delivered2: UIViewController{
    @IBOutlet var Label1: UILabel!
    
    @IBOutlet var Label2: UILabel!
    override func viewDidLoad() {
        Label1.text = "Your items have reached \(CompanyName)"
        Label2.text = "As you have stated your products will be used for \(ProductUsageV)"
    }
}

class servicesScreen: UIViewController {
    
    @IBOutlet var LogInUser: UITextField!
    @IBOutlet var LogIn: UILabel!
    @IBOutlet var LogInButton: UIButton!
    @IBOutlet var pleaseenter: UILabel!
    @IBOutlet var b3: UIButton!
    @IBOutlet var i2: UIImageView!
    @IBOutlet var b2: UIButton!
    @IBOutlet var l4: UILabel!
    @IBOutlet var l3: UILabel!
    @IBOutlet var i1: UIImageView!
    @IBOutlet var b1: UIButton!
    @IBOutlet var l2: UILabel!
    @IBOutlet var label1: UILabel!
    
    @IBAction func LogInButtonClicked(_ sender: Any) {
        CustomerName = LogInUser.text!
        label1.isHidden = false
        l2.isHidden = false
        l3.isHidden = false
        l4.isHidden = false
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        i1.isHidden = false
        i2.isHidden = false
        pleaseenter.isHidden = true
        LogIn.isHidden = true
        LogInButton.isHidden = true
        LogInUser.isHidden = true
    }
    @objc func dismissKeyboard() {
        LogInUser.resignFirstResponder()
    }

    override func viewDidLoad() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            view.addGestureRecognizer(tapGesture)
        
        if CustomerName=="" {
            label1.isHidden = true
            l2.isHidden = true
            l3.isHidden = true
            l4.isHidden = true
            b1.isHidden = true
            b2.isHidden = true
            b3.isHidden = true
            i1.isHidden = true
            i2.isHidden = true
            pleaseenter.isHidden = false
            LogIn.isHidden = false
            LogInButton.isHidden = false
            LogInUser.isHidden = false
        } else {
            label1.isHidden = false
            l2.isHidden = false
            l3.isHidden = false
            l4.isHidden = false
            b1.isHidden = false
            b2.isHidden = false
            b3.isHidden = false
            i1.isHidden = false
            i2.isHidden = false
            pleaseenter.isHidden = true
            LogIn.isHidden = true
            LogInButton.isHidden = true
            LogInUser.isHidden = true
        }
    }
}
