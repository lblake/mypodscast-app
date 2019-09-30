//
//  SearchViewController.swift
//  MyPodCastApp
//
//  Created by Lloyd Blake on 28/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    
    
    var recommendedPodcasts: [SearchResultViewModel] = [
        SearchResultViewModel(imageURL: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/95/42/da/9542da30-eaaf-ead9-ac1e-0be9da1931ab/source/200x200bb.png"), title: "The Dropout", author: "ABC News"),
        SearchResultViewModel(imageURL: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/ce/3d/b4/ce3db4c8-86ba-29ca-8cb0-4cd68388efeb/source/200x200bb.png"), title: "Dirty John", author: "L.A. Times | Wondery")
    ]
    
    
    private var results: [SearchResultViewModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = Theme.Colors.gray4
        tableView.separatorColor = Theme.Colors.gray3
        tableView.separatorInset = .zero

        results = recommendedPodcasts

        
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let cell: SearchResultCell = tableView.dequeue(for: indexPath)
        let result = results[indexPath.row]
        cell.configure(with: result)

        return cell
    }
    

   
}
