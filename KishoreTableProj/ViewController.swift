//
//  ViewController.swift
//  KishoreTableProj
//
//  Created by Kishore Krishna M on 12/04/20.
//  Copyright © 2020 Kishore Krishna M. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var dataModel = ["Mango", "Apple" , "Grapes" , "Guava", "Orange"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "protoCell")!
        let dataModelrow = self.dataModel[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = dataModelrow
        cell.imageView?.image = UIImage(named: "Kishore")
        return cell
    }
    
    // row deletion
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataModel.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    //setting table header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Sample Table View"
    }
    


}

