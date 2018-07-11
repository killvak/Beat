//
//  HomePageCell.swift
//  El_Baat
//
//  Created by admin on 7/11/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class HomePageCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var eventImageView: UIImageViewX!
    @IBOutlet weak var aboutLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(_ data : EventsData) {
        self.eventImageView.image = UIImage(named: data.image)
        titleLbl.text = data.title
        dateLbl.text = data.date
        aboutLbl.text  = data.details
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
