//
//  ViewController.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var characters:[Characters] = []
    
    private var collectionView: UICollectionView?
    private var tableView: UITableView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        configureTableView()
        fetchCharacters { characters in
            if let characters = characters {
                self.characters = characters
                
                DispatchQueue.main.async {
                    self.tableView?.reloadData()
                }
            }
        }
        
        

    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView?.frame = CGRect(x: 5, y: 50, width: view.frame.size.width - 10, height: 200)
        tableView?.frame = CGRect(x: 10, y: 300, width: view.frame.size.width - 20, height: view.frame.size.height - 300)
    }
    
    
    
    
    func configureTableView() {
        
        tableView = UITableView(frame: .zero, style: .plain)
        guard let tableView = tableView else {
            return
        }

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ElementTableViewCell.self, forCellReuseIdentifier: ElementTableViewCell.identifier)
        view.addSubview(tableView)
    }
    
    
    func configureCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: (view.frame.size.width / 3) - 4, height: (view.frame.size.width / 3) - 4)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        guard let collectionView = collectionView else {
            return
        }
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        collectionView.register(ElementCollectionViewCell.self, forCellWithReuseIdentifier: ElementCollectionViewCell.identifier)
        view.addSubview(collectionView)
    }


}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    //CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ElementCollectionViewCell.identifier, for: indexPath) as! ElementCollectionViewCell
        cell.setTextOfLabel(text: "Welcome")
        return cell
    }
    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    //TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return characters.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ElementTableViewCell.identifier, for: indexPath) as! ElementTableViewCell
        
        cell.configureImageView(imageURL: characters[indexPath.row].image)
        cell.configureLabel(text: characters[indexPath.row].name)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableDetailController = TableDetailViewController()
        tableDetailController.characters = characters[(tableView.indexPathForSelectedRow?.row)!]
        navigationController?.pushViewController(tableDetailController, animated: true)
    }
    

}
