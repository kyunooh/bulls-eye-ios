//
//  ViewController.swift
//  Bulls Eye
//
//  Created by jelly on 02/07/2019.
//  Copyright © 2019 triplepy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var target: Int = 0
    
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var targetSlider: UISlider!
    
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.targetSlider.maximumValue = 100
        setRandomTarget()
    }
    
    
    func setRandomTarget() {
        self.target = Int.random(in: 0 ... 100)
        targetLabel.text = String(self.target)
    }
    
    
    @IBAction func hit(_ sender: Any) {
        let currentValue = Int(self.targetSlider.value)
        let currentScore = 100 - abs(self.target - currentValue)
        let alert = UIAlertController(title: "Finish!", message: "You get score \(currentScore)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.score.text = String(Int(score.text!)! + currentScore)
        self.roundLabel.text = String(Int(roundLabel.text!)! + 1)
        setRandomTarget()
        present(alert, animated: true)
    }
    
    


}

