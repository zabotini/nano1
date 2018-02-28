//
//  ViewControllerHistory.swift
//  Apresente-se
//
//  Created by Rafael Zabotini Venjenski on 26/01/18.
//  Copyright © 2018 Rafael Zabotini Venjenski. All rights reserved.
//

import UIKit

extension UIImageView {
    func circleImage(borderColor: CGColor, borderWith: CGFloat, cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWith
    }
}

class ViewControllerHistory: UIViewController {
    
    override var prefersStatusBarHidden: Bool {return true}
    var txtEpoca: String!
    var txtIdade: String!
    var txtDescription: String!
    var imgHistory: UIImage!
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblEpoca: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func btnBackClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var textFieldHistory: UITextView!
    
    func loadText (fileName: String) -> String{
        if let filepath = Bundle.main.path(forResource: fileName, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                return contents
            } catch {
                NSLog("File error - Incorrect Format")
            }
        } else {
            assertionFailure("File not found")
        }
        return "fail"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myImage.circleImage(borderColor: UIColor.darkGray.cgColor, borderWith: 2, cornerRadius: myImage.frame.size.width/2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEpoca.text = txtEpoca
        lblIdade.text = txtIdade
        myImage.image = imgHistory
        
        textFieldHistory.text = loadText(fileName: txtDescription) //carregar os textos da history
    }
}
