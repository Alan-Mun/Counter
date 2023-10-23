//
//  ViewController.swift
//  Counter
//
//  Created by Алан Мун on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterText: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterText.text = "0"
        counterButton.setTitle("Нажми", for: .normal)
    }

    var counterNumbers: Int = 0
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        self.counterNumbers += 1
        self.counterText.text = "Значение счётчика: \(self.counterNumbers)"
    }
    
}

