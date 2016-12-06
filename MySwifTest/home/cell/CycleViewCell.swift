

import UIKit

class CycleViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: 控件
    fileprivate var imageView:UIImageView?
    
    //MARK: 公共属性
    public var imageArray:[String]?
    public var indexPath:IndexPath? {
        didSet{
            //保镖模式
            guard let imageArray = imageArray else{
                return
            }
            guard let indexPath = indexPath else {
                return
            }
            
            imageView?.image = UIImage(named: "\(imageArray[indexPath.item])")
            imageView?.image?.rightSizeImage(image: (imageView?.image)!, Size: (imageView?.bounds.size)!, completion: { (image) in
                self.imageView?.image = image
            })
           
        }
        
    }
    

    
}
extension CycleViewCell {
    
    fileprivate func setupUI(){
        
        //添加控件
        imageView = UIImageView(frame:bounds)
        
        contentView.addSubview(imageView!)
       

    }
    
}
