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
    
    // MARK: - UI elements
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30, weight: .semibold)
        label.textColor = .systemGreen
        label.text = "Test App"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var textOne: UITextField = {
        let text = UITextField()
        text.backgroundColor = .init(white: 1, alpha: 0.3)
        text.font = .systemFont(ofSize: 20, weight: .medium)
        text.textColor = .black
        text.placeholder = "Write something here 😜"
        text.layer.cornerRadius = 11.72
        text.translatesAutoresizingMaskIntoConstraints =  false
        return text
    }()
    
    
    lazy var buttonOne: UIButton = {
        let button = UIButton()
        button.tintColor = .green
        button.backgroundColor = .systemGreen
        button.setTitle("Push", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 11.72
        button.addTarget(self, action: #selector(pushing), for: .touchUpInside)
        return button
    }()
  
    

    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        presenter?.configureView()
        
        setupView()
        addUIElements()
        buildConstraints()
        self.hideKeyboardWhenTappedAround()
//        self.hideKeyboardWhenReturnTapped(textOne)
        
    }
    
    @objc func pushing() {
        presenter?.userDidEndTexting(text: textOne.text)
    }
    
//    private func addKeyboardObserver() {
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(keyboardWillShow),
//                                               name: UIResponder.keyboardWillShowNotification,
//                                               object: nil)
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(keyboardWillHide),
//                                               name: UIResponder.keyboardWillHideNotification,
//                                               object: nil)
//    }
//
//    private func removeKeyboardObserver() {
//        NotificationCenter.default.removeObserver(self,
//                                                  name: UIResponder.keyboardWillShowNotification,
//                                                  object: nil)
//
//        NotificationCenter.default.removeObserver(self,
//                                                  name: UIResponder.keyboardWillHideNotification,
//                                                  object: nil)
//    }
    
}

extension ViewOne: ViewProtocol {
    func setupView() {
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 29.3
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func addUIElements() {
        
        view.addSubview(titleLabel)
        view.addSubview(textOne)
        view.addSubview(buttonOne)
        
    }
    
    /* Криповая хрень
    
    func changeColorVC() {
        
        if textOne.count % 2 == 0 {
            view.backgroundColor = .green
        }
        else {
            view.backgroundColor = .red
        }
    }
     
    */
    
    //MARK: - Constraints
    
    func buildConstraints() {
        
        
        
        NSLayoutConstraint.activate([
            
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            
            textOne.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 250),
            textOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            textOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25), //or This Better ?
            textOne.heightAnchor.constraint(equalToConstant: 100),
            
            buttonOne.topAnchor.constraint(equalTo: textOne.bottomAnchor, constant: 150),
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            buttonOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),  // Right ?
            buttonOne.heightAnchor.constraint(equalToConstant: 50)
            
            
        ])
        
    }
}
 //MARK: - KeyboardTricks

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
