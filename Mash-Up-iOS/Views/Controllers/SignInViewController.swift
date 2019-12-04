//
//  SignInViewController.swift
//  Mash-Up-iOS
//
//  Created by gaon on 14/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

final class SignInViewController: UIViewController {
    
    @IBOutlet private var emailTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func signIn(_ sender: UIButton) {
        guard let email = emailTextField.text,
            let password = passwordTextField.text else { return }
        MashUpProvider.authToken(email: email, password: password, completion: { [weak self] authToken in
            guard let self = self else { return }
            
            let noticeViewController = Storyboard.Notice.instantiate(NoticeViewController.self)
            self.present(noticeViewController, animated: true, completion: nil)
        }, failure: { error in
            print(error.localizedDescription)
        })
    }
}

