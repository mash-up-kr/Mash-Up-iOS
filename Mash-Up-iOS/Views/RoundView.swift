//
//  CircleView.swift
//  Mash-Up-iOS
//
//  Created by gaon on 14/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

final class RoundView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = bounds.height / 2
    }
}
