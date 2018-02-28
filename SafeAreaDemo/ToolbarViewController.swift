//
//  ToolbarViewController.swift
//  SafeAreaDemo
//
//  Created by Andy Riordan on 2/27/18.
//  Copyright © 2018 Chemistree Apps LLC. All rights reserved.
//

import UIKit

class ToolbarViewController: UIViewController {
    
    @IBOutlet var toolbar: UIToolbar!
    
    private var embeddedController: UIViewController?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        embeddedController?.additionalSafeAreaInsets.bottom = toolbar.bounds.height
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "embed" {
            embeddedController = segue.destination
        }
    }
    
}
