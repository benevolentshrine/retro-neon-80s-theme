"""
Retro Neon 80s Theme - Sample Python
Demonstrates vibrant syntax highlighting for Python
"""

from typing import List, Dict, Optional
import asyncio
from dataclasses import dataclass


@dataclass
class NeonCityCharacter:
    """A character living in the neon city"""
    name: str
    level: int = 1
    credits: float = 0.0
    cyberware: List[str] = None
    
    def __post_init__(self):
        if self.cyberware is None:
            self.cyberware = []
    
    def earn_credits(self, amount: float) -> None:
        """Earn credits from missions"""
        self.credits += amount
        print(f"💰 {self.name} earned {amount} credits! Total: {self.credits}")
    
    def install_cyberware(self, implant: str) -> bool:
        """Install new cybernetic enhancements"""
        if len(self.cyberware) >= 5:
            print("⚠️ Maximum cyberware capacity reached!")
            return False
        
        self.cyberware.append(implant)
        print(f"🔧 Installed: {implant}")
        return True


class RetroDatabase:
    """Neon city database system"""
    
    def __init__(self, db_name: str):
        self.db_name = db_name
        self.data: Dict[str, NeonCityCharacter] = {}
        self.transaction_count = 0
    
    def add_character(self, character: NeonCityCharacter) -> None:
        """Add character to database"""
        self.data[character.name] = character
        self.transaction_count += 1
        print(f"✅ Character {character.name} added to {self.db_name}")
    
    def find_character(self, name: str) -> Optional[NeonCityCharacter]:
        """Search for character by name"""
        return self.data.get(name)
    
    def get_stats(self) -> Dict[str, int]:
        """Get database statistics"""
        return {
            'total_characters': len(self.data),
            'total_transactions': self.transaction_count,
            'avg_level': sum(c.level for c in self.data.values()) / len(self.data) if self.data else 0
        }


# Game constants
GAME_SETTINGS = {
    'max_level': 99,
    'starting_credits': 1000.0,
    'cyberware_types': [
        'NEURAL_LINK',
        'OPTIC_ENHANCEMENT',
        'REFLEX_BOOSTER',
        'ARMOR_PLATING'
    ],
    'mission_rewards': [500, 1000, 2500, 5000]
}


async def run_neon_city_simulation():
    """Run the retro city simulation"""
    print("🌆 === NEON CITY ONLINE === 🌆")
    
    # Create database
    db = RetroDatabase("NEON_CITY_DB")
    
    # Create characters
    characters = [
        NeonCityCharacter("RUNNER_01", level=5, credits=2500.0),
        NeonCityCharacter("HACKER_X", level=8, credits=5000.0),
        NeonCityCharacter("STREET_SAM", level=3, credits=1200.0)
    ]
    
    # Add to database
    for char in characters:
        db.add_character(char)
        await asyncio.sleep(0.1)
    
    # Install cyberware
    runner = db.find_character("RUNNER_01")
    if runner:
        runner.install_cyberware("REFLEX_BOOSTER")
        runner.earn_credits(1000.0)
    
    # Display stats
    stats = db.get_stats()
    print(f"\n📊 Database Stats:")
    for key, value in stats.items():
        print(f"  {key}: {value}")
    
    print("\n🎮 Simulation complete!")


def calculate_mission_reward(difficulty: int, multiplier: float = 1.5) -> float:
    """Calculate mission rewards with multiplier"""
    base_reward = GAME_SETTINGS['mission_rewards'][min(difficulty, 3)]
    return base_reward * multiplier


# List comprehension example
high_level_chars = [
    char.name 
    for char in [
        NeonCityCharacter("TEST_1", level=10),
        NeonCityCharacter("TEST_2", level=5),
        NeonCityCharacter("TEST_3", level=15)
    ] 
    if char.level > 8
]


if __name__ == "__main__":
    # Run the simulation
    print("🚀 Starting Neon City...")
    asyncio.run(run_neon_city_simulation())
    
    # Display high level characters
    print(f"\n⭐ High level operatives: {', '.join(high_level_chars)}")
