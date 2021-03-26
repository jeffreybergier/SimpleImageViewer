import Foundation
import UIKit

public typealias ImageCompletion = (UIImage?) -> Void
public typealias ImageBlock = (@escaping ImageCompletion) -> Void

open class ImageViewerConfiguration {
    public var image: UIImage?
    public var imageView: UIImageView?
    public var imageBlock: ImageBlock?
    
    public typealias ConfigurationClosure = (ImageViewerConfiguration) -> ()
    
    public init(configurationClosure: ConfigurationClosure) {
        configurationClosure(self)
    }
    
    public init(image: UIImage?, imageView: UIImageView?, imageBlock: ImageBlock?) {
        self.image = image
        self.imageView = imageView
        self.imageBlock = imageBlock
    }
}
