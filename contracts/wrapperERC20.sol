pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Wrapper.sol";
contract Wrapper is ERC20 ,ERC20Wrapper{

    constructor(IERC20 wrappedToken)
    ERC20("Wrapped Token", "wTKN")
    //    ERC20Permit("Wrapped Token")
    ERC20Wrapper(wrappedToken)
    {}
    function decimals() public view virtual override(ERC20,ERC20Wrapper) returns (uint8) {
        try IERC20Metadata(address(underlying)).decimals() returns (uint8 value) {
            return value;
        } catch {
            return super.decimals();
        }
    }
}