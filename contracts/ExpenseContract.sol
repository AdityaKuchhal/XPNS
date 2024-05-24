// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract ExpenseContract {

    address public owner;

    struct Transaction {
        uint id;
        address payable user;
        uint amount;
        string reason;
        uint timestamp;
        bool completed;
    }

    Transaction[] public transactions;

    constructor () {
        owner = msg.sender;  
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    mapping(address => uint) public balances;

    event Deposit(uint indexed _id, address indexed _from, uint _amount, string _reason, uint _timestamp, bool _completed);
    event Withdraw(uint indexed _id, address indexed _to, uint _amount, string _reason, uint _timestamp, bool _completed);

    function deposit(uint _amount, string memory _reason) public payable {
        require(_amount > 0, "Deposit amount should be greater than 0!");
        balances[msg.sender] += _amount;
        transactions.push(Transaction(transactions.length, payable(msg.sender), _amount, _reason, block.timestamp, true));
        emit Deposit(transactions.length - 1, msg.sender, _amount, _reason, block.timestamp, true);
    }

    function withdraw(uint _amount, string memory _reason) public onlyOwner {
        require(balances[msg.sender] >= _amount, "Insufficient balance!");
        balances[msg.sender] -= _amount;
        payable(owner).transfer(_amount);
        transactions.push(Transaction(transactions.length, payable(owner), _amount, _reason, block.timestamp, true));
        emit Withdraw(transactions.length - 1, owner, _amount, _reason, block.timestamp, true);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function getTransactionCount() public view returns (uint) {
        return transactions.length;
    }

    function getTransaction(uint _id) public view returns (uint, address, uint, string memory, uint, bool) {
        require(_id < transactions.length, "Invalid transaction ID");
        Transaction memory t = transactions[_id];
        return (t.id, t.user, t.amount, t.reason, t.timestamp, t.completed);
    }

    function getAllTransactions() public view returns (Transaction[] memory) {
        return transactions;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
}
