
import UIKit

class ViewController: UIViewController {

            @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonzero: UIButton!
 
    @IBOutlet weak var buttons: UIStackView!
   
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var Three: UIButton!
    @IBOutlet weak var Four: UIButton!
    @IBOutlet weak var Five: UIButton!
    @IBOutlet weak var Six: UIButton!
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    @IBOutlet weak var Delenie: UIButton!
    @IBOutlet weak var Umnozenie: UIButton!
    @IBOutlet weak var Minus: UIButton!
    @IBOutlet weak var Plus: UIButton!
    @IBOutlet weak var Ravno: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        buttonAC.layer.cornerRadius = 36
        One.layer.cornerRadius = 36
        Two.layer.cornerRadius = 36
        Three.layer.cornerRadius = 36
        Four.layer.cornerRadius = 36
        Five.layer.cornerRadius = 36
        Six.layer.cornerRadius = 36
        Seven.layer.cornerRadius = 36
        Eight.layer.cornerRadius = 36
        Nine.layer.cornerRadius = 36
        Delenie.layer.cornerRadius = 36
        Umnozenie.layer.cornerRadius = 36
        Plus.layer.cornerRadius = 36
        Minus.layer.cornerRadius = 36
        Ravno.layer.cornerRadius = 36
        buttonzero.layer.cornerRadius = 36



    }
        
        @IBAction func inputNumber(_ sender: UIButton) {
            if operand.isEmpty{
                numberOne = numberOne +
                (sender.titleLabel?.text)!
                resultLabel.text = numberOne}
            else
            {
                numberTwo = numberTwo +
                (sender.titleLabel?.text)!
                resultLabel.text = numberTwo
            }
           
            }
            
          @IBAction func clearAction(_ sender: UIButton) {
            numberOne = ""
            numberTwo = ""
            operand = ""
            resultLabel.text = "0"
        }
            
            func result(_ sender: UIButton) {
            var result = 0.0
            
            switch operand{
            case "/":
                result = Double(numberOne)! /
                Double(numberTwo)!
            case "+":
                result = Double(numberOne)! +
                Double(numberTwo)!
            case "-":
                result = Double(numberOne)! -
                Double(numberTwo)!
            case "*":
                result = Double(numberOne)! *
                Double(numberTwo)!
            default:
                break
            }
            if result.truncatingRemainder(dividingBy: 1.0)
                == 0.0{
                resultLabel.text = String(Int(result))
            } else {
                resultLabel.text = String(result)
            }
        }
            func stepper(_ sender: UIStepper) {
            let font = resultLabel.font?.fontName
            let fontSize = CGFloat(sender.value)
            resultLabel.font = UIFont(name: font!, size: fontSize)
        }
            func hiddenButtons(_ sender: UISwitch) {
            buttons.isHidden = !buttons.isHidden
            resultLabel.isHidden = !resultLabel.isHidden
        }
    }

