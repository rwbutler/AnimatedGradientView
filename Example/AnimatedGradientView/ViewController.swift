//
//  ViewController.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 02/20/2019.
//  Copyright (c) 2019 Ross Butler. All rights reserved.
//

import UIKit
import AnimatedGradientView

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var gradientView: AnimatedGradientView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func configureStaticGradient() {
        gradientView.autoAnimate = false
        gradientView.colors = [[.red, .blue]]
    }
    
    // swiftlint:disable:next function_body_length
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientView.animationDuration = 5.0
        if #available(iOS 12, *) { // We need iOS 12 for conic gradients
            gradientView.animationValues = [(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .up, .axial),
                                            (colors: ["#FEAC5E", "#C779D0", "#fcb045"], .upRight, .axial),
                                            (colors: ["#43cea2", "#185a9d"], .right, .conic),
                                            (colors: ["#003973", "#E5E5BE"], .downRight, .conic),
                                            (colors: ["#00bf8f", "#001510"], .down, .axial),
                                            (colors: ["#E55D87", "#5FC3E4"], .downLeft, .radial),
                                            (colors: ["#fc00ff", "#00dbde"], .left, .radial),
                                            (colors: ["#4568DC", "#B06AB3"], .upLeft, .axial),
                                            (colors: ["#360033", "#0b8793"], .up, .radial),
                                            (colors: ["#03001e", "#7303c0", "#ec38bc", "#fdeff9"], .upRight, .radial),
                                            (colors: ["#00F260", "#0575E6"], .right, .radial),
                                            (colors: ["#b92b27", "#1565C0"], .downRight, .axial),
                                            (colors: ["#CC95C0", "#DBD4B4", "#FF0000"], .down, .axial),
                                            (colors: ["#40E0D0", "#FF8C00", "#FF0080"], .downLeft, .axial),
                                            (colors: ["#ff0084", "#33001b"], .left, .axial),
                                            (colors: ["#8E0E00", "#1F1C18"], .upLeft, .axial),
                                            (colors: ["#0099F7", "#F11712"], .up, .axial),
                                            (colors: ["#FFA17F", "#00223E"], .upRight, .conic),
                                            (colors: ["#C02425", "#F0CB35"], .right, .axial),
                                            (colors: ["#00c3ff", "#ffff1c"], .downRight, .axial),
                                            (colors: ["#004FF9", "#FFF94C"], .down, .axial),
                                            (colors: ["#0B486B", "#F56217"], .downLeft, .axial),
                                            (colors: ["#23074d", "#cc5333"], .left, .axial),
                                            (colors: ["#12c2e9", "#c471ed", "#f64f59"], .right, .axial),
                                            (colors: ["#c21500", "#ffc500"], .up, .conic),
                                            (colors: ["#c31432", "#240b36"], .upRight, .axial),
                                            (colors: ["#44A08D", "#093637"], .upRight, .axial),
                                            (colors: ["#A770EF", "#CF8BF3", "#FDB99B"], .right, .axial),
                                            (colors: ["#6A9113", "#141517"], .downLeft, .axial),
                                            (colors: ["#A43931", "#A43931"], .upRight, .axial),
                                            (colors: ["#1a2a6c", "#b21f1f", "#ec38bc"], .downRight, .radial),
                                            (colors: ["#23074d", "#cc5333"], .down, .radial),
                                            (colors: ["#544a7d", "#ffd452"], .upRight, .axial),
                                            (colors: ["#c31432", "#240b36"], .right, .axial),
                                            (colors: ["#0f0c29", "#302b63", "#24243e"], .downLeft, .axial),
                                            (colors: ["#780206", "#061161"], .down, .conic),
                                            (colors: ["#1D4350", "#A43931"], .right, .axial),
                                            (colors: ["#FF5F6D", "#FFC371"], .downLeft, .axial),
                                            (colors: ["#2196f3", "#f44336"], .upRight, .axial),
                                            (colors: ["#FC5C7D", "#6a82fb"], .right, .axial),
                                            (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .up, .conic),
                                            (colors: ["#44A08D", "#093637"], .upRight, .axial),
                                            (colors: ["#A770EF", "#CF8BF3", "#FDB99B"], .right, .axial),
                                            (colors: ["#40E0D0", "#FF8C00", "#FF0080"], .downLeft, .axial)]
        } else {
            gradientView.animationValues = [(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .up, .axial),
                                            (colors: ["#FEAC5E", "#C779D0", "#fcb045"], .upRight, .axial),
                                            (colors: ["#00bf8f", "#001510"], .down, .axial),
                                            (colors: ["#E55D87", "#5FC3E4"], .downLeft, .radial),
                                            (colors: ["#fc00ff", "#00dbde"], .left, .radial),
                                            (colors: ["#4568DC", "#B06AB3"], .upLeft, .axial),
                                            (colors: ["#360033", "#0b8793"], .up, .radial),
                                            (colors: ["#03001e", "#7303c0", "#ec38bc", "#fdeff9"], .upRight, .radial),
                                            (colors: ["#00F260", "#0575E6"], .right, .radial),
                                            (colors: ["#b92b27", "#1565C0"], .downRight, .axial),
                                            (colors: ["#CC95C0", "#DBD4B4", "#FF0000"], .down, .axial),
                                            (colors: ["#40E0D0", "#FF8C00", "#FF0080"], .downLeft, .axial),
                                            (colors: ["#ff0084", "#33001b"], .left, .axial),
                                            (colors: ["#8E0E00", "#1F1C18"], .upLeft, .axial),
                                            (colors: ["#0099F7", "#F11712"], .up, .axial),
                                            (colors: ["#C02425", "#F0CB35"], .right, .axial),
                                            (colors: ["#00c3ff", "#ffff1c"], .downRight, .axial),
                                            (colors: ["#004FF9", "#FFF94C"], .down, .axial),
                                            (colors: ["#0B486B", "#F56217"], .downLeft, .axial),
                                            (colors: ["#23074d", "#cc5333"], .left, .axial),
                                            (colors: ["#12c2e9", "#c471ed", "#f64f59"], .right, .axial),
                                            (colors: ["#c31432", "#240b36"], .upRight, .axial),
                                            (colors: ["#44A08D", "#093637"], .upRight, .axial),
                                            (colors: ["#A770EF", "#CF8BF3", "#FDB99B"], .right, .axial),
                                            (colors: ["#6A9113", "#141517"], .downLeft, .axial),
                                            (colors: ["#A43931", "#A43931"], .upRight, .axial),
                                            (colors: ["#1a2a6c", "#b21f1f", "#ec38bc"], .downRight, .radial),
                                            (colors: ["#23074d", "#cc5333"], .down, .radial),
                                            (colors: ["#544a7d", "#ffd452"], .upRight, .axial),
                                            (colors: ["#c31432", "#240b36"], .right, .axial),
                                            (colors: ["#0f0c29", "#302b63", "#24243e"], .downLeft, .axial),
                                            (colors: ["#1D4350", "#A43931"], .right, .axial),
                                            (colors: ["#FF5F6D", "#FFC371"], .downLeft, .axial),
                                            (colors: ["#2196f3", "#f44336"], .upRight, .axial),
                                            (colors: ["#FC5C7D", "#6a82fb"], .right, .axial),
                                            (colors: ["#44A08D", "#093637"], .upRight, .axial),
                                            (colors: ["#A770EF", "#CF8BF3", "#FDB99B"], .right, .axial),
                                            (colors: ["#40E0D0", "#FF8C00", "#FF0080"], .downLeft, .axial)]
        }
    }
}
