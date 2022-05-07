//
//  PunViewControllerOne.swift
//  ikid
//
//  Created by 李乐思 on 5/3/22.
//

import UIKit

class PunViewControllerOne: UIViewController {
    
    var punPunchLineJokes = ""
    
    @IBOutlet weak var punchLine: UILabel!
    
    @IBOutlet weak var punBackHome: UIButton!
    
    
    @IBAction func punBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        punchLine.text = punPunchLineJokes

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
