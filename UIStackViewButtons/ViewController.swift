//
//  ViewController.swift
//  UIStackViewButtons
//
//  Created by Sandip Das on 19/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel =  UILabel()
    var stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        configureTitleLabel()
        configureStackView()
        
        setConstraints()
    }
    
    func configureStackView(){
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addButtonsToStackView()
        
    }
    
    func addButtonsToStackView(){
        let numberOfButtons = 5
        
        for i in 1...numberOfButtons{
            let button = SurveyButton()
            button.setTitle("\(i)", for: .normal)
            stackView.addArrangedSubview(button)
        }
    }
    
    
    
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        
        titleLabel.text = "How would you rate this tutorial?"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 36)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
      
    }
        
        
        func setConstraints(){
            var constraint = [NSLayoutConstraint]()
            
            
            //add constraints for title label
            constraint.append(titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
            constraint.append(titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
            constraint.append(titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
            
            //add constraints for stack view
            constraint.append(stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30))
            constraint.append(stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50))
            constraint.append(stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50))
            constraint.append(stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30))
            
            
            //activate constraints
            NSLayoutConstraint.activate(constraint)
        }
        
    }




