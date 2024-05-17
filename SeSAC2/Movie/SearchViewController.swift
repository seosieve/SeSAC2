//
//  SearchViewController.swift
//  SeSAC2
//
//  Created by 서충원 on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchResultLabel: UILabel!
    @IBOutlet var searchImageView: UIImageView!
    @IBOutlet var searchNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func setViews() {
        self.view.backgroundColor = .black
        
        searchTextField.placeholder = "드라마를 검색해보세요."
        searchTextField.layer.masksToBounds = true
        searchTextField.layer.cornerRadius = 10
        searchTextField.layer.borderWidth = 2
        searchTextField.layer.borderColor = UIColor.gray.cgColor
        
        searchResultLabel.font = .systemFont(ofSize: 16)
        searchResultLabel.textColor = .white
        
        searchImageView.contentMode = .scaleAspectFill
        searchImageView.layer.masksToBounds = true
        searchImageView.layer.cornerRadius = searchImageView.bounds.width / 2
        searchImageView.layer.borderWidth = 6
        searchImageView.layer.borderColor = UIColor.yellow.cgColor
        
        searchNameLabel.text = "드라마 검색 결과를 찾았습니다. \n제목은 마스크걸 입니다."
        searchNameLabel.numberOfLines = 2
        searchNameLabel.textColor = .white
        searchNameLabel.font = .systemFont(ofSize: 16, weight: .medium)
        searchNameLabel.textAlignment = .center
    }
    
    
    
    @IBAction func textFieldReturnTapped(_ sender: UITextField) {
        if let text = sender.text {
            searchResultLabel.text = "\(text)라고 입력했습니다."
        }
    }
}
