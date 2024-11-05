//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {BasicNFT} from "../src/BasicNFT.sol";
import {Test} from "forge-std/Test.sol";
import {DeployBasicNFT} from "../script/DeployBasicNFT.s.sol";

contract BasciNFT_Test is Test {
    DeployBasicNFT public deployer;
    BasicNFT public NFT;
    string public constant URI = "ipfs://Fake URL";
    address user1;

    function setUp() public {
        deployer = new DeployBasicNFT();
        NFT = deployer.run();
        user1 = makeAddr("USER1");
    }

    function testNFTDeployedWithCorrectName() public view {
        string memory name = "Morse";

        string memory tokenName = NFT.name();

        assertEq(name, tokenName);
    }

    function testNFTDeployedWithCorrectSymbol() public view {
        string memory symbol = "MRC";

        string memory tokenSymbol = NFT.symbol();

        assertEq(symbol, tokenSymbol);
    }

    function testInitialTokenCounterEqualsZero() public view {
        uint256 tokenCounter = NFT.getTokensCounter();
        assertEq(tokenCounter, 0);
    }

    function testMint() public {
        vm.prank(user1);

        NFT.mint(URI);

        assertEq(keccak256(abi.encodePacked(URI)), keccak256(abi.encodePacked(NFT.tokenURI(0))));
        assertEq(NFT.ownerOf(0), user1);
        assertEq(NFT.getTokensCounter(), 1);
        assertEq(NFT.balanceOf(user1), 1);
    }
}
