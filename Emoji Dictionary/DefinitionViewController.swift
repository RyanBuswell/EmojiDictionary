//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Buswell on 10/19/18.
//  Copyright © 2018 Ryan Buswell. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    //Picture of emoji
    @IBOutlet weak var emojiLabel: UILabel!
    //Label for the definition
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀"{
        definitionLabel.text = "SMILE"
        }
    }

}
