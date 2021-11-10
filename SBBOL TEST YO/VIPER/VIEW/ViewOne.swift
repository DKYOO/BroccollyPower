//
//  ViewOne.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import UIKit

class ViewOne: UIViewController {
    
    // MARK: - Properties
    weak var presenter: PresenterProtocol?
    let configurator: ConfiguratorProtocol = Configurator()
    
    // MARK: - UI elements
    

    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
}

extension ViewOne: ViewProtocol {
    func setupView() {
        view.backgroundColor = .green
        view.layer.cornerRadius = 29.3
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func addUIElements() {
        
    }
    
    func buildConstraints() {
        
    }
}
