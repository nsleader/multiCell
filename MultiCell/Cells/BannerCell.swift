//
//  BannerCell.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 29.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import UIKit

class BannerCell: UITableViewCell, CellPresentable {
    
    static var cellID: String = "BannerCell"
    
    @IBOutlet weak var adLabel: UILabel!
    
    func setup(withCellModel cellModel: CellModel) {
        let model: BannerItem = getModel(fromCellModel: cellModel)
        adLabel.text = model.adTitle
    }
    
}
