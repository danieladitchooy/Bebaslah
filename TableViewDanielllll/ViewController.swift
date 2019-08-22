//
//  ViewController.swift
//  TableViewDanielllll
//
//  Created by Daniel Aditya Kurniawan on 21/08/19.
//  Copyright © 2019 Daniel Aditya Kurniawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var fotoTemen = ["Temen1","Temen2"]
    var namaTemen = ["Edvyn","Hadi"]
    var lastOnline =
        [",",","]

    @IBOutlet weak var tableViewCell: TableViewCell!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fotoTemen.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cells") as! TableViewCell
    
    cell.gambar.image = UIImage(named: fotoTemen[indexPath.row])
    cell.lblName.text = namaTemen[indexPath.row]
    
    return cell
    }
    
    func checkableTableViewCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CheckableTableViewCell)!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
