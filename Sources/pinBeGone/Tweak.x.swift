import UIKit
import Orion
import orionTestingC

class SBHSearchPillViewHook: ClassHook<SBHSearchPillView> {
    func setNeedsLayout() {
        target.isHidden = true;
    }
}

