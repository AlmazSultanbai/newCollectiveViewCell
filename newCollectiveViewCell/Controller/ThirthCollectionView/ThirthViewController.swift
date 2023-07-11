//
//  ThirthViewController.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 11/7/23.
//

import UIKit
import SnapKit




class ThirthViewController: UIViewController {
    
    private lazy var collView3: UICollectionView = {
        var flowLayout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        return view
    }()
    
    var movieObject = MovieData()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Comedy"
        
        setupUI() //зачем прописывать отдельно
        collectonViewConfigure()
    }
    private func setupUI() {
        view.addSubview(collView3)
        collView3.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
    }
    //прописался
    private func collectonViewConfigure() {
        collView3.dataSource = self
        collView3.delegate = self
        collView3.register(ThirthCustomCollectionViewCell.self, forCellWithReuseIdentifier: ThirthCustomCollectionViewCell().id)
    }
}
extension ThirthViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieObject.comedy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirthCustomCollectionViewCell().id, for: indexPath) as! ThirthCustomCollectionViewCell
        let model = movieObject.comedy[indexPath.row]
        cell.imageMovie.image = model.imageMovie
        cell.titleName.text = model.titleName
        cell.descriptionMovie.text = model.descriptionName
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2 - 20, height: 320 + 10)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ThirthSecondViewController()
        
        let model = movieObject.comedy[indexPath.row]
        vc.imageMovie.image = model.imageMovie
        vc.titleName.text = model.titleName
        vc.descriptionMovie.text = model.descriptionName
        vc.item = model
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
