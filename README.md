# Morse
Simple Ethereum smart contract for Non-fungible token (NFT) ERC-721 Stored Off-Chain 


## Installation

### Prerequisites
   - [Foundry](https://book.getfoundry.sh/getting-started/installation.html)

### Steps
1. Clone the repository 
   ```shell
    git clone https://github.com/ramadanWasfi/Ethereum-Fungible-Token.git
   ``` 
   ``` shell
   cd Ethereum-Non-Fungible-Token
   ```

2. install the dependencies 
   ```shell
    forge install
   ``` 

### Compilation
Compile the smart contracts using foundry:
```shell
forge build
``` 

### Testing
Run the foundry tests
```shell
forge test
```

### Deployment
#### Local Test Network (Anvil)
1. Run an instance of Anvil network
   ```shell
      anvil
    ```
2. Open a new Terminal to deploy the contracts from it and type the following 
   - Create an account for deployment with private key and password
   ```shell
   cast wallet import testAccount --interactive
   ```
   - copy a private key from Anvil accounts and paste it in terminal prompt
   ``` shel
       Enter private key:
   ```
   - enter new password for the account in the terminal prompt
   ``` shel
       Enter password:
   ```
   - now you will have an account with its address you can use the account name and address for deployment
   ``` shell
   testAccount keystore was saved successfully. 
   Address: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
   ```
   - `Account Name` : testAccount
   - `Account Address`: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
   
   - deploy with the previously created account and the password
    ``` shell
    forge script script/DeployBasicNFT.s.sol  --rpc-url http://localhost:8545 --account testAccount --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 --broadcast -vvv
   ```
   - enter the previously created password for this account
   ```shell
   ==========================
   Enter keystore password:
   ```
   - Smart contract deployed at local test network (Anvil) at 
   ```shell
   ##### anvil-hardhat
   ✅  [Success]Hash: 0xa135ad86ff049147745c5527e1ea945f1a797ecdd77f0ac817856e5e5058ff91
   Contract Address: 0x5FbDB2315678afecb367f032d93F642f64180aa3
   ```
## Security Considerations
- Don't use this smart contract in production environment without auditing
- you have to save NFT data in decentralized storage solutions like arweave or filecoin or a pining service like NFT.Storage, Pinata 

## Upgradeability
- this contract is not an upgradable contract. Once you deploy it you can't change its logic

## Disclaimer
- This project is for learning purposes only and not intended for production use



