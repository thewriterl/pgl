//
//  Banner.swift
//  pgl2
//
//  Created by Luiz Fernando França on 13/10/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit


class Banner: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "frozen")
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .red
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
    }()
    
    func setupViews() {
        addSubview(imageView)
        
        imageView.frame = CGRect(x:0, y: 0, width: frame.width, height: frame.width)
    }
    
}



