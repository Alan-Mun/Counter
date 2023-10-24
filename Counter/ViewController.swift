//
//  ViewController.swift
//  Counter
//
//  Created by Алан Мун on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterText: UILabel!
    @IBOutlet weak var counterPlusButton: UIButton!
    @IBOutlet weak var counterZeroButton: UIButton!
    @IBOutlet weak var counterMinusButton: UIButton!
    @IBOutlet weak var textHistoryBox: UITextView!
    
    var counterNumbers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterText.text = "0"
        
        textHistoryBox.text = "История изменений:"
        textHistoryBox.textAlignment = .center
        textHistoryBox.layer.cornerRadius = 20
        textHistoryBox.layer.masksToBounds = true
        textHistoryBox.isEditable = false
        textHistoryBox.isScrollEnabled = true
        
        counterPlusButton.setImage(UIImage(systemName: "plus.square"), for: .normal)
        counterPlusButton.tintColor = .red
        
        counterZeroButton.setImage(UIImage(systemName: "multiply.circle"), for: .normal)
        counterZeroButton.tintColor = .green
        
        counterMinusButton.setImage(UIImage(systemName: "minus.square"), for: .normal)
        counterMinusButton.tintColor = .blue
    }
    
    @IBAction func counterPlusDidTap(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        let formattedDate = dateFormatter.string(from: Date())
        
        counterNumbers = counterNumbers + 1
        counterText.text = "Значение счётчика: \(counterNumbers)"
        
        textHistoryBox.text = "\(textHistoryBox.text!) \n[\(formattedDate)]\n значение изменено на +1"
    }
    
    @IBAction func counterZeroDidTap(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        let formattedDate = dateFormatter.string(from: Date())
        
        counterNumbers = 0
        counterText.text = "Значение счётчика: \(counterNumbers)"
        textHistoryBox.text = "\(textHistoryBox.text!) \n[\(formattedDate)]\n значение сброшено"
        
    }
    
    @IBAction func counterMinusDidTap(_ sender: Any) {
       
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        let formattedDate = dateFormatter.string(from: Date())
        
        if counterNumbers > 0 {
            counterNumbers = counterNumbers - 1
            counterText.text = "Значение счётчика: \(counterNumbers)"
            textHistoryBox.text = "\(textHistoryBox.text!) \n[\(formattedDate)]\n значение изменено на -1"}
        else { counterNumbers = 0
            textHistoryBox.text = "\(textHistoryBox.text!) \n[\(formattedDate)]\n попытка уменьшить значение\nсчётчика ниже 0"
        }
    }
    
}

