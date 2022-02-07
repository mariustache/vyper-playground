keyHash: bytes32
fee: uint256

interface VRFConsumerBase:
    def requestRandomness(keyHash: bytes32, fee: uint256) -> bytes32: view
    def fulfillRandomness(reqId: bytes32, randomness: uint256): view