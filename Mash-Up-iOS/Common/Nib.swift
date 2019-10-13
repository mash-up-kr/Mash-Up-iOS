//
//  Nib.swift
//  Mash-Up-iOS
//
//  Created by gaon on 14/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

enum Nib: String {
    case NoticeTableViewCell
}

extension UITableView {
    func register(nib: Nib) {
        register(UINib(nibName: nib.rawValue, bundle: nil), forCellReuseIdentifier: nib.rawValue)
    }
}

protocol NibLoading {
    associatedtype CustomNibType
    
    static func fromNib(nib: Nib) -> CustomNibType?
}

extension NibLoading {
    static func fromNib(nib: Nib) -> Self? {
        guard let view = UINib(nibName: nib.rawValue, bundle: nil)
            .instantiate(withOwner: self, options: nil).first as? Self else {
                assertionFailure("Nib not found")
                return nil
        }
        
        return view
    }
    
    func view(fromNib nib: Nib) -> UIView? {
        return UINib(nibName: nib.rawValue, bundle: nil)
            .instantiate(withOwner: self, options: nil).first as? UIView
    }
}
