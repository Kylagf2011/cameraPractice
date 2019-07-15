//
//  ViewController.swift
//  acsesingCamerapractice
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    //object where we can can access to store/take photos
    var imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self directs object back to class to object is in
        imagePicker.delegate = self
    }

    @IBAction func photoLibraryTap(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        //accesses photo library, saves a photo of choice to class, then quits when done
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func takeSelfieTap(_ sender: Any) {
        //this allows camera to open
        imagePicker.sourceType = .camera
        
        //present built in function, allows access to camera, animated allows smooth transiton, completeion allows for exit after photo is choosen
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var newImage: UIImageView!
    
    //selected image will replace the stock photo with this code
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage =
            info[UIImagePickerController.InfoKey.originalImage]
                as? UIImage {newImage.image = selectedImage}
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
}

