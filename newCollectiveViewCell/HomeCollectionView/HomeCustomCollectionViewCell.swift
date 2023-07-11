//
//  HomeCustomCollectionViewCell.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 11/7/23.
//

import UIKit
import SnapKit

class HomeCustomCollectionViewCell: UICollectionViewCell {
    
    let id = "HomeCustomCollectionViewCell"
    
    lazy var imageMovie: UIImageView = {
        let view = UIImageView()
        return view
    }()
     lazy var titleName: UILabel = {
        let view = UILabel()
        return view
    }()
     lazy var descriptionMovie: UILabel = {
        let view = UILabel()
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureUI()
       setupUI()
    }
    private func configureUI() {
        imageMovie.contentMode = .scaleToFill
        titleName.textAlignment = .center
        descriptionMovie.textAlignment = .center
        
    }
    private func setupUI() {
        self.addSubview(imageMovie)
        imageMovie.snp.makeConstraints{ make in
            make.top.horizontalEdges.equalToSuperview().inset(10)
            make.width.equalTo(150)
            make.height.equalTo(250)
        }
        self.addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.top.equalTo(imageMovie.snp.bottom).offset(15)
            make.horizontalEdges.equalToSuperview().inset(30)
            
        }
        self.addSubview(descriptionMovie)
        descriptionMovie.snp.makeConstraints { make in
            make.top.equalTo(titleName.snp.bottom).offset(15)
            make.horizontalEdges.equalToSuperview().inset(30)
        }
    }
    //func getData(movie: MovieModel)
}
