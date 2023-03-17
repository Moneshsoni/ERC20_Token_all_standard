pragma solidity 0.8.9;
import "./erc20Contract.sol";
contract ERC20Factory{

    address[] public tokenAddress;
    function deploy20Contract(
        string calldata name,
        string calldata symbol,
        uint8 decimals,
        uint256 initialSupply
    ) external returns (myERC20 creditsAddress) {

        myERC20 newCredits = new myERC20(
            name,
            symbol,
            decimals,
            initialSupply
        );

        tokenAddress.push(address(newCredits));
        return newCredits;
    }
}