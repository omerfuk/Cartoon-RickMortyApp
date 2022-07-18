//
//  CollectionDetailViewController.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

class CollectionDetailViewController: UIViewController {
    
    var cartoons: Cartoon?
    
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
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
    private let yearLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
    private let episodesLabel: UILabel = {
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
        titleLabel.frame = CGRect(x: 10, y: view.frame.size.width + 65, width: view.frame.size.width - 20, height: 80)
        yearLabel.frame = CGRect(x: 10, y: view.frame.size.width + 155, width: view.frame.size.width - 20, height: 80)
        episodesLabel.frame = CGRect(x: 10, y: view.frame.size.width + 245, width: view.frame.size.width - 20, height: 80)
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
        view.addSubview(titleLabel)
        view.addSubview(yearLabel)
        view.addSubview(episodesLabel)
        configureLabels(label: titleLabel)
        configureLabels(label: yearLabel)
        configureLabels(label: episodesLabel)
        
        myImageView.downloaded(from: cartoons?.image ?? "")
        titleLabel.text = "Name : \(cartoons?.title ?? "Nil")"
        yearLabel.text = "Year : \(cartoons?.year ?? 0)"
        episodesLabel.text = "Status : \(cartoons?.creator[0] ?? "Nil")"

    }
    
    
    

    
    

}
