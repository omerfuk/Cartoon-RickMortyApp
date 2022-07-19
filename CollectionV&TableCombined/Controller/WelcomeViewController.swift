//
//  WelcomeViewController.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 19.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    private let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "rickMortyTitle")

        return imageView
        
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "rickMortyImage")
        return imageView
        
    }()
    
    
    private let startButton: UIButton = {
       
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20.0
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(startButtonClicked), for: .touchUpInside)
        button.setBackgroundImage(UIImage(named: "portal"), for: .normal)
        return button
        
    }()
    
    @objc func startButtonClicked(){
        
        
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureSubviews()
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        titleImageView.frame = CGRect(x: 20, y: 100, width: view.frame.size.width - 40, height: 100)
        logoImageView.frame = CGRect(x: 15, y: 200, width: view.frame.size.width - 30, height: view.frame.size.width * 0.9)
        startButton.frame = CGRect(x: 10, y: view.frame.size.height * 0.8, width: view.frame.size.width - 20, height: 100)
    }
    
    
    func configureSubviews(){
        view.addSubview(startButton)
        view.addSubview(titleImageView)
        view.addSubview(logoImageView)
    }
    


}
