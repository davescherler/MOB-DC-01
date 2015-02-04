import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var viewToSwipe: UIView!
    @IBOutlet weak var pressForTableView: UIButton!
   
   
    
    
    // I want to define a swipe. I want that swipe to be directionally left. 
    // I want to define an action that is taken upon the swipe. 
    // I want that action to consist of a method, that takes me to secondVC.
    
    override func viewDidLoad() { //why does this not work outside of the viewDidLoad method?
        super.viewDidLoad()
        initializeSwipeLeftOnLabel()
        initializeTapOnButton()
    }
    
    func initializeSwipeLeftOnLabel() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "goToSecondVC:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.viewToSwipe.addGestureRecognizer(swipeLeft)
    }
    
    func goToSecondVC(sender: UISwipeGestureRecognizer) {
        var designateAsSecondVC = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as SecondViewController
        self.presentViewController(designateAsSecondVC, animated: true, completion: nil)
    }
    
    func initializeTapOnButton() {
        let press = UITapGestureRecognizer(target: self, action: "showTableView:")
        press.numberOfTapsRequired = 1
        println("about to set tap")
        self.pressForTableView.addGestureRecognizer(press)
        println("about to add tap recognizer")
    }
    
    func showTableView(UITapGestureRecognizer) {
        println("about to perform segue")
        //let designateAsTableView = self.storyboard?.instantiateViewControllerWithIdentifier("tableView") as ArrayTableViewController
        self.performSegueWithIdentifier("segueToTableView", sender: self)
    }

    
    
    

    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard). DONE.
    TODO two: Add an imageview to the modal dialog presented in TODO two. DONE>
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE. DONE. 
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.DONE. 
    */

}

