//
//  Configurator.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation

class Configurator: ConfiguratorProtocol {
    func configure(with viewController: ViewOne) {
        let presenter = Presenter(view: viewController)
        let interactor = Interactor(presenter: presenter)
        let router = Router(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

