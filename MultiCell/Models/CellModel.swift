//
//  CellModel.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 29.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import Foundation

/// Describes all types of cells
enum CellModel {
    case news(NewsItem)
    case banner(BannerItem)
}

extension CellModel {
    
    var cellIdentifier: String {
        switch self {
        case .news(_): return NewsCell.cellID
        case .banner(_): return BannerCell.cellID
        }
    }
    
    func model<ModelType: Model>() -> ModelType? {
        switch self {
        case .news(let model): return model as? ModelType
        case .banner(let model): return model as? ModelType
        }
    }
    
}
