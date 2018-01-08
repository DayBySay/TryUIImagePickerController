//
//  ViewController.swift
//  TryUIImagePickerController
//
//  Created by 清 貴幸 on 2018/01/08.
//  Copyright © 2018年 daybysay.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTouchUpShowButton(_ sender: Any) {
        showPhotoLibrary()
    }
    
    func showPhotoLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let ipc = UIImagePickerController()
            ipc.sourceType = .savedPhotosAlbum
            self.present(ipc, animated: true, completion: nil)
        }
    }
}

