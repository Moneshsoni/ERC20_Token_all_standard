pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Pause is ERC20("fhsj","fd"), ERC20Pausable{
    
    function pause() public  {
        _pause();
    }

    function unpause() public  {
        _unpause();
    }
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20,ERC20Pausable) {
        super._beforeTokenTransfer(from, to, amount);

        require(!paused(), "ERC20Pausable: token transfer while paused");
    }
}