//
//  TableDetailViewController.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

class TableDetailViewController: UIViewController {
    
    var characters: Characters?
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 20.0
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.orange.cgColor
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
    private let genderLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubViews()
        view.backgroundColor = .yellow
        
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myImageView.frame = CGRect(x: 10, y: 45, width: view.frame.size.width - 20, height: view.frame.size.width - 20)
        nameLabel.frame = CGRect(x: 10, y: view.frame.size.width + 65, width: view.frame.size.width - 20, height: 80)
        statusLabel.frame = CGRect(x: 10, y: view.frame.size.width + 155, width: view.frame.size.width - 20, height: 80)
        genderLabel.frame = CGRect(x: 10, y: view.frame.size.width + 245, width: view.frame.size.width - 20, height: 80)
    }
    
    
    
    func configureLabels(label:UILabel){
        label.font = .systemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = .red
        label.backgroundColor = .white
        label.numberOfLines = 2
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.orange.cgColor
        
    }
    
    func configureSubViews(){
        view.addSubview(myImageView)
        view.addSubview(nameLabel)
        view.addSubview(genderLabel)
        view.addSubview(statusLabel)
        configureLabels(label: nameLabel)
        configureLabels(label: statusLabel)
        configureLabels(label: genderLabel)
        
        myImageView.downloaded(from: characters?.image ?? "")
        nameLabel.text = "Name : \(characters?.name ?? "Nil")"
        genderLabel.text = "Gender : \(characters?.gender ?? "Nil")"
        statusLabel.text = "Status : \(characters?.status ?? "Nil")"

    }

}
