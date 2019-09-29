//
//  SearchResultCell.swift
//  MyPodCastApp
//
//  Created by Lloyd Blake on 28/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {
    @IBOutlet weak var artworkImageView: UIImageView!
    @IBOutlet weak var podcastTitleLabel: UILabel!
    @IBOutlet weak var podcastAuthorLabel: UILabel!
    
    
    func configure(with searchResult: SearchResultViewModel){
        podcastTitleLabel.text = searchResult.title
        podcastAuthorLabel.text = searchResult.author
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        backgroundColor = Theme.Colors.gray4
        backgroundView = UIView()
        backgroundView?.backgroundColor = Theme.Colors.gray4
        
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = Theme.Colors.gray3
        
        podcastTitleLabel.textColor = Theme.Colors.gray0
        podcastAuthorLabel.textColor = Theme.Colors.gray1
    
    
    }
    
}
