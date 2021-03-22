//
//  TimeLineCollectionViewCell.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/20/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import UIKit

class TimeLineCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var desLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func bindData(obj: DataModel) {
        titleLbl.text = obj.title
        desLbl.text = obj.sapo
        if let url = URL(string: obj.avatar) {
            avatarImg.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "300px-Flag_of_Vietnam.svg"))
        }
    }
}
