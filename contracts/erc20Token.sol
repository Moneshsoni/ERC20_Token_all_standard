pragma solidity  0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyToken is ERC20, Ownable{

    uint public bigNumber;
  
    constructor(string memory name,string memory symbol, uint _bigNumber)ERC20(name,
      symbol) {
        bigNumber = _bigNumber;
      }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}