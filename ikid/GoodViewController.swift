//
//  GoodViewController.swift
//  ikid
//
//  Created by 李乐思 on 5/6/22.
//

import UIKit

class GoodViewController: UIViewController {
    
    var goodImage1 = "Image jokes 1"
    var goodImage2 = "Image jokes 2"

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var goodClickNextJoke: UIButton!
    @IBOutlet weak var goodBackHome: UIButton!
    
    
    
    @IBAction func goodNextJoke(_ sender: Any) {
        imageView.image = UIImage(named:goodImage2)
        UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
            goodBackHome.isHidden = false
            goodClickNextJoke.isHidden = true
        
    }
    
    @IBAction func backToHome(_ sender: Any) {
        imageView.image = UIImage(named:goodImage1)
        
        UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        
        goodBackHome.isHidden = true
        goodClickNextJoke.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goodBackHome.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
