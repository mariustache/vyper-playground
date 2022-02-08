# @version ^0.3.0

from interfaces import VRFConsumerBase

randomNumber: public(uint256)
vrfCoordinator: public(address)
tokenAddress: public(address)
vrfContract: VRFConsumerBase

@external
def __init__(_vrfCoordinator: address, _tokenAddr: address):
    self.vrfCoordinator = _vrfCoordinator
    self.tokenAddress = _tokenAddr
    self.vrfContract = VRFConsumerBase(_vrfCoordinator)

@external
def getRandomNumber(keyHash: bytes32, fee: uint256):
    requestId: bytes32 = self.vrfContract.requestRandomness(keyHash, fee, fee)

@internal
def fulfillRandomness(reqId: bytes32, randomness: uint256):
    self.randomNumber = randomness
