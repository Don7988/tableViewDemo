//
//  TableViewCelldesign.swift
//  tableViewDemo
//
//  Created by Jebin Ignatious on 14/10/22.
//

import UIKit

class TableViewCelldesign: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var labelForText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
