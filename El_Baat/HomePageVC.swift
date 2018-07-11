//
//  HomePageVC.swift
//  El_Baat
//
//  Created by admin on 7/11/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImageV: UIImageViewX!
    
    var eventsData : [EventsData] = [
        EventsData(title: "حفله رأس السنه", image: "0", date: "٤ أكتوبر - ٣١ ديسمبر", details: "الحفل شامل جميع المصاريف: ٢٠ جنيه"),
        EventsData(title: "حفله تخرج طب", image: "1", date: "٤ أكتوبر - ٣١ ديسمبر", details: "الحفل شامل جميع المصاريف: ٥٠ جنيه"),
        EventsData(title: "عيد ميلاد البيت", image: "2", date: "٤ أكتوبر - ٣١ ديسمبر", details: "الحفل شامل جميع المصاريف: ٢٠٠ جنيه"),
        EventsData(title: "حفله رأس السنه", image: "3", date: "٤ أكتوبر - ٣١ ديسمبر", details: "الحفل شامل جميع المصاريف: ٢٠ جنيه"),
        EventsData(title: "حفله رأس السنه", image: "4", date: "٤ أكتوبر - ٣١ ديسمبر", details: "الحفل شامل جميع المصاريف:٢٠٠ جنيه"),
         ]
     override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "HomePageMainCell", bundle: nil), forCellReuseIdentifier: "HomePageMainCell")
        tableView.delegate  = self
        tableView.dataSource = self
        tableView.rowHeight = 152// 120
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileImageV.layer.cornerRadius = self.profileImageV.bounds.width / 2
        self.profileImageV.layer.masksToBounds = true
        self.profileImageV.clipsToBounds = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventsData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageMainCell", for: indexPath) as! HomePageMainCell
//        cell.configCell(eventsData[indexPath.row])
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
