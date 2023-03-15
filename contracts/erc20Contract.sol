pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myERC20 is ERC20{
    address[] public tokenAddress;
    constructor(
        string memory name, 
        string memory symbol,
        uint8 decimals, 
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply * (10**uint256(decimals)));
    }
}

