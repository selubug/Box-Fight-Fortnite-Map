# Box-Fight-Fortnite-Map
Box fight maps peaking at over 35k concurrent players, featured by large youtuber ( find other maps in README )
link to map https://fortnite.gg/island/8760-5124-3263
link to others https://fortnite.gg/creator/scarj
YOUTUBE video feature https://www.youtube.com/watch?v=JLLwoqYCG6A&t=47s


 UEFN Historical Powers Battle Royale

A multiplayer Fortnite experience built in **Unreal Editor for Fortnite (UEFN)** using **Verse**.

Each player is assigned a unique historical figure or themed character with a custom ability, loadout, class, UI identity, and gameplay mechanic. The project combines PvP combat with character-specific powers, custom HUD elements, cinematics, movement effects, teleportation, visual effects, and scripted gameplay systems.

## Gameplay Concept

At the start of the match, players are randomly assigned one of multiple unique characters.

Each character has a different gameplay mechanic or ability, such as:

- Special weapons
- Custom classes
- Damage effects
- Teleportation
- Healing
- Shield manipulation
- Movement abilities
- Cinematic abilities
- Visual effects
- Team changes
- Remote-triggered powers

## Key Features

- 20+ unique playable characters
- Random character assignment
- Character-specific abilities
- Custom player HUD system
- Custom textures and UI cards
- Player elimination tracking
- Spectator HUD support
- Team and class management
- Custom loadouts
- Character-specific item granters
- Healing and shield mechanics
- Teleportation abilities
- Damage manipulation
- Movement modifiers
- Cinematic sequences
- Visual effects
- Audio effects
- Emote-triggered abilities
- Remote-controlled abilities
- Player state tracking
- Dynamic barriers and arena setup

## Technologies

- **Unreal Editor for Fortnite**
- **Verse**
- **Unreal Engine**
- **Fortnite Creative Devices**
- **Fortnite UI API**

## Verse Systems

### Random Character Assignment

At the beginning of a match, the game randomly assigns each player a character from the available character pool.

Once selected, that character is removed from the available array so another player cannot receive the same assignment.

The system then configures the player's:

- HUD
- Team
- Class
- Weapons
- Items
- Character-specific state

### Player State Management

The Verse controller tracks several pieces of information for every player, including:

- Assigned character
- Alive/dead status
- HUD selection
- Spectator state
- Character abilities

Player-specific information is stored using Verse maps.

### Character Abilities

Abilities are implemented using a combination of Verse and Fortnite Creative devices.

Depending on the character, the system can interact with:

- `item_granter_device`
- `class_and_team_selector_device`
- `teleporter_device`
- `movement_modulator_device`
- `damage_amplifier_powerup_device`
- `visual_effect_powerup_device`
- `cinematic_sequence_device`
- `signal_remote_manager_device`
- `automated_turret_device`
- `explosive_device`
- `mutator_zone_device`
- `audio_player_device`

This lets each character behave differently without requiring a separate Fortnite project for every ability.

## Custom UI

The project includes a custom HUD system built with the Verse UI API.

Each character can display unique textures and information to the player.

The UI system also supports displaying information while spectating another player.

## Example Ability Systems

### Healing

Certain characters can regenerate health and shields over time through custom Verse loops.

### Teleportation

Some abilities temporarily teleport players to another location and return them after a timer.

### Area Effects

Abilities can affect nearby players through:

- Audio
- Damage
- Stasis
- Movement changes
- Explosions
- Visual effects



The main gameplay controller can be found in:

Verse/HistoricalPowers.verse

The Verse code handles character assignment, player state, eliminations, abilities, HUDs, teams, classes, and Creative device integration.

Technical Highlights

One of the main challenges of the project was creating many completely different character abilities inside a single multiplayer system.

Instead of building each character as an isolated mechanic, the game uses a central Verse controller that keeps track of which character belongs to each player and activates the appropriate systems when gameplay events occur.

The project demonstrates experience with:

Event-driven programming
Multiplayer game logic
Player state management
Verse maps and arrays
Randomized gameplay systems
UI programming
Gameplay device integration
Asynchronous Verse functions
Event subscriptions
Custom ability systems
What I Worked On
Verse gameplay programming
Character ability design
Multiplayer systems
Custom UI
Player state tracking
Elimination logic
Character assignment
Team and class systems
Device integration
Gameplay balancing
UEFN implementation
