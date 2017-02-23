import UIKit

class CustomTableViewController: UIViewController {
    var listItems:[String]!
    @IBOutlet weak var tableViewOfTrucs: UITableView!
    var lastSelectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listItems = ["truc1", "truc2", "truc3"]
        print("here")
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segId = segue.identifier{
            switch segId{
            case "modifyCellSeg":
                print("here")
                if let cellIndex = tableViewOfTrucs.indexPathForSelectedRow, let modify = segue.destination as? ModifyCellViewController, let list = listItems as [String]!{
                    modify.delegate = self
                    lastSelectedIndex = cellIndex.item
                    modify.cellTitle = list[cellIndex.item]
                }
                
                break
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CustomTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PasCustomTableViewCell.identifier, for: indexPath) as! PasCustomTableViewCell
        if let trueList = self.listItems{
            cell.titleLabel.text = trueList[indexPath.item]
        }

        return cell
    }
}

extension CustomTableViewController: ModifyCellTitleDelegate{
    func willClose(modifyController: ModifyCellViewController, newName: String) {
        print("willcloseDelegate")
        if(newName != ""){
            print("\(lastSelectedIndex)")
            self.listItems[lastSelectedIndex] = newName
            self.tableViewOfTrucs.reloadData()
            
        }
        modifyController.dismiss(animated: true, completion: nil)
    }
}
