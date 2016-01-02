import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController {
    
    var urlString = ""
	
    func setURLString(string: String) {
        self.urlString = string
    }
	
	    
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        
        
        player = AVPlayer(URL: NSURL(string: urlString)!)
        player?.play()
    }
}