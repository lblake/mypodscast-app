//
//  SearchViewController.swift
//  MyPodCastApp
//
//  Created by Lloyd Blake on 28/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    private var suggestedResults: [SearchResultViewModel] = [
        SearchResultViewModel(title: "My Awesome Poadcast", author: "Ben.", artworkURL: nil),
        SearchResultViewModel(title: "Another Awesome Poadcast", author: "Ben.", artworkURL: nil),

    
    
    ]
    
    private var results: [SearchResultViewModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = Theme.Colors.gray4
        tableView.separatorColor = Theme.Colors.gray3
        tableView.separatorInset = .zero

        results = suggestedResults
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        
        
        let cell: SearchResultCell = tableView.dequeue(for: indexPath)
        let result = results[indexPath.row]
        cell.configure(with: result)

        return cell
    }
    

   
}
