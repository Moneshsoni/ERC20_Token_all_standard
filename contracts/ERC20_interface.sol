pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract ERC20Inteface {
    uint totalsupply;
    //set the supply 
    function setSupply(uint _totalSupply)public{
        totalsupply=_totalSupply;
    }
    // get the supply
    function totalSupply() external view returns (uint256){
        return totalsupply;
    }
}