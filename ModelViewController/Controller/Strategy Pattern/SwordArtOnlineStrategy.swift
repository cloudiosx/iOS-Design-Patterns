//
//  SwordArtOnline.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

class SwordArtOnlineStrategy: AnimeDetailStrategy {
    // MARK: - Properties
    
    var animeName = "Sword Art Online"
    var mainCharacter = "Kirigaya Kazuto"
    
    // MARK: - Init
    
    public init(animeName: String) {
        self.animeName = animeName
    }
    
    // MARK: - Methods
    
    func animeDescription() -> String {
        let animeDescription = "SWORD ART ONLINE is the story of a multiplayer virtual-reality game that takes a deadly turn when players discover they can't escape of their own will but must play to victory or to death."
        return animeDescription
    }
    
    func favoriteCharacter() -> String {
        let favoriteCharacter = "Yuuki Asuna"
        return favoriteCharacter
    }
}

