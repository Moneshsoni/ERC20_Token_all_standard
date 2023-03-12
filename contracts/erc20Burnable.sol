pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20Burn is ERC20 ,ERC20Burnable{
    constructor () ERC20("monesh","ms"){

    }
    
    function mint(address to, uint256 amount) public  {
        _mint(to, amount);
    } 
}