//
//  ColorTableViewController.swift
//  SafeAreaDemo
//
//  Created by Andy Riordan on 2/27/18.
//  Copyright © 2018 Chemistree Apps LLC. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    private let cellReuseIdentifier = "reuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 120
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

        // This would prevent the system from taking the safe area into account when laying out
        // cells, resulting in cells stuck behind the navigation and tab bars
//        tableView.contentInsetAdjustmentBehavior = .never
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)

        cell.backgroundColor = UIColor.random

        return cell
    }

}

fileprivate extension UIColor {
    class var random: UIColor {
        return UIColor(hue: CGFloat(arc4random() % 256) / 256, saturation: 1, brightness: 1, alpha: 1)
    }
}

