//
//  MovieDetailViewController.swift
//  MovieListApp
//
//  Created by Shun-Ching, Chou on 2019/4/8.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movie: Movie?
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let movie = movie {
            imageView.image = UIImage(named: movie.image)
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
