//
//  greenViewController.swift
//  kadaa
//
//  Created by 小竹啓太 on 2021/07/03.
//

import UIKit

class greenViewController: UIViewController {
    
    @IBOutlet  private weak var greenLabel: UILabel!
    @IBOutlet  private weak var greenSlider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        greenLabel.text = String(delegate.value)
        greenSlider.value = delegate.value
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        delegate.value = sender.value
        greenLabel.text = String(delegate.value)
    }
}
