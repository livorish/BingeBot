//
//  ViewController.swift
//  BingeBot
//
//  Created by Оксана Нефедова on 03/01/2019.
//  Copyright © 2019 Оксана Нефедова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var fokkiSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
        
    }
    //Update ShowsLabel
    func updateShowsLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }

    @IBAction func randomShowButtonWasPressed(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        fokkiSpokenLabel.isHidden = false
    }
    @IBAction func addShowButtonWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        
        shows.append(showName)
        updateShowsLabel()
        showsStackView.isHidden=false
        addShowTextField.text = ""
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            fokkiSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
        }
    }
    
}

