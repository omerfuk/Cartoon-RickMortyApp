//
//  ElementCollectionViewCell.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

class ElementCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ElementCollectionViewCell"
    
    private let myImageView: UIImageView = {
       
        let imageView = UIImageView()
        
        return imageView
        
    }()
    
    private let myLabel: UILabel = {
       
        let label = UILabel()
        return label
        
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContentView()
        configureLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 4, y: 4, width: contentView.frame.size.width - 8, height: contentView.frame.size.height * 0.75)
        myLabel.frame = CGRect(x: 4, y: (contentView.frame.size.height * 0.751) + 8, width: contentView.frame.size.width - 8, height: contentView.frame.size.height * 0.18)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()

        
    }
    
    func configureContentView(){
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        contentView.layer.masksToBounds = true
        contentView.layer.cornerRadius = 20.0
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.red.cgColor
        contentView.clipsToBounds = true
        contentView.backgroundColor = .lightGray
        
    }
    
    func configureImageView(imageURL: String) {
        
        myImageView.downloaded(from: imageURL)
        myImageView.clipsToBounds = true
        myImageView.contentMode = .scaleAspectFit
        
        
    }
    
    func configureLabel() {
        
        myLabel.font = .systemFont(ofSize: 15)
        myLabel.textAlignment = .center
        myLabel.textColor = .yellow
        
        
    }
    
    func setTextOfLabel(text: String){
        
        myLabel.text = text
    }
    
    func setImageOfCellImage(imageURL: String){
        myImageView.downloaded(from: imageURL)
    }
}
