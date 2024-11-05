//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 tokenId => string tokenURI) private s_TokenURI;

    constructor() ERC721("Morse", "MRC") {
        s_tokenCounter = 0;
    }

    function mint(string memory tokenUri) public {
        s_TokenURI[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return s_TokenURI[tokenId];
    }

    function getTokensCounter() public view returns (uint256) {
        return s_tokenCounter;
    }
}
