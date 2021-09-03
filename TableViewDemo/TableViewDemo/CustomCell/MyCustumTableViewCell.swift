//
//  MyCustumTableViewCell.swift
//  TableViewDemo
//
//  Created by Utkarsh Kumar Mishra on 02/09/21.
//

import UIKit

class MyCustumTableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(obj: MyCellModel) {
        if let imageName = obj.myImageNameString {
            myImageView.image = UIImage(named: imageName)
        }
        
        if let title = obj.titleString {
            myTitleLabel.text = title
        }
    }

}


