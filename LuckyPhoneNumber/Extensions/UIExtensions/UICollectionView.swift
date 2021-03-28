//
//  UICollectionView.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register(cell: UICollectionViewCell.Type){
        let nib:UINib = .init(nibName: cell.identifier(), bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: cell.identifier())
    }
    
    func register(cells:[UICollectionViewCell.Type]) {
        cells.forEach { (cell) in
            self.register(cell: cell)
        }
    }
    
    func register(of kind:String, classType:UICollectionReusableView.Type) {
        let nib:UINib = .init(nibName: classType.identifier(), bundle: nil)
        self.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: classType.identifier())
    }
    
    func dequeueCell<T:UICollectionViewCell>(of type: T.Type ,for indexPath:IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }
    
    func dequeueHeaderSupplementaryView<T:UICollectionReusableView>(of type: T.Type,for indexPath:IndexPath) -> T {
        return self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }
    
    func dequeueFooterSupplementaryView<T:UICollectionReusableView>(of type: T.Type,for indexPath:IndexPath) -> T {
        return self.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }
    
}
