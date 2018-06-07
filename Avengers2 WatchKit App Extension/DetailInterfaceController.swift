//
//  DetailInterfaceController.swift
//  Avengers2 WatchKit App Extension
//
//  Created by Alumno on 01/06/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import WatchKit

class DetailInterfaceController: WKInterfaceController {
    
    @IBOutlet var image: WKInterfaceImage!
    @IBOutlet var swagger: WKInterfaceLabel!
    @IBOutlet var weakness: WKInterfaceLabel!
    @IBOutlet var strength: WKInterfaceLabel!
    
    let images = [ "Thor":"thor", "Iron Man": "ironman", "Black Widow": "blackwidow", "The Hulk": "thehulk", "Capitan America": "captainamerica", "Hawkeye": "hawkeye" ]
    
    let strengths = [ "Thor":"God", "Iron Man": "Suit", "Black Widow": "Assassin", "The Hulk": "Rage", "Capitan America": "Tactics", "Hawkeye": "Marksman" ]
    
    let weaknesses = [ "Thor":"Arrogance", "Iron Man": "Battery", "Black Widow": "Human", "The Hulk": "Rage", "Capitan America": "Human", "Hawkeye": "Human" ]
    
    let swaggers = [ "Thor":"95%", "Iron Man": "110%", "Black Widow": "75%", "The Hulk": "5%", "Capitan America": "50%", "Hawkeye": "80%" ]
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let name = context as! String
        strength.setText("💪" + strengths[name]!)
        weakness.setText("🐥" + weaknesses[name]!)
        swagger.setText(swaggers[name]!)
        image.setImage(UIImage(named: images[name]!))
    }
}
