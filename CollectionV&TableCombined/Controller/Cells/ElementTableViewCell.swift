//
//  ElementTableViewCell.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

class ElementTableViewCell: UITableViewCell {

    static let identifier = "ElementTableViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemYellow
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20)
        return label
        
    }()
    
    //INIT METHOD
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureContentView()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: .zero, left: .zero, bottom: 10, right: .zero))
        myImageView.frame = CGRect(x: 3, y: 3, width: contentView.frame.size.height - 6, height: contentView.frame.size.height - 6)
        myLabel.frame = CGRect(x: (contentView.frame.size.height - 6) + 10,
                               y: (contentView.frame.size.height / 2) - 10,
                               width: contentView.frame.size.width - (contentView.frame.size.height - 6) + 5,
                               height: 20)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configureContentView() {
        contentView.backgroundColor = .systemGray
        contentView.layer.masksToBounds = true
        contentView.layer.cornerRadius = 15.0
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.systemRed.cgColor

    }
    
    func configureImageView(imageURL:String){
        contentView.addSubview(myImageView)
        myImageView.downloaded(from: imageURL)
        
    }
    
    func configureLabel(text: String){
        myLabel.text = text
        contentView.addSubview(myLabel)
        
    }
    

}

