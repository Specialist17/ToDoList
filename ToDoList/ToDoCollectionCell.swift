//
//  ToDoCollectionCell.swift
//  ToDoList
//
//  Created by Fernando on 6/23/17.
//  Copyright © 2017 Specialist. All rights reserved.
//

import UIKit

class ToDoCollectionCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    func configureCell(){
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath)

        return cell
    }
}
