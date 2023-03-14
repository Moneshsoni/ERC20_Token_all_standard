pragma solidity  0.8.9;
contract SendEther{
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