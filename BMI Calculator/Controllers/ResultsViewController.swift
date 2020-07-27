import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String? // calculate 뷰에서 계산하기 전까지는 bmi 지수를 알 수 없으므로 옵셔널이다.

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }

}
