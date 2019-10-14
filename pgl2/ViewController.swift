//
//  ViewController.swift
//  pgl2
//
//  Created by Luiz Fernando França on 29/09/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let funcionalidadeCellId = "FuncionalidadeCell"
    
    let cardView: UIView = {
        let card = UIView()
        card.backgroundColor = .red
        card.layer.cornerRadius = 25
        return card
    }()
    
    let cardNameLabel: UILabel = {
        let name = UILabel()
        name.text = "Pagglo Payseed"
        name.textColor = .white
        return name
    }()
    
    let cardBackground: UIView = {
        let background = UIView()
        background.backgroundColor = .black
        return background
    }()
        
    let funcionalidadesCV = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLayoutSubviews() {
        self.funcionalidadesCV.contentSize = self.funcionalidadesCV.frame.size;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funcionalidadesCV.register(FuncionalidadeCell.self, forCellWithReuseIdentifier: funcionalidadeCellId)
        funcionalidadesCV.backgroundColor = .yellow
        funcionalidadesCV.delegate = self
        funcionalidadesCV.dataSource = self
        
        view.addSubview(cardBackground)
        view.addSubview(funcionalidadesCV)
        
        cardBackground.addSubview(cardView)
        
        cardView.addSubview(cardNameLabel)
        
        cardBackground.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.centerYAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        cardView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 20, paddingBottom: 20, paddingRight: 20, width: 200, height: 100)
        
        cardNameLabel.anchor(top: nil, left: cardView.leftAnchor, bottom: cardView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 20, paddingRight: 0, width: 0, height: 0)
        
        
        funcionalidadesCV.anchor(top: cardBackground.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: funcionalidadeCellId, for: indexPath) as! FuncionalidadeCell
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
    
}
