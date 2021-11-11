//
//  PresenterProtocol.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation


protocol PresenterProtocol: AnyObject {
    
    var router: RouterProtocol? { get set }
    
    func configureView()
    func userDidEndTexting(text: String?)
}
