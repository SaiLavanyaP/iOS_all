//
//  MoviesViewController.swift
//  Peddinti_Movies
//
//  Created by Sai Lavanya Peddinti on 4/26/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return moviesArray.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
                
                cell.assignMovie(with: moviesArray[indexPath.row])
                
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            assignMovieDetails(index: indexPath)
        }
    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var movieYearLabel: UILabel!
    
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var moviesArray : [Movies] = []
    var title1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = title1
                collectionViewOutlet.delegate = self
                collectionViewOutlet.dataSource = self
    }
    
    func assignMovieDetails(index: IndexPath){
            movieNameLabel.text = "Movie Name : \(moviesArray[index.row].title)"
            movieRatingLabel.text = "Movie Rating : \(moviesArray[index.row].movieRating)"
            movieBoxOfficeLabel.text = "Box Office Collection : \(moviesArray[index.row].boxOffice)"
            movieYearLabel.text = "Movie Released Year : \(moviesArray[index.row].releasedYear)"
            moviePlotLabel.text = "Plot : \n\(moviesArray[index.row].moviePlot)"
            movieCastLabel.text = "Cast : \n"
            for i in (moviesArray[index.row].cast){
                movieCastLabel.text! += "\(i), "
            }
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
