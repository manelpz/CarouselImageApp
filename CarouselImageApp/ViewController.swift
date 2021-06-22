//
//  ViewController.swift
//  CarouselImageApp
//
//  Created by Emmanuel Lopez Guerrero on 21/06/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let imagesNamesArr: [String] = ["1","2","3", "4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
    }

//IBOutlet
    @IBOutlet var imageCollectionView: UICollectionView!
    
//System Functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesNamesArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellImage", for: indexPath) as! ImageCollectionViewCell
        
        cell.ImagePerCell.image = UIImage(named: imagesNamesArr[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        

        let screen = UIScreen.main.bounds
        return CGSize(width: screen.width, height: screen.height)
    }
    
    //to eliminate a frame beetween images 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }


    
}

