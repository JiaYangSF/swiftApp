//
//  DefinitionViewController.swift
//  Emoji App
//
//  Created by Jia Yang on 1/6/17.
//  Copyright © 2017 Jia Yang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var definationLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text=emoji.stringEmoji
        birthYearLabel.text = "The time is \(emoji.birthyear)"
        categoryLabel.text = emoji.category
        definationLabel.text = emoji.defination
    
 
      
    }

   override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
