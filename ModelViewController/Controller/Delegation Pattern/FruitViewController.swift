//
//  FruitViewController.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

import UIKit

public protocol FruitViewControllerDelegate: AnyObject {
    func fruitViewController(_ fruitViewController: FruitViewController)
}

public class FruitViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet public var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    // MARK: - Properties
    
    public weak var delegate: FruitViewControllerDelegate?
    public let fruits = ["Apple", "Banana", "Peach"]
    
    // MARK: - View Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Return", style: .plain, target: self, action: #selector(didTapBack))
    }
    
    // MARK: - Objective-C
    
    @objc func didTapBack() {
        delegate?.fruitViewController(self)
    }
}

// MARK: - UITableViewDataSource

extension FruitViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruitCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        fruitCell.textLabel?.text = fruits[indexPath.row]
        return fruitCell
    }
}

// MARK: - UITableViewDelegate

extension FruitViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO: - Next
        
    }
}

