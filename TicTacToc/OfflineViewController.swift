//
//  OfflineViewController.swift
//  TicTacToc
//
//  Created by SUP'Internet 09 on 19/06/2019.
//  Copyright © 2019 SUP'Internet 11. All rights reserved.
//

import UIKit

class OfflineViewController: UIViewController {
    //let socketManager = TTTSocketWrapper.shared

    var currentTurn = "x"
    var board = ["?", "?", "?", "?", "?", "?", "?", "?", "?"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        //socketManager.socket.emit("join_queue","emm")


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
        
        if (self.board[index] == "?") {
            if (self.currentTurn == "x") {
                sender.setImage(UIImage(named :"X.jpg"), for: .normal)
                self.board[index] = "O"
                self.currentTurn = "o"
                
            } else {
                sender.setImage(UIImage(named :"O.png"), for: .normal)
                self.board[index] = "O"
                self.currentTurn = "x"
            }
        }
        
        if (self.board[0] != "" && self.board[0] == self.board[1] && self.board[1] == self.board[2]) {
            print("winner is " + self.board[0])
        }else if(self.board[3] != "" && self.board[3] == self.board[4] && self.board[4] == self.board[5]){
            print("winner is " + self.board[3])
        }else if( self.board[6] != "" && self.board[6] == self.board[7] && self.board[7] == self.board[8]){
            print("winner is " + self.board[6])
        }else if( self.board[0] != "" && self.board[0] == self.board[3] && self.board[3] == self.board[6]){
            print("winner is " + self.board[0])
        }else if( self.board[1] != "" && self.board[1] == self.board[4] && self.board[4] ==  self.board[7]){
            print("winner is " + self.board[1])
        }else if (self.board[2] != "" && self.board[2] == self.board[5] && self.board[5] == self.board[8]){
            print("winner is " + self.board[2])
        }else if(self.board[2] != "" && self.board[2] == self.board[4] && self.board[4] == self.board[6]){
            print("winner is " + self.board[2])
        }else if(self.board[0] != "" && self.board[0] == self.board[4] && self.board[4] == self.board[8]){
            print("winner is " + self.board[0])
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
