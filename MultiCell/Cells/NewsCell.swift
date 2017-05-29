//
//  NewsCell.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 26.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell, CellPresentable {
    
    static var cellID: String = "NewsCell"

    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(withCellModel cellModel: CellModel) {
        let model: NewsItem = getModel(fromCellModel: cellModel)
        titleLabel.text = model.title
    }
    
}
