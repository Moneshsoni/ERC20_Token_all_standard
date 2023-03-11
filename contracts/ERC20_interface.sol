pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract ERC20Inteface {
    uint totalsupply;

    mapping(address => uint) balances;
    //set the supply 

    //Event balance set time
    event Balance(address _account, uint _amount);
    function setSupply(uint _totalSupply)public{
        totalsupply=_totalSupply;
    }
    // get the supply
    function totalSupply() external view returns (uint256){
        return totalsupply;
    }


    //Set the balance of the account 
    function setBalance(address _account, uint amount)public{
        balances[_account]=amount;
        emit Balance(_account,amount);
    }

    //get the balance
    function balanceOf(address _account) external view returns (uint256){
        return balances[_account];
    }

}