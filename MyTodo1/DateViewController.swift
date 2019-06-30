//
//  DateViewController.swift
//  MyTodo1
//
//  Created by Vincent on 2019/6/29.
//  Copyright © 2019 Vincent. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {

    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var shoppingButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var todoItemLabel: UITextField!
    @IBOutlet weak var todoDatePicker: UIDatePicker!
    
    var todo: TodoItem?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectChild(_ sender: Any) {
        resetButton()
        phoneButton.isSelected = true
    }
    
    @IBAction func selectPhone(_ sender: Any) {
        resetButton()
        phoneButton.isSelected = true
    }
    
    @IBAction func selectShopping(_ sender: Any) {
        resetButton()
        shoppingButton.isSelected = true
    }

    @IBAction func selectTravel(_ sender: Any) {
        resetButton()
        travelButton.isSelected = true
    }
    
    func resetButton() {
        childButton.isSelected = false
        phoneButton.isSelected = false
        shoppingButton.isSelected = false
        travelButton.isSelected = false
    }
    
    @IBAction func tapDone(_ sender: Any) {
        var image = ""
        if childButton.isSelected {
            image = "child-selected"
        }
        else if phoneButton.isSelected {
            image = "phone-selected"
        }
        else if shoppingButton.isSelected {
            image = "shopping-cart-selected"
        }
        else if travelButton.isSelected {
            image = "travel-selected"
        }
        
        if let todo = todo {
            todo.image = image
            todo.title = todoItemLabel.text!
            todo.date = todoDatePicker.date
        } else {
            let uuid = UUID().uuidString
            todo = TodoItem(id: uuid, image: image, title: todoItemLabel.text!, date: todoDatePicker.date)
           // todos.append(todo!)
        }
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
