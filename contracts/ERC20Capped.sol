pragma solidity  0.8.9;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Capped is ERC20("fhsj","fd"),ERC20Capped(10000){

    /**
     * @dev See {ERC20-_mint}.
     */
    function _mint(address account, uint256 amount) internal virtual override(ERC20Capped,ERC20) {
        require(ERC20.totalSupply() + amount <= cap(), "ERC20Capped: cap exceeded");
        super._mint(account, amount);
    }  

    function MintToken(address account, uint256 amount)public{
        _mint(account,amount);
    }

}