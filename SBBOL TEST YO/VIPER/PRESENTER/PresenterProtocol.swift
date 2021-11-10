//
//  PresenterProtocol.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation


protocol PresenterProtocol: class {
    var router: RouterProtocol! { get set }
    
    func configureView()
}
