//
//  Filmler.swift
//  detayliCollectionView
//
//  Created by İSMAİL AÇIKYÜREK on 21.04.2022.
//

import Foundation


class Filmler {
    var filmAdi : String?
    var filmFiyati : Int?
    var filmFotoAdi : String?
    
    
    init() {}
    
    init(filmAdi : String,filmFiyati : Int,filmFotoAdi : String) {
        self.filmAdi = filmAdi
        self.filmFiyati = filmFiyati
        self.filmFotoAdi = filmFotoAdi
    }
}
