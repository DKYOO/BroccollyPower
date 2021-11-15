//
//  PresenterProtocol.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation
import UIKit


//protocol PresenterProtocol: AnyObject {
//
//    var router: RouterProtocol? { get set }
//
//    func configureView()
//    func userDidEndTexting(text: String?)
//    func setColor(color: UIColor)
//}

protocol PresenterInput: AnyObject {
    
    func userDidEndTexting(text: String?)
    
}

protocol PresenterOutput: AnyObject {
    
    func oddEven(result: Bool)
    
}
