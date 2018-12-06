//
//  ViewController.swift
//  TriviaGame
//
//  Created by Joshua Viera on 12/6/18.
//  Copyright © 2018 Joshua Viera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    func loadData() {
        //URL
        guard let myURL = URL(string: "https://opentdb.com/api.php?amount=10") else {return}
        //use Url to get data
        //----
        
        
        // URLSession is a singleton class,
        // .shared is a varaible in that class that allows URLSession to be accessed in all files, they all point back to the same instance, instead of creating several varaibles of an Object Type in each file, just write URLSession.shaed and you can access it anywhere.
        // dataTask(with: ){( data?, response?, error? )} is a method that takes a closure & doesnt return anything. Handle what would occur if you do not recieve data, obviosuly you should recieve a response or an error, etc..
        URLSession.shared.dataTask(with: myURL) { (data, response, error) in
            if let response = response{
                print(response)
                //additional logic belongs here.. we not there yet tho
            }
            if let error = error {
                print(error)
                //additional logic belongs here.. we not there yet tho
                //essentially says when i get an error.. What we gna do with it?
            }
            if let data = data {
                // if you actually get data than you dont gotta do much else.. this will unwrap the data, go back up to the URLSession & give it data
                print("we have data!!!")
            }
        }.resume()//MOTHAFUCKING NEED THIS SHIT JUUUHEARDDDD
    }
}
