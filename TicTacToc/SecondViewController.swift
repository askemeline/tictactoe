//
//  SecondViewController.swift
//  TicTacToc
//
//  Created by Emeline Garo on 02/07/2019.
//  Copyright © 2019 SUP'Internet 11. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let socketManager = TTTSocketWrapper.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        socketManager.socket.on("join_game", callback: { data, ack in
            
            self.performSegue(withIdentifier: "goToSecondView", sender: self)
            
        )

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        socketManager.socket.emit("join_queue","emm")
//        performSegue(withIdentifier: "goToSecondView", sender: self)
    }
}
