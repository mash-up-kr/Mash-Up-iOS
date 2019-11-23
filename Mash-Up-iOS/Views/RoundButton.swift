//
//  RoundButton.swift
//  Mash-Up-iOS
//
//  Created by gaon on 24/11/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

final class RoundButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        commonInit()
    }
    
    private func commonInit() {
        layer.cornerRadius = bounds.height / 2
    }
}
