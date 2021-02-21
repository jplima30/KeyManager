//
//  PasswordsViewController.swift
//  KeyManager
//  teste
//  Created by Joao Paulo Lima Silva on 18/02/21.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var PasswordTextView: UITextView!
    
    var numberOfPassword: Int = 1
    var numberOfCharacters: Int = 10
    var useLetters: Bool!
    var useNumbers: Bool!
    var useOfCapittalLeters: Bool!
    var useSpecialCharacters: Bool!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func generate(_ sender: UIButton) {
        
    }
}
