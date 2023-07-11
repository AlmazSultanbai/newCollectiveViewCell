//
//  ThirthSecondViewController.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 11/7/23.
//

import UIKit

class ThirthSecondViewController: UIViewController {
    
    var item: MovieModel? = nil
    
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
    //добавили кнопку
    var alertButton: UIButton = {
        let view = UIButton(frame: CGRect(x: 50, y: 750, width: 80, height: 50))
        view.setTitle("Buy Button3", for: .normal)
        view.backgroundColor = .blue
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.addTarget(self, action: #selector(buttonClick(sender:)), for: .touchUpInside)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        imageMovie.contentMode = .scaleToFill
        titleName.textAlignment = .center
        descriptionMovie.textAlignment = .center
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(imageMovie)
        imageMovie.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(250)
        }
        view.addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.top.equalTo(imageMovie.snp.bottom).offset(15)
            make.horizontalEdges.equalToSuperview().inset(30)
            
        }
        view.addSubview(descriptionMovie)
        descriptionMovie.snp.makeConstraints { make in
            make.top.equalTo(titleName.snp.bottom).offset(15)
            make.horizontalEdges.equalToSuperview().inset(30)
        }
        // кнстрнт кнопки
        view.addSubview(alertButton)
        alertButton.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(40)
            make.bottom.equalToSuperview().offset(-110)
        }
    }
    //клик
    @objc private func buttonClick(sender:UIButton) {
        let bottomSheet = HomeBuyMovieViewController()
        if let sheet = bottomSheet.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 15
        }
        
        bottomSheet.imageMovie.image = item?.imageMovie
        bottomSheet.titleName.text = item?.titleName
        bottomSheet.descriptionMovie.text = item?.descriptionName
        present(bottomSheet, animated: true)
    }
        
    }
