//
//  MovieTableViewController.swift
//  MovieListApp
//
//  Created by Shun-Ching, Chou on 2019/4/8.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movies: [Movie] = [Movie(name: "每天回家老婆都在裝死", image: "每天回家老婆都在裝死", year: "2018", type: MovieType.MOVIE), Movie(name: "我想吃掉你的胰臟", image: "我想吃掉你的胰臟", year: "2017", type: MovieType.MOVIE), Movie(name: "跨越8年的新娘", image: "跨越8年的新娘", year: "2017", type: MovieType.MOVIE), Movie(name: "3年A組-今から皆さんは、人質です", image: "3年A組-今から皆さんは、人質です", year: "2019", type: MovieType.DRAMA), Movie(name: "初めて恋をした日に読む話", image: "初めて恋をした日に読む話", year: "2019", type: MovieType.DRAMA), Movie(name: "スキャンダル専門弁護士QUEEN", image: "スキャンダル専門弁護士QUEEN", year: "2019", type: MovieType.DRAMA)]

    //    var movies: [Movie] = [Movie(name: "每天回家老婆都在裝死", image: "每天回家老婆都在裝死", year: "2018"), Movie(name: "我想吃掉你的胰臟", image: "我想吃掉你的胰臟", year: "2017"), Movie(name: "跨越8年的新娘", image: "跨越8年的新娘", year: "2017")]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        movies.shuffle()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row]
        
        // Subtitle
//        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
//        cell.textLabel?.text = movies[row].name
//        cell.detailTextLabel?.text = movies[row].year
//        cell.imageView?.image = UIImage(named: movies[row].image)
        
        if movie.type == .DRAMA {
            // DramaTableViewCell
            let cell = tableView.dequeueReusableCell(withIdentifier: "dramaCell", for: indexPath) as! DramaTableViewCell
            cell.dramaImageView.image = UIImage(named: movie.image)
            cell.nameLabel.text = movie.name
            return cell
            
        } else {
            // MovieTableViewCell
            let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
            cell.movieImageView.image = UIImage(named: movie.image)
            cell.nameLabel.text = movie.name
            cell.yearLabel.text = movie.year
            return cell
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let controller = segue.destination as? MovieDetailViewController, let row = tableView.indexPathForSelectedRow?.row {
            controller.movie = movies[row]
            
        }
    }
 

}
