pragma solidity ^0.5.2;

import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is Initializable, ERC20, ERC20Detailed {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    function initialize(address sender) public initializer {
        ERC20Detailed.initialize("SimpleToken", "SIM", DECIMALS);
        _mint(sender, INITIAL_SUPPLY);
    }

    uint256[50] private ______gap;
}
