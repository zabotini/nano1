//
//  ViewController.swift
//  Apresente-se
//
//  Created by Rafael Zabotini Venjenski on 24/01/18.
//  Copyright © 2018 Rafael Zabotini Venjenski. All rights reserved.
//

import UIKit

extension UIView {
    func blink(delayTime: Double, alphaOut: CGFloat) {
        self.alpha = 0.0;
        UIView.animate(withDuration: 1.0, //Time duration you want,
            delay: delayTime,
            options: [.autoreverse, .repeat],
            animations: { [weak self] in self?.alpha = 1.0 },
            completion: { [weak self] _ in self?.alpha = alphaOut })
    }
}

class ViewController: UIViewController {
   
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSwipeMe: UILabel!
    @IBOutlet var collectionClickMe: [UILabel]!
    @IBOutlet var collectionImageViewChange: [UIImageView]!
    override var prefersStatusBarHidden: Bool {return true}
    
    override func viewWillAppear(_ animated: Bool) {
        lblSwipeMe.blink(delayTime: 1.0, alphaOut: 0.0)
        for UILabel in collectionClickMe {
            UILabel.blink(delayTime: 1.0, alphaOut: 0.0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("teste")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewControllerHistory
        if segue.identifier == "ViewTwoPurple" {
            vc.txtIdade = "8 anos"
            vc.txtEpoca = "98~2001"
            vc.txtDescription = "ViewPurpleText"
            collectionImageViewChange[0].image = #imageLiteral(resourceName: "CardsPurpleLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "1998.png")
        } else if segue.identifier == "ViewThreeBlue" {
            vc.txtIdade = "15 anos"
            vc.txtEpoca = "2005~06"
            vc.txtDescription = "ViewBlueText"
            collectionImageViewChange[1].image = #imageLiteral(resourceName: "CardsBlueLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2005.png")
        } else if segue.identifier == "ViewFourLBlue" {
            vc.txtIdade = "17 anos"
            vc.txtEpoca = "2007~09"
            vc.txtDescription = "ViewLBlueText"
            collectionImageViewChange[2].image = #imageLiteral(resourceName: "CardsLightBlueLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2007.png")
        }  else if segue.identifier == "ViewFiveGreen" {
            vc.txtIdade = "20 anos"
            vc.txtEpoca = "2010"
            vc.txtDescription = "ViewGreenText"
            collectionImageViewChange[3].image = #imageLiteral(resourceName: "CardsGreenLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2010.png")
        }  else if segue.identifier == "ViewSixYellow" {
            vc.txtIdade = "21 anos"
            vc.txtEpoca = "2011"
            vc.txtDescription = "ViewYellowText"
            collectionImageViewChange[4].image = #imageLiteral(resourceName: "CardsYellowLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2011.png")
        } else if segue.identifier == "ViewSevenOrange" {
            vc.txtIdade = "24 anos"
            vc.txtEpoca = "2014"
            vc.txtDescription = "ViewOrangeText"
            collectionImageViewChange[5].image = #imageLiteral(resourceName: "CardsOrangeLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2014.png")
        } else if segue.identifier == "ViewEightRed" {
            vc.txtIdade = "26 anos"
            vc.txtEpoca = "2016"
            vc.txtDescription = "ViewRedText"
            collectionImageViewChange[6].image = #imageLiteral(resourceName: "CardsRedLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2016.png")
        } else if segue.identifier == "ViewNinePink" {
            vc.txtIdade = "27 anos"
            vc.txtEpoca = "2017~18"
            vc.txtDescription = "ViewPinkText"
            collectionImageViewChange[7].image = #imageLiteral(resourceName: "CardsPinkLowSat.png")
            vc.imgHistory = #imageLiteral(resourceName: "2017.png")
        } else {
            NSLog("Error: Segue fault")
        }
    }
}

