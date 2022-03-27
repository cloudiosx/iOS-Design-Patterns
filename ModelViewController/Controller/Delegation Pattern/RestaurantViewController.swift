//
//  RestaurantViewController.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

import UIKit

public class RestaurantViewController: UITableViewController {
    // MARK: - View Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource & UITableViewDelegate

extension RestaurantViewController {
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Restaurant", for: indexPath)
        cell.textLabel?.text = "Grocery Store"
        return cell
    }
    
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fruitViewController = segue.destination as? FruitViewController else { return }
        fruitViewController.delegate = self
    }
    
//    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let fruitViewController = self.storyboard?.instantiateViewController(withIdentifier: "FruitViewController") as! FruitViewController
//        navigationController?.pushViewController(fruitViewController, animated: true)
//    }
}

// MARK: - FruitViewControllerDelegate

extension RestaurantViewController: FruitViewControllerDelegate {
    public func fruitViewController(_ fruitViewController: FruitViewController) {
        navigationController?.popViewController(animated: true)
    }
}

