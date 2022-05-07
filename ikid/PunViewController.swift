//
//  PunViewController.swift
//  ikid
//
//  Created by 李乐思 on 5/3/22.
//

import UIKit

class PunViewController: UIViewController {
    
    
    @IBOutlet weak var punClickNextJoke: UIButton!
    @IBOutlet weak var punJokes: UILabel!
    @IBOutlet weak var punBackHome: UIButton!
    
    var punJokesChange = ["What rock group has four men that don't sing?", "My wife complains I don't buy her flowers","Dad, can I eat the cake in the fridge?"]
    var punPunchlines = ["Mount Runshmore", "To be honest, I didn't know she sold flowers", "Sure, but the dining room would probably be more comfortable"]
    var punIndex = 0
    
    
    @IBAction func punNextJoke(_ sender: Any) {
        punIndex += 1
        punJokes.text = punJokesChange[punIndex]
        
        UIView.transition(with: punJokes, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
        punBackHome.isHidden = false
        
        if punIndex == punJokesChange.count - 1 {
            punClickNextJoke.isHidden = true
        }
        
    }
    
    //改掉punviewcontrollerone variable的东西
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "punPunchline" {
            let punPunchlinePage = segue.destination as! PunViewControllerOne
            punPunchlinePage.punPunchLineJokes = punPunchlines[punIndex]
        }
    }
    
    
    @IBAction func punHomePage(_ sender: Any) {
        punIndex = 0
        punJokes.text = punJokesChange[punIndex]
        punBackHome.isHidden = true
        punClickNextJoke.isHidden = false
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            punBackHome.isHidden = true
            // Do any additional setup after loading the view.
        }
    

}
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


