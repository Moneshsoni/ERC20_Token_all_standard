pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Snapshot is ERC20("snapshot","sn"), ERC20Snapshot,Ownable{

    //Mint the tokens
    function MintToken(address _account,uint amount)public{
        _mint(_account,amount);
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);
    }


}