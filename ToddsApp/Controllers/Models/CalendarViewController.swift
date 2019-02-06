//
//  CalendarViewController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 12/5/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit
import EventKit


class CalendarViewController: UIViewController {
    @IBOutlet weak var eventText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventText.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var addEventOutlet: UIButton!
    
    @IBAction func bttnAddEvent(_ sender: Any) {
        let eventStore: EKEventStore = EKEventStore()
        
        eventStore.requestAccess(to: .event) {(granted, error) in
            if (granted) && (error == nil)
            {
                print("granted \(granted)")
                print("error \(error)")
                
                let event:EKEvent = EKEvent(eventStore: eventStore)
                event.title = self.eventText.text
                event.startDate = Date()
                event.endDate = Date()
                event.notes = "This is a note"
                event.calendar = eventStore.defaultCalendarForNewEvents
                do {
                    try eventStore.save(event, span: .thisEvent)
                } catch let error as NSError{
                    print("error: \(error)")
                }
                print("Save Event")
                
            } else {
                print("error: \(error)")
                
            }
            
        } 
    }
    
    
}
extension CalendarViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        eventText.resignFirstResponder()
        
        var emptyStr = ""
        
        
        
        //addEventOutlet.titleLabel = eventText.text
        
        return true
    }
}
