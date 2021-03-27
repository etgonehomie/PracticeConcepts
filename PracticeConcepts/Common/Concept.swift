//
//  Concept.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

/**
 This defines the variables needed to explain a main iOS concept
 - parameter conceptTitle: title of the concept
 - parameter explanation: paragraph explanation of the concept as if you were teaching a five year old
 */

enum ConceptType {
    case communicationPattern
}

enum Concept: Equatable {
    case delegate
    case observer
    
    var title: String {
        switch self {
        case .delegate: return "Delegation Pattern"
        case .observer: return "Notification Observer Pattern"
        default: return "N/A"
        }
    }
    
    var type: ConceptType {
        switch self {
        case .delegate, .observer:
            return .communicationPattern
        }
    }
    
    var simpleExplanation: String {
        switch self {
        case .delegate: return "Delegation Pattern"
        case .observer: return "Observer Pattern"
        default: return "N/A"
        }
    }
    
    var purpose: String {
        switch self {
        case .delegate: return "Delegation Pattern Purpose"
        case .observer: return "Observer Pattern"
        default: return "N/A"
        }
    }
    
    var pros: String {
        switch self {
        case .delegate: return "Delegation Pattern"
        case .observer: return "Observer Pattern"
        default: return "N/A"
        }
    }
    
    var cons: String {
        switch self {
        case .delegate: return "Delegation Pattern"
        case .observer: return "Observer Pattern"
        default: return "N/A"
        }
    }
    
}


