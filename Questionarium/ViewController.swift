//
//  ViewController.swift
//  Questionarium
//
//  Created by Andrew Belozerov on 06.01.17.
//  Copyright © 2017 Andrew Belozerov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    let qManager = QuestionsManager.sharedInstance
    
    @IBAction func yesButtonTapped(_ sender: UIButton) {
        //globalresult = globalresult + 10
        
        qManager.result += 10
        next()
    }
    
    @IBAction func noButtonTapped(_ sender: UIButton) {
        //globalresult = globalresult + 5

        qManager.result += 5
        next()
    }
    
    
    private func next() {
        if self is q1ViewController {
            performSegue(withIdentifier: "toQ2Segue", sender: nil)
        } else if self is q2ViewController {
            performSegue(withIdentifier: "toQ3Segue", sender: nil)
        } else if self is q3ViewController {
            performSegue(withIdentifier: "toResultSegue", sender: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton(btn: yesButton)
        configureButton(btn: noButton)

    }
    
    private func configureButton(btn: UIButton) {
        btn.backgroundColor = UIColor(red: 127/255, green: 89/255, blue: 147/255, alpha: 1.0)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.lightGray, for: .highlighted)
        
        btn.layer.cornerRadius = 4.0
        
        btn.layer.shadowOpacity = 0.6
        btn.layer.shadowOffset = CGSize(width: 2, height: 2)
        btn.layer.shadowRadius = 2
    }
}


class q1ViewController: ViewController {
    
    @IBAction func toStartSegue(sender: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qLabel.text = "3 + 1 > 5?"
    }
}



class q2ViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        qLabel.text = "4 + 5 = 9?"
    }
}


class q3ViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        qLabel.text = "11 + 2 != 13?"
    }
}
