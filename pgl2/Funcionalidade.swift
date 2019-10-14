//
//  Funcionalidade.swift
//  pgl2
//
//  Created by Luiz Fernando França on 13/10/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit

class Funcionalidade: UICollectionViewCell {
    
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
        iv.backgroundColor = .black
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Funcionalidade"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    func setupViews() {
        addSubview(imageView)
        addSubview(nameLabel)
        
        imageView.frame = CGRect(x:0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
    }
    
}


