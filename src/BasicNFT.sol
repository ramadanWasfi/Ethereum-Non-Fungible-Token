//SPDX-License-Identifier: MIT

pragma solidity 0.8.27;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721{

    constructor() ERC721("Morse","MRC") {
        
    }

}