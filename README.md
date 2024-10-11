# Sample Escrow Project

This project demonstrates a basic Escrow Dapp . It comes with a escrow contract,a script that deploys that contract and a front end to interact with smart contract.

Try running some of the following tasks:

```shell
npx hardhat clean
```
To deploy the smart contract create a .env file paste your alchemy key and private key as shown below .
```
ALCHEMY_KEY ="<Alchemy-key>"
PRIVATE_KEY = <private-key>
```
then run following command 
```
npx hardhat run scripts/deploy.js --network sepolia
```
After deploying the contract you get contract address in console copy that and paste it in ContractAddress which is present in front_end/src/App.js 

To interact with the smart contract use front end by doing cd into front_end and run below command 
```
npm start
```
first connect the wallet using connect wallet button and make sure your are on sepolia network and start interacting with the dapp .

