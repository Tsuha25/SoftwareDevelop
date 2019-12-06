//
//  ViewController_Start.swift
//  GroupF
//
//  Created by 小川　花凜 on 2019/12/06.
//  Copyright © 2019 津覇　翔也. All rights reserved.
//

import UIKit
import FLAnimatedImage

class ViewController_Start: UIViewController {
    
    @IBOutlet weak var top_gif: FLAnimatedImageView!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var tap_start: UIButton!
    @IBOutlet weak var img_start: UIImageView!

    @IBAction func Tap_Start(_ sender: Any) {
        Start_On_Off(index: true)
    }
    
    //trueでTapOff
    func Start_On_Off(index:Bool){
        if(index == true){
            start.isHidden = false
            img_start.isHidden = false
            tap_start.isHidden = true
        }else{
            start.isHidden = true
            img_start.isHidden = true
            tap_start.isHidden = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Start_On_Off(index: false)
        //gif
        let path1 : String = Bundle.main.path(forResource: "top", ofType: "gif")!
        let url = URL(fileURLWithPath: path1)
        let gifData = try? Data(contentsOf: url)
        let imageData1 = try? FLAnimatedImage(animatedGIFData: gifData)
        top_gif.animatedImage = imageData1
    }

}
