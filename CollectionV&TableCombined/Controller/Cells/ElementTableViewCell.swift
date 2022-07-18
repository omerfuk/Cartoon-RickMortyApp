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
        return imageView
        
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    
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
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configureContentView() {
        
        contentView.layer.masksToBounds = true
        contentView.layer.cornerRadius = 15.0
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.systemRed.cgColor

        
    }
    

}
