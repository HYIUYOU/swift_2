

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dispValueLbl: UILabel!
    
    var isAppendingDigit:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func digitAppend(_ sender: UIButton) {
        
        let curDigit = sender.currentTitle!
        if isAppendingDigit
        {
            dispValueLbl.text = dispValueLbl.text! + curDigit
        }
        else
        {
            dispValueLbl.text = curDigit
        }
        isAppendingDigit = true
    }
    
    var prevNumber:Int = 0
    var opt:String = ""
    @IBAction func calPressed(_ sender: UIButton) {
        
        prevNumber = Int(dispValueLbl.text!)!
        opt = sender.currentTitle!
        isAppendingDigit = false
    }
    
    @IBAction func doCal(_ sender: Any) {
        let curNumber = Int(dispValueLbl.text!)!
        var result:Int = 0
        switch opt {
        case "+":
            result = prevNumber + curNumber
        case "-":
            result = prevNumber - curNumber
        case "×":
            result = prevNumber * curNumber
        case "÷":
            result = prevNumber / curNumber
    
        default:
           result =  0
        }
        dispValueLbl.text = "\(result)"
        isAppendingDigit = false
    }
    
}

