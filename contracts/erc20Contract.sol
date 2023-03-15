pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myERC20 is ERC20{
    uint public startDate;
    uint public endDate;
    constructor(
        string memory name, 
        string memory symbol,
        uint8 decimals, 
        uint256 initialSupply,
        uint _startDate,
        uint _endDate
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply * (10**uint256(decimals)));
        startDate = _startDate;
        endDate = _endDate;
    }
}

