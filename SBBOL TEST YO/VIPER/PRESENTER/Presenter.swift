//
//  Presenter.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation

class Presenter: PresenterProtocol {

    
    
    
    // MARK: - Properties
    weak var view: ViewProtocol?
    var interactor: InteractorProtocol?
    var router: RouterProtocol?
    
    // MARK: - Initializer
    init(view: ViewProtocol) {
        self.view = view
    }
    
    // MARK: - Methods
    func userDidEndTexting(text: String?) {
        
        interactor?.checkTextField(text: "hello")
    }
    
    func configureView() {
    }
}
