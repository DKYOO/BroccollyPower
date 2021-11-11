//
//  Interactor.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation

class Interactor: InteractorProtocol {
    
    // MARK: - Properties
    weak var presenter: PresenterProtocol?
    
    // MARK: - Initializers
    init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    func checkTextField(text: String?) {
        
        text?.count ?? 0 % 2 == 0 ? print("green") : print ("red")
    }
}
