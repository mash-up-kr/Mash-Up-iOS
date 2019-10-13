//
//  Storyboard.swift
//  Mash-Up-iOS
//
//  Created by gaon on 13/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case Notice

    func instantiate<VC: UIViewController>(_: VC.Type) -> VC {
        guard let viewController = UIStoryboard(name: self.rawValue, bundle: nil)
            .instantiateViewController(withIdentifier: VC.storyboardIdentifier) as? VC else {
                fatalError("Couldn't instantiate \(VC.storyboardIdentifier) from \(self.rawValue)")
            }

        return viewController
    }
}
