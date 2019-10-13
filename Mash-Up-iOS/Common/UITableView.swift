//
//  UITableView.swift
//  Mash-Up-iOS
//
//  Created by gaon on 14/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeueReusableCell(withClass cell: UITableViewCell.Type, for indexPath: IndexPath) -> UITableViewCell {
        return dequeueReusableCell(withIdentifier: "\(cell.self)", for: indexPath)
    }
}
