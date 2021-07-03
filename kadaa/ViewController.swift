//
//  ViewController.swift
//  kadaa
//
//  Created by 小竹啓太 on 2021/07/03.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var redLabel: UILabel!
    @IBOutlet private weak var redSlider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        redLabel.text = String(delegate.value)
        redSlider.value = delegate.value
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        delegate.value = redSlider.value
        redLabel.text = String(delegate.value)
    }
}
