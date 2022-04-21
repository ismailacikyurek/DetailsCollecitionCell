//
//  ViewController.swift
//  detayliCollectionView
//
//  Created by İSMAİL AÇIKYÜREK on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var filmler = [Filmler]()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let f1 = Filmler(filmAdi: "Bir Zamanlar Anadoluda", filmFiyati: 30, filmFotoAdi: "birzamanlaranadoluda")
        let f2 = Filmler(filmAdi: "Dijango", filmFiyati: 20, filmFotoAdi: "django")
        let f3 = Filmler(filmAdi: "Inception", filmFiyati: 120, filmFotoAdi: "inception")
        let f4 = Filmler(filmAdi: "İnterstellar", filmFiyati: 40, filmFotoAdi: "interstellar")
        let f5 = Filmler(filmAdi: "The HatefulEight", filmFiyati: 15, filmFotoAdi: "thehatefuleight")
        let f6 = Filmler(filmAdi: "The Pianist", filmFiyati: 35, filmFotoAdi: "thepianist")
        filmler = [f1,f2,f3,f4,f5,f6,f4,f5,f6,f2]
        let tasarim : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.collectionView.frame.size.width
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.itemSize = CGSize(width: (genislik-60)/2, height: (genislik-20)/1)
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 1
        collectionView.collectionViewLayout = tasarim
        
        
    }


}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate,FilmHucreProtocol{
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmler[indexPath.row]
        print("\(film.filmAdi!) filmi sipariş verildi.")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HucreCell
        cell.lblFilmName.text = filmler[indexPath.item].filmAdi
        cell.lblFilmFiyat.text = String(filmler[indexPath.row].filmFiyati!) + " TL"
        cell.imageView.image = UIImage(named: "\(filmler[indexPath.row].filmFotoAdi!)")
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
       return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

