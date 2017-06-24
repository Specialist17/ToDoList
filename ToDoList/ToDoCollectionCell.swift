//
//  ToDoCollectionCell.swift
//  ToDoList
//
//  Created by Fernando on 6/23/17.
//  Copyright © 2017 Specialist. All rights reserved.
//

import UIKit

class ToDoCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
    }
    
    func configureCell(){
        
    }
    var viewController = UIViewController()
}

extension ToDoCollectionCell: UITableViewDelegate, UITableViewDataSource {
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(tableView.superview?.superview?.layoutSubviews() ?? "no funciona")
        
        
        
        if let vc =  UIApplication.shared.delegate?.window??.rootViewController?.childViewControllers[0] {
            
            viewController = vc
            var presented = vc
            
            viewController.performSegue(withIdentifier: "toDoView", sender: nil)
            
            while let top = presented.presentedViewController {
                presented = top
                viewController = top
            }
        }
        
    }
    
}
