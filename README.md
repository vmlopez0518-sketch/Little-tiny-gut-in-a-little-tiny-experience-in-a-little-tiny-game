# JameGameGameJam

A tiny 2D game I made for a game jam. It's a small room with a couch, a fridge, a speaker and a TV, and you walk around it with a little character. Some of the stuff in the room "talks" when you get close.

I'm new to game dev, so this is basically my first real project. Expect rough edges.

## Controls

| Key | What it does |
| --- | --- |
| A / D (or left / right arrows) | Walk left and right |
| W / Space / Up arrow | Jump |
| S / Down arrow | Fall faster while in the air |

## What's in it

- The character walks, jumps, and flips to face the way you're going. The walking animation only plays while you're moving on the ground.
- Jumping has a bit of coyote time, a jump buffer, and you can let go of the key early to make a shorter jump. I wanted it to feel less stiff than the default template.
- Speech bubbles pop up when you get near the couch, the speaker and the fridge. The couch one needs you to be really close, the others show up from further away.
- The furniture is made of physics bodies so you can bump into it.
- There's music playing from the speaker.

## What I used

- **Godot 4.7** (Mobile renderer, Jolt Physics)
- **GDScript** for all the code
- **AnimationPlayer** for the walking animation
- **CharacterBody2D** for the player, **RigidBody2D** for the furniture, **TileMapLayer** for the floor
- **Sprite2D** for pretty much every drawing, including the speech bubbles
- **AudioStreamPlayer2D** for the music
- **Claude Code** (an AI coding assistant) helped me write and tidy up the scripts while I was learning how Godot works

All the art is hand drawn by me, then I cut out the backgrounds with remove.bg.

## Running it

1. Install [Godot 4.7](https://godotengine.org/download).
2. Open Godot, click Import, and pick the `project.godot` file in this folder.
3. Hit F5 to play.

## Files

- `node.tscn` is the main scene
- `character_body_2d.gd` is the player movement and animation
- `sprite_2d.gd`, `sprite_2d_2.gd`, `sprite_2d_3.gd` make the speech bubbles show up when the player is close. The only difference between them is how close you need to be

## Credits

- Music: `sans.mp3`, not mine. Full credit goes to whoever made it.
- Everything else: me.

## Things I want to fix or add

- The speech bubbles just pop in and out. I'd like them to fade.
- Three copies of almost the same script is silly. I should merge them into one.
- More rooms, more stuff to interact with.
