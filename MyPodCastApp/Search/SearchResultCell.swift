//
//  SearchResultCell.swift
//  MyPodCastApp
//
//  Created by Lloyd Blake on 28/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit
import Kingfisher


class SearchResultCell: UITableViewCell {
    @IBOutlet weak var artworkImageView: UIImageView!
    @IBOutlet weak var podcastTitleLabel: UILabel!
    @IBOutlet weak var podcastAuthorLabel: UILabel!
    
    
    func configure(with searchResult: SearchResultViewModel){
        
        
        podcastTitleLabel.text = searchResult.title
        podcastAuthorLabel.text = searchResult.author
        

        
        if let url = searchResult.imageURL{
            let options: KingfisherOptionsInfo = [
              .transition(.fade(0.5))
            ]
            artworkImageView.kf.setImage(with: url, options: options )
        }
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        podcastTitleLabel.text = nil
        podcastAuthorLabel.text = nil
        
        artworkImageView.kf.cancelDownloadTask()
        artworkImageView.image = nil
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        
        
        
        artworkImageView.layer.cornerRadius = 10
        artworkImageView.layer.masksToBounds = true
        
        backgroundColor = Theme.Colors.gray4
        backgroundView = UIView()
        backgroundView?.backgroundColor = Theme.Colors.gray4
        
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = Theme.Colors.gray3
        
        podcastTitleLabel.textColor = Theme.Colors.gray0
        podcastAuthorLabel.textColor = Theme.Colors.gray1
        
        artworkImageView.backgroundColor = Theme.Colors.purpleLight
    
    
    }
    
}
