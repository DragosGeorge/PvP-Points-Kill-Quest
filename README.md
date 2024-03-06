# PvP Points Kill Quest

This quest system is designed to handle missions where players need to kill other players to complete tasks and earn rewards.

## Features
- Multiple missions based on player levels.
- Kill count tracking.
- Waiting time between kills consideration.
- Reward distribution upon completing missions.

## Usage
1. Players receive letters at specific levels prompting them to kill other players to complete missions.
2. Players must kill the required number of players after the timeout has passed.
3. After completing the mission, players receive rewards.

## Instructions
1. **Installation:** Copy the provided quest script into your game server's quest system directory.
2. **Configuration:** Adjust the quest parameters, such as kill count, waiting time, and rewards according to your game's balance and design requirements.
3. **Integration:** Integrate the quest system into your game server by loading it during server startup or using in-game commands.
4. **Testing:** Thoroughly test the quest system to ensure it functions as expected and doesn't introduce any unintended bugs or issues.

## Quest Script Overview
- **`quest pvp_points_kill`**: Main quest handler.
- **`state start`**: Initial state where player login or level up events are checked to trigger missions.
- **`state level_90_letter`, `state level_91_letter`**: Letter states for level-specific missions, providing mission details to players.
- **`state go_to_level90_mission`, `state go_to_level91_mission`**: Mission states where players need to kill other players to complete tasks and earn rewards.
