//
//  DetailViewController.swift
//  photoCatalog
//
//  Created by 松下廉太郎 on 2018/07/25.
//  Copyright © 2018年 manhattan.code. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let imageView = self.photoImageView {
                let fileName = "\(detail).JPG"
                imageView.image = UIImage(named: fileName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        self.title = "food写真"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

