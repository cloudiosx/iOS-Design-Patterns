//
//  AnimeViewController.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

import UIKit

// MARK: - Strategy Protocol

protocol AnimeDetailStrategy {
    var animeName: String { get }
    var mainCharacter: String { get }
    func animeDescription() -> String
    func favoriteCharacter() -> String
//    func getAnimeDetails(from animeTitle: String, success: (_ favoriteCharacter: String, _ animeDescription: String) -> ())
}

// MARK: - AnimeViewController

class AnimeViewController: UIViewController {
    // MARK: - Properties
    
    var animeArray: [AnimeDetailStrategy] = [
        AttackOnTitansStrategy(animeName: "Attack On Titans"),
        SwordArtOnlineStrategy(animeName: "Sword Art Online")
    ]
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAnime()
    }
    
    // MARK: - Methods
    
    func configureAnime() {
        print(animeArray)
    }
}

extension AnimeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animeCell = tableView.dequeueReusableCell(withIdentifier: "Anime", for: indexPath)
        animeCell.textLabel?.text = animeArray[indexPath.row].animeName
        return animeCell
    }
}

extension AnimeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let animeDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "AnimeDetailViewController") as! AnimeDetailViewController
        animeDetailViewController.anime = animeArray[indexPath.row]
        navigationController?.pushViewController(animeDetailViewController, animated: true)
    }
}
