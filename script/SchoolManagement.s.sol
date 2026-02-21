// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {SchoolManagement} from "../src/SchoolManagement.sol";

contract SchoolManagementScript is Script {

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        uint256 fee100Level = vm.envUint("FEE_100_LEVEL");
        uint256 fee200Level = vm.envUint("FEE_200_LEVEL");
        uint256 fee300Level = vm.envUint("FEE_300_LEVEL");
        uint256 fee400Level = vm.envUint("FEE_400_LEVEL");
        vm.startBroadcast(deployerPrivateKey);
        new SchoolManagement(fee100Level, fee200Level, fee300Level, fee400Level);
        vm.stopBroadcast();
    }
}

