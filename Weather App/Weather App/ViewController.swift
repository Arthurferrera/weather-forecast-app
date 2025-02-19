//
//  ViewController.swift
//  Weather App
//
//  Created by Arthur Ferreira on 21/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .brown
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    // Executado toda vez que entra na tela, por exemplo voltando do app em background
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    private func setupView() {
        view.backgroundColor = UIColor.lightGray
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
        
    private func setConstraints() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
}

