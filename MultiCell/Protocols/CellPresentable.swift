//
//  CellPresentable.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 26.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import UIKit

protocol CellPresentable {
    
    static var cellID: String { get }
    
    func setup(withCellModel cellModel: CellModel)
    func getModel<ModelType: Model>(fromCellModel cellModel: CellModel) -> ModelType
}

extension CellPresentable {
    
    func getModel<ModelType: Model>(fromCellModel cellModel: CellModel) -> ModelType {
        guard let model: ModelType = cellModel.model() else {
            fatalError("Model does not match of type '\(ModelType.self)'")
        }
        return model
    }
    
}
