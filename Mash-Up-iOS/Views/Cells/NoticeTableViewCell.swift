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
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var durationLabel: UILabel!
    @IBOutlet private var addressLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    
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
        
        if let date = notice.startAt?.convertToDate(),
            let duration = notice.duration.convertToTime() {
            dateLabel.text = date.formattedDate
            durationLabel.text = calculateDuration(startDate: date, duration: duration)
        }
        
        addressLabel.text = notice.address1 + " " + notice.address2
        descriptionLabel.text = notice.description
        
        print(notice.description)
    }
}

extension NoticeTableViewCell {
    private func calculateDuration(startDate: Date, duration: Date) -> String {
        let durationComponents = Calendar(identifier: .gregorian).dateComponents([.hour, .minute], from: duration)
        guard let endDate = Calendar(identifier: .gregorian).date(byAdding: durationComponents, to: startDate) else { return "" }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        
        let durationString = formatter.string(from: startDate) + " - " + formatter.string(from: endDate)
        
        return durationString
    }
}
