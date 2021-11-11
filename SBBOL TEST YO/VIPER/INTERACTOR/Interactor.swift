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
    weak var presenter: PresenterProtocol?
    
    // MARK: - Initializers
    init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    func checkTextField(text: String?) {
        
        var result: Double
        
        result = Double(text!.count / 2)
        
        print (result)
        text?.count ?? 0 % 2 == 0 ? print("green") : print ("red")
    }
}
