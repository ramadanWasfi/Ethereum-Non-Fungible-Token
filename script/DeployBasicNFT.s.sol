//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Script} from "forge-std/Script.sol";
import {BasicNFT} from "../src/BasicNFT.sol";

contract DeployBasicNFT is Script {
    function run() public returns (BasicNFT) {
        vm.startBroadcast();
        BasicNFT nft = new BasicNFT();
        vm.stopBroadcast();
        return nft;
    }
}