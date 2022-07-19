//
//  LoginViewController.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 19.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "rickMortyTitle")
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    private let rickImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = UIImage(named: "rickHead")
        imageView.clipsToBounds = true
        
        return imageView
        
    }()
    
    
    private let loginButton: UIButton = {
       
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20.0
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        button.backgroundColor = .white
        return button
        
    }()
    
    @objc func loginButtonClicked() {
        //write code after you import firebase
        //
        
    }
    
    var myTextField: UITextField  {
        let textField = UITextField()
        textField.placeholder = "Default"
        textField.backgroundColor = .white
        textField.textColor = .systemGreen
        textField.textAlignment = .center
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor.green.cgColor
        
        view.addSubview(textField)
        return textField
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Sign In"
        configureTextFields()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.addSubview(titleImageView)
        view.addSubview(rickImageView)
        view.addSubview(loginButton)
        titleImageView.frame = CGRect(x: 20, y: view.frame.size.width / 4, width: view.frame.size.width - 40, height: view.frame.size.width / 3.5)
        rickImageView.frame = CGRect(x: 20, y: view.frame.size.height * 0.55, width: view.frame.size.width - 40, height: view.frame.size.width - 40)
        loginButton.frame = CGRect(x: 80, y: (view.frame.size.width * 0.55) + 195, width: view.frame.size.width - 160, height: 60)
        
        
    }
    
    func configureTextFields() {
        let usernameTextfield = myTextField
        let emailTextField = myTextField
        let passwordTextfield = myTextField
        
        
        usernameTextfield.placeholder = "Enter name"
        emailTextField.placeholder = "Enter email"
        passwordTextfield.placeholder = "Enter password"
        
        usernameTextfield.frame = CGRect(x: 30, y: (view.frame.size.width * 0.55), width: view.frame.size.width - 60, height: 40)
        emailTextField.frame = CGRect(x: 30, y: (view.frame.size.width * 0.55) + 70, width: view.frame.size.width - 60, height: 40)
        passwordTextfield.frame = CGRect(x: 30, y: (view.frame.size.width * 0.55) + 140, width: view.frame.size.width - 60, height: 40)
        
    }
    

   
}
