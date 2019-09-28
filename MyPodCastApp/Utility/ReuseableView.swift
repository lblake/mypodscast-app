//
//  ReuseableView.swift
//  MyPodCastApp
//
//  Created by Lloyd Blake on 28/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

protocol ReusableView {
    static var reuseIdentifier: String { get }
}

extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
   extension UITableViewCell: ReusableView { }


