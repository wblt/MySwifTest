

import UIKit

class scrollCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.white
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    fileprivate let headView:CLHeadCollectionView = CLHeadCollectionView(frame:CGRect(x: 0, y: 0, width: KScreenWidht, height: KScreenWidht/2))
    
}
extension scrollCell {
    
    fileprivate func setupUI(){
        
        contentView.addSubview(headView)
        
    }
    
 
}
