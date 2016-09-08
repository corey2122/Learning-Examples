//
//  ViewController.swift
//  P-FoodCollectionView
//
//  Created by CJS  on 7/21/16.
//  Copyright © 2016 CJS . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //create array
    //load collection view from array
    //add + button 
    //add IBAction and connect it to + button
    //add element to array via button click - reload collection view when button is clicked and after you add element to array

    
    @IBOutlet weak var collectionView: UICollectionView!
    let dataSouce = DataSource()
    let identifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK:- UICollectionViewDataSource Delegate
extension ViewController: UICollectionViewDataSource {
    
  
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return dataSource.groups.count
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.numbeOfRowsInEachGroup(section)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identifier,forIndexPath:indexPath) as! FruitCell
        
        let fruit = fruit[indexPath.row]
        
        let name = fruits.name!
        
        cell.imageView.image = UIImage(named: name.lowercaseString)
        
        return cell
    }
}


 