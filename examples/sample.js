// Retro Neon 80s Theme - Sample JavaScript
// This file demonstrates the vibrant syntax highlighting

/**
 * Classic 80s Arcade Game Character
 * @class RetroHero
 */
class RetroHero {
    constructor(name, level = 1) {
        this.name = name;
        this.level = level;
        this.score = 0;
        this.lives = 3;
        this.powerUps = [];
    }

    // Collect coins and increase score
    collectCoin(value) {
        this.score += value;
        console.log(`💰 ${this.name} collected ${value} coins! Total: ${this.score}`);
    }

    // Level up with neon effects
    levelUp() {
        this.level++;
        const bonusPoints = this.level * 100;
        this.score += bonusPoints;

        return {
            newLevel: this.level,
            bonus: bonusPoints,
            message: `🎮 LEVEL UP! Now at level ${this.level}!`
        };
    }

    // Power up collection
    addPowerUp(powerUp) {
        if (this.powerUps.length >= 5) {
            console.warn('⚠️ Maximum power-ups reached!');
            return false;
        }

        this.powerUps.push(powerUp);
        return true;
    }
}

// Game constants
const GAME_CONFIG = {
    maxScore: 999999,
    initialLives: 3,
    coinValues: [10, 50, 100],
    powerUpTypes: ['SPEED', 'SHIELD', 'DOUBLE_SCORE']
};

// Initialize game
const player = new RetroHero('PLAYER_ONE', 1);

// Sample gameplay
player.collectCoin(50);
player.collectCoin(100);

const levelUpResult = player.levelUp();
console.log(levelUpResult.message);

// Arrow function example
const calculateBonus = (score, multiplier = 2) => {
    return score * multiplier;
};

// Template literals with neon colors
const gameStatus = `
🎮 === RETRO ARCADE STATUS === 🎮
Player: ${player.name}
Level: ${player.level}
Score: ${player.score}
Lives: ${'❤️'.repeat(player.lives)}
================================
`;

console.log(gameStatus);

// Async example - Loading retro graphics
async function loadRetroAssets() {
    try {
        const sprites = await fetch('/api/sprites');
        const sounds = await fetch('/api/sounds');

        return {
            sprites: await sprites.json(),
            sounds: await sounds.json()
        };
    } catch (error) {
        console.error('❌ Failed to load assets:', error);
        throw new Error('Asset loading failed');
    }
}

// Export for use
export { RetroHero, GAME_CONFIG, calculateBonus, loadRetroAssets };
