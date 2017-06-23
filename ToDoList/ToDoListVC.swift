//
//  ViewController.swift
//  ToDoList
//
//  Created by Fernando on 6/22/17.
//  Copyright © 2017 Specialist. All rights reserved.
//

import UIKit

class ToDoListVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

//    @IBOutlet weak var toDoTableView: UITableView!
    @IBOutlet weak var toDoCollectionView: UICollectionView!
    
    var toDos: [ToDo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        toDoCollectionView.dataSource = self
        toDoCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toDoCollectionCell", for: indexPath) as? ToDoCollectionCell {
            
            cell.configureCell()
            return cell
        } else {
           
            
            return UICollectionViewCell()
        }

//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toDoCollectionCell", for: indexPath)
//        
//        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

}

