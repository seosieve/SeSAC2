//
//  MovieViewController.swift
//  SeSAC2
//
//  Created by 서충원 on 5/16/24.
//

import UIKit

class MovieViewController: UIViewController {
    
    //@: Attribute IB: Interface Builder
    //outlet이나 action연결이 끊겼을 때 해결방법은 꼭 알고 넘어가기.
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var randomButton: UIButton!
    
    let bigNumber = Int.random(in: 1...2000)
    var text = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "무빙무빙"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .green
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.layer.shadowColor = UIColor.gray.cgColor
        titleLabel.layer.shadowOffset = CGSize(width: 4, height: 4)
        titleLabel.layer.shadowRadius = 3.0
        //default 0.0
        titleLabel.layer.shadowOpacity = 1.0
        titleLabel.layer.masksToBounds = false
        titleLabel.shadowColor = UIColor.purple
        titleLabel.shadowOffset = CGSize(width: 3, height: 3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        posterImageView.image = UIImage.수리남
        posterImageView.layer.masksToBounds = true
        posterImageView.layer.cornerRadius = (posterImageView.frame.width / 2)
        posterImageView.layer.borderWidth = 5
        posterImageView.layer.borderColor = UIColor.cyan.cgColor
        posterImageView.contentMode = .scaleAspectFit
        
        randomButton.setTitle("추천 하기", for: .normal)
        randomButton.setTitle("추천 하기기기", for: .highlighted)
        randomButton.setTitleColor(.darkGray, for: .normal)
        randomButton.setTitleColor(.magenta, for: .highlighted)
        randomButton.backgroundColor = .lightGray
    }
    
    @IBAction func randomㅁㅁㅁButtonClicked(_ sender: UIButton) {
        text.toggle()
        let title = (text ? "마스크걸" : "무빙")
        print(title)
        let number = Int.random(in: 1...2000)
        titleLabel.text = "\(title), \(number), \(bigNumber)"
//        let image = (text ? UIImage.고려거 : "무빙")
        
        let a = UIImage.고려거란전쟁
        
//        posterImageView.image = image
        
        
        
    }
}
