//
//  knockKnockViewController.swift
//  ikid
//
//  Created by 李乐思 on 5/6/22.
//

import UIKit

class knockKnockViewController: UIViewController {
    var knockLines = ["Fun is not something easy to have. Press Next to keep seeking your fun:)", "This is my longest joke and I am glad you get here. Last step: Click Next and trust me, you will get nothing but fun:)", "FUN!!"]
    var knockIndex = 0
    
    @IBOutlet weak var knockLine: UILabel!
    
    @IBOutlet weak var knockNext: UIButton!
    
    @IBOutlet weak var knockBack: UIButton!
    
    
    @IBAction func knockNextLine(_ sender: Any) {
        
        knockIndex += 1
        knockLine.text = knockLines[knockIndex]
        
        UIView.transition(with: knockLine, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
        if knockIndex == knockLines.count - 1 {
            knockNext.isHidden = true
        }
    }
    
    @IBAction func knockToBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
