//: Playground - noun: a place where people can play

import UIKit

var str = "swift rules"
let coolBlue = UIColor(red: 52/255.0, green: 73/255.0, blue: 94/255.0, alpha: 1.0)

// Label Setup
let awesomeLabel = UILabel(frame: CGRect(x: 0, y: 66, width: 200, height: 44))
awesomeLabel.text = str
awesomeLabel.textAlignment = NSTextAlignment.center
awesomeLabel.textColor = UIColor.white

// Label Style
awesomeLabel.backgroundColor = coolBlue
awesomeLabel.layer.masksToBounds = true
awesomeLabel.layer.cornerRadius = 10.0

// Adding into a view
var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
view.addSubview(awesomeLabel)
