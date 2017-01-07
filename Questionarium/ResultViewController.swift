//
//  ResultViewController.swift
//  Questionarium
//
//  Created by Andrew Belozerov on 06.01.17.
//  Copyright © 2017 Andrew Belozerov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!

    let qManager = QuestionsManager.sharedInstance
    
    private func configureButton(btn: UIButton) {
        btn.backgroundColor = UIColor(red: 227/255, green: 189/255, blue: 47/255, alpha: 1.0)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.lightGray, for: .highlighted)
        
        btn.layer.cornerRadius = 4.0
        
        btn.layer.shadowOpacity = 0.6
        btn.layer.shadowOffset = CGSize(width: 2, height: 2)
        btn.layer.shadowRadius = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton(btn: resetButton)
        
        resultLabel.text = "Сумма всех ответов составила: \(qManager.result) пунктов. "
        if qManager.result == qManager.checkSum {
            resultLabel.text = resultLabel.text! + "Сумма пунктов соответствует сумме правильных ответов. Предположительно, вы оветили правильно на все вопросы "
        }
        
        qManager.reset()
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toStartSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStartSegue" {

        }
    }

}
