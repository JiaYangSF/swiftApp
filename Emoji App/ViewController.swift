//
//  ViewController.swift
//  Emoji App
//
//  Created by Jia Yang on 1/6/17.
//  Copyright © 2017 Jia Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var JiaTableView: UITableView!
    var emoji : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        JiaTableView.dataSource = self
        JiaTableView.delegate = self
        emoji =  makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count //contro+command+space to get emoji
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emojiDisplay = emoji[indexPath.row]
        cell.textLabel?.text = emojiDisplay.stringEmoji
        return cell
    }
    
    //emoji[indexPath.row] --  fixed it
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)// this one is optional, if the grey bar is there or not doenst matter
       
        performSegue(withIdentifier: "moveSegue", sender: emoji[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender  as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() ->[Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😰"
        emoji1.birthyear = 0
        emoji1.category = "Worry"
        emoji1.defination = "a worried look"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😃"
        emoji2.birthyear = 2
        emoji2.category = "happy"
        emoji2.defination = "a happy look"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😚"
        emoji3.birthyear = 3
        emoji3.category = "kissy"
        emoji3.defination = "a kissy look"
        
        return [emoji1,emoji2,emoji3]
    
    }
    
    


}

