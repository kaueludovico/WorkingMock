//
//  RegisterViewController.swift
//  WorkingMock
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

protocol SendUserDataDelegate {
    func createUser()
}

class RegisterViewController: UIViewController {
    
    var delegate: SendUserDataDelegate?
    
    
    typealias CustomView = RegisterScreenView
    let customView = CustomView()
    
    override func loadView() {
        view = customView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        customView.registerButton.addTarget(self, action: #selector(createUserAndNavigation), for: .touchUpInside)
    }
    
    @objc func createUserAndNavigation() {
        let user = User(name: customView.nameTextField.text, email: customView.emailTextField.text, password: customView.passwordTextField.text)
        
//        DataSourceMock.shared.user = user
        
        userDefault(user: user)
        
        delegate?.createUser()
        
        dismiss(animated: true)
    }
    
    func userDefault(user: User) {
        let jsonEncoder = JSONEncoder()
        let json = try? jsonEncoder.encode(user)
        UserDefaults.standard.set(json, forKey: "validation")
    }
}
