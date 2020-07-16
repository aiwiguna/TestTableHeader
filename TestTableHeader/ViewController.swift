//
//  ViewController.swift
//  TestTableHeader
//
//  Created by Antoni Wiguna on 16/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var headerView: UIView!
	@IBOutlet weak var tableView: UITableView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		tableView.delegate = self
		tableView.dataSource = self
		
		tableView.tableHeaderView = headerView
	}


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		return cell
	}
	
	
}

