pragma solidity  0.8.9;
contract SendEther{

    //Deposit functoion
    mapping(address => uint) public balances;

    function Deposit()payable public{
        //Restrict ether in 1
        require(msg.value>= 1 ether, "require minimum value is 1 ether");
        //A address can't deposit twice
        require(balances[msg.sender]==0,"A address can deposit Twise");
        balances[msg.sender] += msg.value;
    }

    function getCon()public view returns(bool){
        return balances[msg.sender]==0;
    }
    
    //Send ether via transfer methods
    function sendEthTransfer(address payable _addr)public payable{
        _addr.transfer(msg.value);
    }
    

    //Send ether via send methods
    function sendEthSend(address payable _addre)public payable{
        bool send = _addre.send(msg.value);
        require(send,"Transaction is failed");     
    }

    //send via call methods eth

    function sendViaCall(address payable _addr)public payable{
        (bool sent, bytes memory data)=_addr.call{value: msg.value}("");
        require(sent,"Transaction failed");
    }

    // function getBalance(address payable _addr)public view returns(uint){
    //     return _addr.balance(this);
    // }
}