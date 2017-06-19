//
//  SecondViewController.swift
//  To Do List
//
//  Created by Advait on 19/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var resultOutputLabel: UILabel!
    @IBOutlet weak var userInputItem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItemButtonPressed(_ sender: Any) {
        
        
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items = [String]()
        
        if let temp = itemsObject as? [String]{
            items = temp
            items.append(userInputItem.text!)
            
        }
        else{
            items=[userInputItem.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        resultOutputLabel.text = "\(userInputItem.text!) is added to List!"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
   

}

