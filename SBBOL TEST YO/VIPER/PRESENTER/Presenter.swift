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
    weak var interactor: InteractorProtocol?
    weak var router: RouterProtocol?
    
    // MARK: - Initializer
    init(view: ViewProtocol) {
        self.view = view
    }
    
    // MARK: - Methods
    func configureView() {
        view?.setupView()
        view?.addUIElements()
        view?.buildConstraints()
    }
}
