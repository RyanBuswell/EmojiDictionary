//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Buswell on 10/19/18.
//  Copyright © 2018 Ryan Buswell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Connect the Base Tableview
    @IBOutlet weak var baseTable: UITableView!
    
    //Array of emojis
    var emojis = ["😀", "😎", "😍", "😈", "😹"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        baseTable.dataSource = self
        baseTable.delegate = self
    }
    //Where the table gets row #
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //What is inside each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    //Transition Table View
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
       performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    //Prepare Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }

}

