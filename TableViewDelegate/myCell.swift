//
//  myCell.swift
//  TableViewDelegate
//
//  Created by Đoàn Minh Hoàng on 5/28/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit

protocol dataControllerProtocol {
    func sendInt(indexRow: Int)
}

class myCell: UITableViewCell {
    
    var delegate: dataControllerProtocol?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnClicked(_ sender: UIButton) {
        delegate?.sendInt(indexRow: self.tag)
    }
}
