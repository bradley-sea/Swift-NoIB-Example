//
//  ViewController.swift
//  NoIB
//
//  Created by Bradley Johnson on 12/4/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func loadView() {
        let rootView = UIView(frame: UIScreen.mainScreen().bounds)
        rootView.backgroundColor = UIColor.whiteColor()
        
        
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        let blueButton = UIButton()
        blueButton.setTitle("Save", forState: UIControlState.Normal)
        blueButton.backgroundColor = UIColor.blueColor()
        let greenLabel = UILabel()
        greenLabel.text = "Press save to save!"
        greenLabel.backgroundColor = UIColor.greenColor()
        let pinkLabel = UILabel()
        pinkLabel.text = "Centered"
        pinkLabel.backgroundColor = UIColor.purpleColor()

        rootView.addSubview(redView)
        rootView.addSubview(blueButton)
        rootView.addSubview(greenLabel)
        rootView.addSubview(pinkLabel)
        
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        greenLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        pinkLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let views = ["redView" : redView,
                  "blueButton" : blueButton,
                  "greenLabel" : greenLabel,
                   "pinkLabel" : pinkLabel]
        
        let redViewContraintsHeight = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[redView(20)]",
            options: nil,
            metrics: nil,
            views: views)
         redView.addConstraints(redViewContraintsHeight)
        
        let redViewConstraintY = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-50-[redView]",
            options: nil,
            metrics: nil,
            views: views)
        rootView.addConstraints(redViewConstraintY)
        let redViewConstraintX = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-20-[redView]-20-|",
            options: nil,
            metrics: nil,
            views: views)
        rootView.addConstraints(redViewConstraintX)
        let blueConstraintsY = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[redView]-10-[blueButton]",
            options: NSLayoutFormatOptions.AlignAllLeading,
            metrics: nil,
            views: views)
        rootView.addConstraints(blueConstraintsY)
        let greenLabelConstraintsXandY = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[blueButton]-10-[greenLabel]",
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: nil,
            views: views)
        rootView.addConstraints(greenLabelConstraintsXandY)
        let pinkLabelY = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-200-[pinkLabel]",
            options: nil,
            metrics: nil,
            views: views)
        rootView.addConstraints(pinkLabelY)
        
        let pinkLabelCenterX = NSLayoutConstraint(item: pinkLabel,
                                             attribute: .CenterX,
                                             relatedBy:.Equal,
                                                toItem: rootView,
                                             attribute: .CenterX,
                                            multiplier: 1.0,
                                              constant: 0.0)
        
        rootView.addConstraint(pinkLabelCenterX)
        
        self.view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

