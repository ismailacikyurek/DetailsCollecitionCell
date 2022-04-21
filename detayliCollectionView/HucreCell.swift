//
//  HucreCell.swift
//  detayliCollectionView
//
//  Created by İSMAİL AÇIKYÜREK on 21.04.2022.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath:IndexPath)
}


class HucreCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lblFilmName: UILabel!
    
    @IBOutlet weak var lblFilmFiyat: UILabel!
    
    var hucreProtocol:FilmHucreProtocol?
    var indexPath:IndexPath?
    
    @IBOutlet weak var btnSepeteEkle: UIButton!
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}

    
    

