//
//  AddViewController.swift
//  SlapChat
//
//  Created by Ismael Barry on 7/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let store = DataStore.sharedDataStore
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addButtonDidTouchUpInside(sender: AnyObject) {
        
        // Create a new message with the contents of the text field
        let newMessage = NSEntityDescription.insertNewObjectForEntityForName(Message.entityName, inManagedObjectContext: store.managedObjectContext) as! Message
       
        newMessage.content = self.textField.text
        newMessage.createdAt = NSDate()
        
        // Save the context:
        store.saveContext()
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

}
