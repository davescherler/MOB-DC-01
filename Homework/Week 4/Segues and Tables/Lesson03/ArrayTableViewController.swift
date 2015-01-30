
import UIKit

class ArrayTableViewController: UITableViewController {
   
    var toDoList: [String] = ["Buy milk", "Pick up dry cleaning", "Go to soccer practive", "Finish Mob Dev homework", "Buy gift for birthday party", "Call my mom", "Groom Fluffy"]
    
    /*
        TODO five: create an array of to do tasks inside this class. DONE.
        TODO six: populate the table view with the contents of the newly created array. Done.
        Bonus: Add delete cell on swipe feature. DONE.
    */
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        cell.textLabel?.text = self.toDoList[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.lightGrayColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            self.toDoList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            toDoList.count
        }
    }
}
