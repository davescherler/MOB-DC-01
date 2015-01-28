import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var swipeLabel: UIView!
   
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeL = UISwipeGestureRecognizer(target: self, action: "showSecondVC:")
        swipeL.direction = UISwipeGestureRecognizerDirection.Left
        
        self.swipeLabel.addGestureRecognizer(swipeL)
    }
    
    func showSecondVC(sender: UISwipeGestureRecognizer) {
        println("about to init secondVC")
        var secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as SecondViewController
        
        println("about to present secondVC")
        
        self.presentViewController(secondViewController, animated: true, completion: nil)
    }

}

