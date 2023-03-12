pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
contract Votes is ERC20,ERC20Votes{
    constructor(string memory name) ERC20("monesh","ms"),ERC20Votes(name) {}
    
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20,ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);

    }

    function _burn(address account, uint256 amount) internal virtual override(ERC20,ERC20Votes) {
        super._burn(account, amount);
    }

    function _mint(address account, uint256 amount) internal virtual override(ERC20,ERC20Votes) {
        super._mint(account, amount);
        require(totalSupply() <= _maxSupply(), "ERC20Votes: total supply risks overflowing votes");

    }
}