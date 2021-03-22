//
//  HomeCollectionViewCell.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/19/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import UIKit
import SDWebImage

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func bindData(obj: DataModel) {
        titleLbl.text = obj.title
        descriptionLbl.text = obj.sapo
        if let url = URL(string: obj.avatar) {
            avatarImg.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "300px-Flag_of_Vietnam.svg"))
        }
    }
}
