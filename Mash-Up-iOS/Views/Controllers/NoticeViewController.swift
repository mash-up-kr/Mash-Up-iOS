//
//  NoticeViewController.swift
//  Mash-Up-iOS
//
//  Created by gaon on 13/10/2019.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import UIKit

final class NoticeViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(nib: .NoticeTableViewCell)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension NoticeViewController: UITableViewDelegate {
    
}

extension NoticeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withClass: NoticeTableViewCell.self, for: indexPath) as? NoticeTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}
