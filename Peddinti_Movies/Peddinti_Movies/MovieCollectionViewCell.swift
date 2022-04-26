//
//  MovieCollectionViewCell.swift
//  Peddinti_Movies
//
//  Created by Sai Lavanya Peddinti on 4/26/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var movieCollectionView: UIImageView!
    
    
    func assignMovie(with movie:Movies){
               movieCollectionView.image = movie.image
           }
}
