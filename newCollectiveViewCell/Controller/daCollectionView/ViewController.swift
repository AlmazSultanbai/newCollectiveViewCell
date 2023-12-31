//
//  ViewController.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 9/7/23.
//

import UIKit
import SnapKit


// добавить тайтл и кустом таб бар

class ViewController: UIViewController {
    
    private lazy var collView: UICollectionView = {
        var flowLayout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        //view.
        return view
    }()
    
    var movieObject = MovieData()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Action"
        setupUI() //зачем прописывать отдельно
        collectonViewConfigure()
    }
    private func setupUI() {
        view.addSubview(collView)
        collView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    //прописался
    private func collectonViewConfigure() {
        collView.dataSource = self
        collView.delegate = self
        collView.register(
            CustomCollectionViewCell.self,
            forCellWithReuseIdentifier: CustomCollectionViewCell().id
        )
    }
}



extension ViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        movieObject.movies.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CustomCollectionViewCell().id,
            for: indexPath
        ) as! CustomCollectionViewCell
        
        let model = movieObject.movies[indexPath.row]
        cell.imageMovie.image = model.imageMovie
        cell.titleName.text = model.titleName
        cell.descriptionMovie.text = model.descriptionName
        return cell
    }
}


extension ViewController : UICollectionViewDelegate {
    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
    ) {
        let vc = SecondViewController()
        
        let model = movieObject.movies[indexPath.row]
        vc.imageMovie.image = model.imageMovie
        vc.titleName.text = model.titleName
        vc.descriptionMovie.text = model.descriptionName
        vc.item = model
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2 - 20, height: 320 + 10)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return 0
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        return .init(top: 0, left: 10, bottom: 10, right: 10)
    }
}
