//
//  ViewController.swift
//  MultiCell
//
//  Created by IVAN CHIRKOV on 26.05.17.
//  Copyright © 2017 IVAN CHIRKOV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cellModels: [CellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        for idx in 1..<10 {
            let cellModel = CellModel.news(NewsItem(title: "News \(idx)"))
            cellModels.append(cellModel)
            if idx % 3 == 0 {
                let cellModel = CellModel.banner(BannerItem(adTitle: "Ad"))
                cellModels.append(cellModel)
            }
        }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cellModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withCellModel: cellModel, for: indexPath)
        return cell
    }
    
}
