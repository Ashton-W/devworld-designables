import UIKit


enum CompassPoint {
    case North, South, East, West
}

enum NPCType: String {
    case Player = "Player"
    case Enemy = "Enemy"
}


@IBDesignable
class SwiftView: UIView {
    
    @IBInspectable var number: Int = 0
    @IBInspectable var direction: CompassPoint = .North
    @IBInspectable var npc: NPCType = .Player

}

// no extra types in Swift - could be possible though.
