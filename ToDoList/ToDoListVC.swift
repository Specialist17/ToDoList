//
//  ViewController.swift
//  ToDoList
//
//  Created by Fernando on 6/22/17.
//  Copyright © 2017 Specialist. All rights reserved.
//

import UIKit



class ToDoListVC: UIViewController, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var toDoCollectionView: UICollectionView!
    
    fileprivate var collectionViewLayout: HorizontalScroll!
    
    var toDos: [ToDo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        toDoCollectionView.dataSource = self
        toDoCollectionView.delegate = self
        
        toDoCollectionView.showsHorizontalScrollIndicator = false
        toDoCollectionView.isPagingEnabled = false
        
        self.collectionViewLayout = HorizontalScroll.configureLayout(self.toDoCollectionView, itemSize: CGSize(width: toDoCollectionView.frame.width, height: toDoCollectionView.frame.height), minimumLineSpacing: 10)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
}


extension ToDoListVC : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toDoCollectionCell", for: indexPath) as? ToDoCollectionCell {
            cell.configureCell()
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
}

