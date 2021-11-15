//
//  Presenter.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation
import UIKit

struct Model {
    
}

class Presenter: PresenterInput {
    
    // MARK: - Properties
    weak var view: ViewProtocol?
    var interactor: InteractorProtocol?
    var router: RouterProtocol?
    var models: [Model]?
    // MARK: - Initializer
    init(view: ViewProtocol) {
        self.view = view
    }
    
    // MARK: - Methods
    func userDidEndTexting(text: String?) {
        interactor?.checkTextField(text: text)

    }
    
    
    
    func configureView() {
//        view.backgroundColor = .systemRed
    }
    
    func buttonDidTapped(i: Int) {
//        router?.routeToKart(model: models[i])
    }
    

}


extension Presenter: PresenterOutput {
    func oddEven(result: Bool) {
        if result {
            view?.setColor(color: .systemGreen)
            view?.showImage(image: result)
        } else {
            view?.setColor(color: .systemRed)
            view?.showImage(image: result)
        }
    }
}
