//
//  Question Bank.swift
//  GK
//
//  Created by Nainesh Jethwa on 9/29/17.
//  Copyright © 2017 Nainesh Jethwa. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    
    init() {

        let item = Question(text: "Is this you Holding is Nainesh's Iphone", correctAnswer : true)
        
        list.append(item)
        
        list.append(Question(text : "The OXFORD University is been longer then AZTEC Empire ?", correctAnswer : true))
        
        list.append(Question(text : "The oldest living organism on earth is Galapagos Tortoise ?", correctAnswer : false))
        
        list.append(Question(text : "Steve job is founder of Apple ?", correctAnswer : true))
        
        list.append(Question(text : "The memory span of a goldfish is a few seconds ?", correctAnswer : true))
        
        list.append(Question(text : "6 cows, 9 chickens and 12 humans have 66 legs ?", correctAnswer : true))
        
        list.append(Question(text : "All starfish have 5 legs ?", correctAnswer : false))
        
        list.append(Question(text : "An ostrich's eye is bigger than its brain ?", correctAnswer : true))
        
        list.append(Question(text : "A penny dropped from the Empire State Building will kill a person if hit?", correctAnswer : true))
        
        list.append(Question(text : "The Declaration of independence was signed on August 2 1776 ?", correctAnswer : true))
        
        list.append(Question(text : "Sushi means 'raw fish' ?", correctAnswer : false))
        
        list.append(Question(text : "DNA is made from protein ?", correctAnswer : false))
        
        list.append(Question(text : "Eating less than an hour before swimming causes cramps ?", correctAnswer : false))
        
        
    

    }
    
    
    
}
