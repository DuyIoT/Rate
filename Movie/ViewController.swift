//
//  ViewController.swift
//  Movie
//
//  Created by admin on 9/24/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    @IBAction func changeIndex(_ sender: UISegmentedControl) {
        switch librarySegment.selectedSegmentIndex {
        case 0:
            dataMovie = libraryMovie
            movieTableView.reloadData()
        case 1:
            dataMovie = dataBook
            movieTableView.reloadData()
        default:
            break
        }
    }
    @IBOutlet weak var movieSearchBar: UISearchBar!
    
    @IBOutlet weak var librarySegment: UISegmentedControl!
    @IBOutlet weak var movieTableView: UITableView!
    var dataMovie: [Movie] = []
    var libraryMovie: [Movie] = []
    var dataBook: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        register()
        dataMovie = libraryMovie
        // Do any additional setup after loading the view, typically from a nib.
    }
    func initData() {
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 1.5))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 3.5))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 4.25))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 2.5))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 5))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 3))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 2.5))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 4))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 3))
        libraryMovie.append(Movie("Richar Flanagan", "The Narrow Road To The Deep North", "https://t3.gstatic.com/images?q=tbn:ANd9GcRsZBzdxEiayAM3q-yHCNgRudEZO9TQBMrIRwQNHPB84t4y9TJH", 3))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 8", "https://www.femalefirst.co.uk/image-library/square/500/f/fast-and-furious-8-1.jpg", 4.75))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 7", "https://www.gstatic.com/tv/thumb/v22vodart/10679969/p10679969_v_v8_av.jpg", 3.25))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 6", "https://www.gstatic.com/tv/thumb/v22vodart/9573130/p9573130_v_v8_bb.jpg", 2.5))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 8", "https://www.femalefirst.co.uk/image-library/square/500/f/fast-and-furious-8-1.jpg", 3))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 7", "https://www.gstatic.com/tv/thumb/v22vodart/10679969/p10679969_v_v8_av.jpg", 1.75))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 6", "https://www.gstatic.com/tv/thumb/v22vodart/9573130/p9573130_v_v8_bb.jpg", 2))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 8", "https://www.femalefirst.co.uk/image-library/square/500/f/fast-and-furious-8-1.jpg", 4))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 7", "https://www.gstatic.com/tv/thumb/v22vodart/10679969/p10679969_v_v8_av.jpg", 5))
        dataBook.append(Movie("Fat & Furious", "Fat & Furious 6", "https://www.gstatic.com/tv/thumb/v22vodart/9573130/p9573130_v_v8_bb.jpg", 3.25))
    }
    func register() {
        movieTableView.register(UINib(nibName: "MovieTableViewCell", bundle: nil), forCellReuseIdentifier: "MovieTableViewCell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataMovie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath)
            as? MovieTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = dataMovie[indexPath.row].title
        cell.contentLabel.text = dataMovie[indexPath.row].content
        let url = URL(string: dataMovie[indexPath.row].image)
        cell.backgroundImage.kf.setImage(with: url)
        cell.rateView.rating = Double(dataMovie[indexPath.row].rate)
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    
}

