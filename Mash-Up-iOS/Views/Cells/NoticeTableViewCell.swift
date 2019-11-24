//
//  NoticeTableViewCell.swift
//  Mash-Up-iOS
//
//  Created by gaon on 14/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

final class NoticeTableViewCell: UITableViewCell {

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 38, bottom: 10, right: 38))
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowRadius = 5
        contentView.layer.shadowOpacity = 0.2
        contentView.layer.shadowOffset = .zero
        contentView.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with notice: Notice) {
        titleLabel.text = notice.title
        authorLabel.text = notice.author.name
    }
}
