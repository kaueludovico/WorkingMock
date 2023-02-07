//
//  LoginScreenView.swift
//  WorkingMock
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

class LoginScreenView: BaseView {
    
    lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "     Insira seu email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        emailTextField.layer.cornerRadius = 6
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.backgroundColor = UIColor(red: 0.13, green: 0.48, blue: 0.35, alpha: 0.80)
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        return emailTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "     Insira sua senha",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.backgroundColor = UIColor(red: 0.13, green: 0.48, blue: 0.35, alpha: 0.80)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        return passwordTextField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(red: 0.13, green: 0.48, blue: 0.35, alpha: 1.00), for: .normal)
        button.layer.borderWidth = 1
        button.backgroundColor = .white
        button.layer.borderColor = UIColor(red: 0.13, green: 0.48, blue: 0.35, alpha: 1.00).cgColor
        button.layer.cornerRadius = 6
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastre-se", for: .normal)
        button.backgroundColor = UIColor(red: 0.13, green: 0.48, blue: 0.35, alpha: 1.00)
        button.layer.cornerRadius = 6
        return button
    }()
    
    
    override func addSubviews() {
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    override func setConstraints() {
        emailTextField.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        
        emailTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        passwordTextField.anchor(
            top: emailTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        
        passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        loginButton.anchor(
                    top: passwordTextField.bottomAnchor,
                    leading: nil,
                    bottom: nil,
                    trailing: nil,
                    padding: .init(top: 15, left: 0, bottom: 0, right: 0),
                    size: .init(width: 250, height: 40))
                
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        registerButton.anchor(
                    top: loginButton.bottomAnchor,
                    leading: nil,
                    bottom: nil,
                    trailing: nil,
                    padding: .init(top: 15, left: 0, bottom: 0, right: 0),
                    size: .init(width: 250, height: 40))
                
        registerButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}



