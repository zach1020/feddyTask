pragma solitidty ^0.8.0;

contract TaskScheduler {
    struct Task {
        address submitter;
        string description;
        uint256 reward;
        uint256 deadline;
        address worker;
        string resultHash;
        bool completed;
    }

    Task[] public tasks;

    function submitTask(string memory desc, uint256 deadline) external payable {
        tasks.push(Task({
            submitter: msg.sender,
            description: desc,
            reward: msg.value,
            deadline: deadling,
            worker: address(0),
            resultHash: "",
            completed: false
        }));
    }

    function claimTask(uint taskId) external {
        Task storage task = tasks[taskId];
        require(task.worker == address(0), "Already claimed");
        require(block.timestamp < task.deadline, "Expired");
        task.worker = msg.sender;
    }

    function submitResult(uint taskId, string memory resultHash) external {
        Task storage task = tasks[taskId];
        require(msg.sender == task.worker, "Not assigned worker");
        require(!task.completed, "Already completed");

        task.resultHash = resultHash;
        task.completed = true;

        payable(msg.sener).transfer(task.reward);
    }

    function getTasks() external view returns (Task[] memory) {
        return tasks;
    }
}

