//
//  ViewController.swift
//  SimpleCenter
//
//  Created by Geraud Luku on 8/18/20.
//  Copyright © 2020 Geraud Luku .Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elementList = ["Carbon","Sodium","Chlorine","Gold"]
    var currentElementIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    func updateElement(){
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

