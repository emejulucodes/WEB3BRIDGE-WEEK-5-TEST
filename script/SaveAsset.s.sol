// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {SaveAsset} from "../src/SaveAsset.sol";

contract SaveAssetScript is Script {

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address tokenAddress = vm.envAddress("TOKEN_ADDRESS");
        vm.startBroadcast(deployerPrivateKey);
        new SaveAsset(tokenAddress);
        vm.stopBroadcast();
    }
}

