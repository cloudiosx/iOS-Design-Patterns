//
//  AttackOnTitans.swift
//  ModelViewController
//
//  Created by John Kim on 3/23/22.
//

class AttackOnTitansStrategy: AnimeDetailStrategy {
    // MARK: - Properties
    
    var animeName = "Attack On Titans"
    var mainCharacter = "Eren Jaegar"
    
    // MARK: - Init
    
    public init(animeName: String) {
        self.animeName = animeName
    }
    
    // MARK: - Methods
    
    func animeDescription() -> String {
        let animeDescription = "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans"
        return animeDescription
    }
    
    func favoriteCharacter() -> String {
        let favoriteCharacter = "Levi Ackerman"
        return favoriteCharacter
    }
}

