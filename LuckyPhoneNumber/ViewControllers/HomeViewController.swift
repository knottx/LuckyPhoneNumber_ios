//
//  HomeViewController.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxBinding
import RxBiBinding
import RxDataSources
import Action

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var viewModel = HomeViewModel()
    var tableHeaderView:HomeTableHeaderView = .loadFromNib(of: HomeTableHeaderView.self)
    var dataSource:RxTableViewSectionedReloadDataSource<HomeSectionModel>!
    private let bag = DisposeBag()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tableView.setTableHeaderView(self.tableHeaderView)
    }
    
    func configureView() {
        self.tableView.separatorStyle = .none
        self.tableView.register(cells: [TotalNumberTableViewCell.self,
                                        PairNumberTableViewCell.self])
        self.tableView.rx.setDelegate(self).disposed(by: self.bag)
    }
    
    func bindViewModel() {
        self.dataSource = .init(configureCell: { (ds, tableView, indexPath, model) -> UITableViewCell in
            switch model {
            case .totalNumber(let totalNumber):
                return tableView.dequeueCell(of: TotalNumberTableViewCell.self, for: indexPath).then { (cell) in
                    cell.configure(item: totalNumber)
                }
            case .pairNumber(let pairNumber):
                return tableView.dequeueCell(of: PairNumberTableViewCell.self, for: indexPath).then { (cell) in
                    cell.configure(item: pairNumber)
                }
            }
        })
        
        self.viewModel.dataSource.bind(to: self.tableView.rx.items(dataSource: self.dataSource)).disposed(by: self.bag)
        
        self.tableView.rx.modelSelected(HomeSectionItem.self).subscribe(onNext: { [weak self] (selected) in
            if let indexPath = self?.tableView.indexPathForSelectedRow {
                self?.tableView.deselectRow(at: indexPath, animated: true)
            }
            switch selected {
            case .totalNumber(let totalNumber):
                let vc = TotalNumberDetailViewController.create(with: totalNumber)
                self?.navigationController?.pushViewController(vc, animated: true)
                
            case .pairNumber(let pairNumber):
                let vc = PairNumberDetailViewController.create(with: pairNumber)
                self?.navigationController?.pushViewController(vc, animated: true)
            }
        }).disposed(by: self.bag)
        
        self.tableHeaderView.textField.rx.text.orEmpty.toPhoneNumber() ~> self.viewModel.phoneNumber ~ self.bag
        
        self.tableHeaderView.actionButton.rx.action = CocoaAction {
            self.viewModel.generateSection()
            return .empty()
        }
    }
    
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch self.viewModel.dataSource.value[indexPath.section].items[indexPath.row] {
        case .totalNumber:    return 120
        case .pairNumber:     return 80
        }
    }
    
}
