//
//  ViewController.swift
//  Gacya
//
//  Created by godpoo3 on 2016/12/03.
//  Copyright © 2016年 godpoo3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var labResult: UILabel!
    @IBOutlet weak var counter: UILabel!
    var cNum = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back1(segue: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func asaG(sender: AnyObject){
        let rNum = arc4random() % 10 + 1
        
        let asaImage = UIImage(named: "asaImage/\(rNum)")
        
        ImageView.image = asaImage
    }
    @IBAction func hiruG(sender: AnyObject){
        let rNum = arc4random() % 10 + 1
        
        let hiruImage = UIImage(named: "hiruImage/\(rNum)")
        
        ImageView.image = hiruImage
    }
    @IBAction func banG(sender: AnyObject){
        let rNum = arc4random() % 14 + 1
        
        let banImage = UIImage(named: "banImage/\(rNum)")
        
        ImageView.image = banImage
    }
    @IBAction func dessertG(sender: AnyObject){
        let rNum = arc4random() % 10 + 1
        
        let dessertImage = UIImage(named: "dessertImage/\(rNum).jpg")
        
        ImageView.image = dessertImage
    }
    
    @IBAction func Gacya(sender: AnyObject) {
        
        let rNum = arc4random() % 100000
        var Item = 0
        var log = ""
        var countlog = ""
        
        switch rNum {
        case 60001...85000:
            log = "レア"
            Item = Int(arc4random()) % 3 + 4
        case 85001...97000:
            log = "Sレア"
            Item = Int(arc4random()) % 3 + 7
        case 97001...99999:
            log = "SSレア"
            Item = Int(arc4random()) % 3 + 10
        default:
            log = "ノーマル"
            Item = Int(arc4random()) % 3 + 1
        }

        let ItemImage = UIImage(named: "image/\(Item)")
        
        ImageView.image = ItemImage
        
        countlog = "\(cNum) 回目"
        
        counter.text = String(countlog)
        
        cNum = cNum + 1
        
        labResult.text = String(log)
        
    }

}

