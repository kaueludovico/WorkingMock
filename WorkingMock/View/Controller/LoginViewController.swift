//
//  ViewController.swift
//  WorkingMock
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    typealias CustomView = LoginScreenView
    let customView = CustomView()
    
     var user = User()
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customView.registerButton.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        customView.loginButton.addTarget(self, action: #selector(validationWithUserDefaults), for: .touchUpInside)
    }
    
    
    @objc func validateUser() {
        DataSourceMock.shared.validateUser { user in
            if self.customView.emailTextField.text != user.email ||
                self.customView.passwordTextField.text != user.password {
                self.alertLogin()
            } else {
                self.navigateToHome()
            }
        }
    }
    
    
    func decoder() {
        if let data = UserDefaults.standard.object(forKey: "validation") as? Data,
           let user = try? JSONDecoder().decode(User.self, from: data) {
            self.user = user
        }
    }
    
    @objc func validationWithUserDefaults() {
        if self.customView.emailTextField.text != self.user.email ||
            self.customView.passwordTextField.text != self.user.password {
            alertLogin()
        } else {
            self.navigateToHome()
        }
    }
    
    func alertLogin() {
        let alert = UIAlertController(title: "Ops!", message: "E-mail e senha incorretos.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func navigateToHome() {
       let homeViewController = HomeViewController()
       self.navigationController?.pushViewController(homeViewController, animated: true)
   }
    
    @objc func navigateToRegister() {
        let registerViewController = RegisterViewController()
        registerViewController.delegate = self
        self.navigationController?.present(registerViewController, animated: true)
    }
}

extension LoginViewController: SendUserDataDelegate {
    func createUser() {
        decoder()
    }
}
