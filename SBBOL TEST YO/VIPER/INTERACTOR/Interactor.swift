//
//  Interactor.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation
import UIKit

class Interactor: InteractorProtocol {
    
    // MARK: - Properties
    weak var presenter: PresenterOutput?
    
    // MARK: - Initializers
    init(presenter: PresenterOutput) {
        self.presenter = presenter
    }
    
    func checkTextField(text: String?) {
        guard let text = text else { return }
        
        text.count % 2 == 0 ? print("green") : print ("red")
        
        if text.count % 2 == 0 {
            presenter?.oddEven(result: true)
        } else {
            presenter?.oddEven(result: false)
        }
    
    }
}
