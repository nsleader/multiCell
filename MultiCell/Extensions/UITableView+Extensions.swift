//
//  UITableView+Extensions.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 26.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import UIKit


extension UITableView {
    
    func dequeueReusableCell(withCellModel cellModel: CellModel, for indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: cellModel.cellIdentifier, for: indexPath)
        if let cell = cell as? CellPresentable {
            cell.setup(withCellModel: cellModel)
        } else {
            fatalError("Cell \(type(of: cell)) does not conform to protocol 'CellPresentable'")
        }
        return cell
    }
    
}
