//
//  SegmentControlViewController.swift
//  segmentedControl
//
//  Created by 林哲右 on 2018/7/16.
//  Copyright © 2018 segmentedControl. All rights reserved.
//

import UIKit

class SegmentControlViewController: UIViewController {

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
    let movieImg : [String] = ["movie1","movie2","movie3"]
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var moveSegControl: UISegmentedControl!
    @IBAction func movieControl(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if index == 0 {
            img.image = UIImage(named: movieImg[index])
        }else if index == 1{
            img.image = UIImage(named: movieImg[index])
        }else{
            img.image = UIImage(named: movieImg[index])
        }
    }
    
    
    @IBAction func carousel(_ sender: Any) {
        for (index , value) in movieImg.enumerated() {
            moveSegControl.selectedSegmentIndex = index
            img.image = UIImage(named: value)
            sleep(3)
        }
    }

}
