pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";import "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";
contract FlashMint is ERC20,ERC20FlashMint{
    constructor()ERC20("token","tk"){}

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
    function deposit()public payable{

    }

    function transferEth()public payable{
        payable(msg.sender).transfer(msg.value);
    }
}