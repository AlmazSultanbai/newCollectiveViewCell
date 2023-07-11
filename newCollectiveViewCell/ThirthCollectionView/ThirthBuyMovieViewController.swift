//
//  ThirthBuyMovieViewController.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 11/7/23.
//

import UIKit

class ThirthBuyMovieViewController: UIViewController {
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
        let view = UIButton(frame: CGRect(x: 120, y: 750, width: 140, height: 50))
        view.setTitle("Buy", for: .normal)
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
            make.top.equalToSuperview().offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(250)
        }
        view.addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.top.equalTo(imageMovie.snp.bottom).offset(10)
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
            make.bottom.equalToSuperview().inset(30)
        }
    }
    // Create the alert controller
    
   
         func showAlert() {
            let alert = UIAlertController(title: "Done!", message: "Now you have the opportunity to watch this movie", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "Ok", style: .default) { action in
                self.dismiss(animated: true)
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    //клик
    @objc private func buttonClick(sender:UIButton) {
        showAlert()
    }
        
    }

