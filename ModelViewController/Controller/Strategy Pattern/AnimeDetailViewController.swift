//
//  AnimeDetailViewController.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

import UIKit

class AnimeDetailViewController: UIViewController {
    // Reference to the strategy protocol
    var anime: AnimeDetailStrategy!
    
    // Reference to the view
    var animeDetailView: AnimeDetailView! {
        guard isViewLoaded else { return nil }
        return (view as! AnimeDetailView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        guard let animeDetailView = animeDetailView else { return }
        animeDetailView.animeDescription.text = anime.animeDescription()
        animeDetailView.animeMainCharacter.text = anime.mainCharacter
        animeDetailView.animeFavoriteCharacter.text = anime.favoriteCharacter()
    }
}
