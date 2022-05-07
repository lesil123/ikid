//
//  DadViewController.swift
//  ikid
//
//  Created by 李乐思 on 5/6/22.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var dadClickNextJokes: UIButton!
    @IBOutlet weak var dadJokes: UILabel!
    @IBOutlet weak var dadBackHome: UIButton!


    var dadJokesChange = ["Wife: I'm pregnant Dad: Hi pregnant, I'm dad. Wife: No, you're not.", "My wife gets angry that I keep introducing her as my ex-girlfriend.", "It takes guts to be an organ donor."]
   // var dadPunchlines = ["Mount Runshmore", "To be honest, I didn't know she sold flowers"]
    var dadIndex = 0

    @IBAction func dadNextJokes(_ sender: Any) {
        dadIndex += 1
        dadJokes.text = dadJokesChange[dadIndex]

        UIView.transition(with: dadJokes, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)

        dadBackHome.isHidden = true
        
        if dadIndex == dadJokesChange.count - 1 {
            dadBackHome.isHidden = false
            dadClickNextJokes.isHidden = true
        }
        
        
    }
    

    @IBAction func dadBackToHome(_ sender: Any) {
        dadIndex = 0
        dadJokes.text = dadJokesChange[dadIndex]
        dadBackHome.isHidden = true
        dadClickNextJokes.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dadBackHome.isHidden = true
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
