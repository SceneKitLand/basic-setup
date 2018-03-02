import SceneKit

final class FloorNode: SCNNode {

    override init() {
        super.init()

        // infinite floor
        let floorGeometry = SCNFloor()
        floorGeometry.firstMaterial?.diffuse.contents = UIColor.lightGray

        let floorShape = SCNPhysicsShape(geometry: floorGeometry, options: nil)
        let floorBody = SCNPhysicsBody(type: .kinematic, shape: floorShape)

        physicsBody = floorBody
        geometry = floorGeometry
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
