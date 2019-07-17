//
//  OnlineViewController.swift
//  TicTacToc
//
//  Created by Emeline Garo on 02/07/2019.
//  Copyright © 2019 SUP'Internet 11. All rights reserved.
//

import UIKit

class OnlineViewController: UIViewController {
    let socketManager = TTTSocketWrapper.shared

    var currentTurn = "x"
    var board = ["?", "?", "?", "?", "?", "?", "?", "?", "?"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //socketManager.socket.emit("join_queue","emm")
        
        socketManager.socket.on("movement", callback: { data, ack in
            
            let data2 = data[0] as! [String: Any]
            
            if let playerplayed = data2["player_played"] as? String, let index = data2["index"] as? Int {
                
                let button = self.view.viewWithTag(index) as! UIButton
                
                if (playerplayed == "o") {
                    sender.setImage(UIImage(named :"O.jpg"), for: .normal)
                } else {
                    sender.setImage(UIImage(named :"O.png"), for: .normal)
                    
                }
                
            }
            
            
        })
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonPress(_ sender: UIButton) {
        print(sender.tag)
    }
    
    
    @IBAction func Clicked(_ sender: UIButton) {
        
        let index = sender.tag - 1
        socketManager.socket.emit("movement", index)
    }
    

}
