# ZTweaks for Black Ops III

**Optional gameplay settings for Black Ops III Zombies**

ZTweaks v1.0, by Xep.

[**Subscribe on the Steam Workshop**](https://steamcommunity.com/sharedfiles/filedetails/?id=3814908789)

Set up the Zombies match you want to play, from the lobby or pause menu. Start on a
different round, bring a different loadout, speed up the horde, change the perk limit,
open the ordinary doors, or let the next game start itself. Change only the rules you
want: DEFAULT leaves that part of the map in control.

- Match setup, automatic restart and rotation among installed maps.
- Player health, movement, damage, points, perks and supported revive rules.
- Starting weapon classes, upgrades, ammo, grenades and equipment.
- Ordinary zombie health, speed, population and spawn timing.
- Startup power and doors, Mystery Box and power-up controls.
- GobbleGum use, duration and round-limit multipliers.
- Supported challenge rules and personal character preferences.
- Saved settings, host-aware controls and a compatibility report for the current map.

## Requirements

Black Ops III Zombies with Workshop mods. No other Z mod is required. ZTweaks is
**mod-only**: it includes gameplay scripts and a Lua settings menu. In co-op, the host
controls shared gameplay rules; each player needs a compatible settings UI to send
their own character preference. A missing preference reply is treated as RANDOM.

## Install

1. Subscribe on the [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3814908789).
2. Select **ZTweaks** in Black Ops III's **Mods** menu.
3. Open **ZTWEAKS SETTINGS** from the Zombies lobby or pause menu.

ZTweaks is a mod, not a loose `custom_scripts` or `ui_scripts` installation. Players
install through Workshop; there is no separate script edition to copy into a client.

Black Ops III enables one selected mod at a time. For several Z mods together, select
[ZBundle](https://steamcommunity.com/sharedfiles/filedetails/?id=3802815997) instead of
the standalone item. Settings saved under one Workshop mod are separate from those
saved under another, including the standalone mod and ZBundle.

## Usage

Open **ZTWEAKS SETTINGS** in the Zombies lobby, change the rules you want, then start
the match normally. Open the same entry in the pause menu to inspect or change them
during play. The row's application boundary tells you when a change can take effect.

Change tabs with **Q/E**, **LB/RB**, or the mouse. Hold to keep cycling, including across
the first/last tab. Hover or select a row to read its description and application
boundary. NEXT SPAWN, NEXT ROUND, and NEXT MATCH settings apply at those boundaries,
not immediately just because the menu accepted a change.

The **HOST / CLIENT / UNKNOWN** indicator identifies your menu authority. Host-owned
rows are locked for clients or unknown authority; personal character preferences remain
editable through the ordinary settings entry. A client sees **HOST VALUE UNAVAILABLE**
where there is no authoritative value to display, not their own local setting presented
as the host's. Disabled/forced rows retain focus and explanations but hide selector arrows.

Use the changed-settings view, Reset Tab, Randomize, and Reset All to manage your setup.
Bulk actions ask for confirmation and respect the same host and row locks. Live
availability changes preserve selection and scrolling. Menu changes are saved in the
active mod's profile storage.

## Match setup and restarting

**Starting Round** and **Starting Points** are independent. GAME DEFAULT retains the
map's calculation, including BO3's normal starting-round points. **Headshots Only** uses
the standard Zombies rule. **Game Start Delay** adds a wait before ordinary zombies
spawn; it does not skip an intro or remove the map's own opening sequence.

**Auto Restart Level** waits for normal game-over results, returns to the lobby, and
starts another match. **Next Map** independently selects CURRENT MAP, RANDOM STOCK,
RANDOM CUSTOM or RANDOM ALL from installed maps. Random choices avoid the current map
when another valid one exists. With Auto Restart off, Next Map changes the lobby
selection without launching it. Manual End Game does not automatically start a match.

## Player rules and perks

**Perk Limit** can retain the map's limit, set a number or remove it. An explicit
ZTweaks limit takes precedence over ZShare's while retaining map-added perk slots.
**Random Starting Perks** gives each player a separate, non-duplicated selection from
registered perks; **Start With All Perks** takes precedence over it.

Health and movement scale from normal values. **Point Gain** changes positive awards,
not purchase costs. Weapon and melee damage have separate multipliers. Standard fall
damage can be scaled or disabled, explosive self-damage can be prevented, and Spawn
Protection adds a short period of damage immunity after spawning.

Revive Time and Bleed-out Time scale the map's standard timers. Down Limit controls
ordinary co-op downs, not solo auto-revives or special roles. Perk-loss and weapon-
retention options require safe support; a menu choice does not bypass private map
inventory or last-stand systems. Read the compatibility reason when a row is unavailable.

## Starting loadouts

Choose a primary starting **weapon class** and an optional secondary class. ZTweaks
uses weapons registered by the current map; if a class is unavailable it keeps the
map's default. Starting Weapon Upgraded can Pack-a-Punch either selected slot or both
where a safe upgraded variant exists.

Starting Ammo sets the initial fill, including EMPTY. Max Reserve Ammo scales native
reserve grants while keeping the weapon's magazine and ammo type; asset limits may
cap the result. Grenade/equipment type, starting count and carried capacity are separate
settings. With both count and capacity set, the lower count wins. An unsupported item
is not replaced with a different equipment type.

## Zombies and round pacing

Zombie Health and Speed scale the map's normal round curves. Each has a RANDOM choice
that selects a listed percentage for the match. **Zombies Per Round** changes standard
population; **Zombie Spawn Rate** changes the delay between ordinary spawns, with higher
rates shortening that delay.

**Round Delay** sets the standard wait between rounds. INSTANT removes the wait, not
the round-change presentation or scripted events. Special enemies, objective spawns and
special rounds remain under the map's own rules.

## Power, doors and the Mystery Box

**Start With Power On** activates compatible stock consumers, including published power
zones. Generator counters and activation rituals remain map-owned; downstream systems
that normally listen to power can still unlock through that path.

**Start With Doors Open** opens ordinary purchasable doors, barriers, debris and supported
power-gated blockers through their normal paths after spawning. It does not complete
Easter eggs or force open kill-counter/custom quest blockers.

**Mystery Box Quality** can exclude registered wonder weapons, favor stronger registered
weapons, or use the full map pool while retaining ownership and quest checks. **Mystery
Box Lock** prevents normal random relocation, not scripted quest moves.

## Power-ups

Ground Time controls how long a normal drop waits before flashing; Effect Time scales
registered timed effects. Stacking chooses what an extra active power-up does:
**REFRESH** restarts its duration, **EXTEND** adds time, and **IGNORE** leaves the current
timer alone. Custom/infinite quest-drop lifetimes and Temporal Gift remain authoritative.

Drop Rate changes how quickly the regular score threshold is reached. Drop Cap separately
limits those regular drops per round. Boss rewards, random kill drops and scripted quest
power-ups are not all folded into that same rule.

## GobbleGums

Three independent multipliers affect gums according to their registered limit: **Uses**
for activation counts, **Time** for durations, and **Rounds** for round counts. A 200%
setting doubles that kind of limit; values round to at least one use, second or round.
Event-limited gums are unchanged. These apply to the next gum, not a refill or rewrite
of an already active effect.

## Challenges

The challenge page offers restrictions such as No Perks, No Pack-a-Punch, No Mystery
Box and One-Box Challenge where a safe map control exists. Random Starting Loadout
chooses separately for each player; explicit primary/secondary choices take precedence.
Randomized Rules selects one compatible shared rule without replacing explicit choices.

Starting-room restrictions, wall-only acquisition, gun progression and private map
systems can be unavailable. The compatibility report is authoritative: listing a rule
does not mean ZTweaks can safely override every quest reward or custom inventory.

## Character preferences

Save named preferences separately for **Shadows of Evil**, **Primis** (The Giant through
Revelations), **Origins**, and **Ultimis** (the other seven Chronicles maps, including
Moon). The host wins a contested preference; tied non-hosts draw randomly. RANDOM
(VANILLA) keeps the initial character unless displaced, then receives a remaining one.
Required co-op story roles take precedence; characters are not duplicated.

Swaps use the map's identity callback after normal spawn and do not change the intro.
Custom casts need an explicit compatible map adapter; unknown casts stay untouched.
See [the character settings](SETTINGS.md#characters) for every name and family.

## Configuration and saved settings

Configure through the menu. [SETTINGS.md](SETTINGS.md) lists every dvar, default, choice
and application boundary. GAME DEFAULT is not the same as forcing 100%: default leaves
the map's behavior alone, while an explicit setting requests an override.

| Boundary | When the setting can apply |
| --- | --- |
| NEXT MATCH | Set before starting; it does not rebuild a running match. |
| NEXT SPAWN / NEXT DOWN | The next qualifying player event. |
| NEXT ROUND | The next standard round calculation. |
| NEXT DROP / NEXT POWER-UP / NEXT GUM | The next qualifying drop, pickup or gum. |
| NEXT GAME OVER | The next normal completed-game transition. |

Selections persist in the active mod's profile storage. Standalone ZTweaks and ZBundle
have separate saved settings because they are different selected mods. The host's
values govern shared rules; a joining client's local values do not replace them.

Use the changed-settings view to inspect overrides and Reset to return to inherited
defaults. Reset does not undo an event already performed, such as a door opened at
match start; begin a fresh match to restore the map.

## Compatibility and other Z mods

Enabled settings check the systems exposed by the map. The **COMPATIBILITY REPORT**
shows active, partially applied, unavailable, or conflicting requests and their reasons.
Missing capabilities leave map behavior intact. Scripted quest progression, temporary
bodies, and unknown inventory/last-stand owners are not replaced to force a setting on.
Ordinary custom-map tweaks use compatible registered systems; character adaptation is
a separate, explicit map integration.

- [ZPause on GitHub](https://github.com/Xeptix/ZPauseT7) adds a synced co-op pause.
- [ZShare on GitHub](https://github.com/Xeptix/ZShareT7) adds weapon, point, and purchase sharing.
- [ZStats on GitHub](https://github.com/Xeptix/ZStatsT7) adds a stats HUD, personal bests, and match recaps.

[ZBundle on the Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3802815997)
combines the Z mods in one selected mod. It has no separate GitHub repository.

For an unexpected result, include the map, selected mod/version, setting and value,
whether you were host, and the compatibility reason or game log. If the map fails with
the mod unloaded, include that result too; client/map issues can look like a mod failure.

## Ports

This is the BO3 edition of [ZTweaks for BO2](https://github.com/Xeptix/ZTweaks). Shared
settings use the same meanings where the engine supports them. GobbleGum scaling is
BO3-only; the BO2 bank-capacity rule is absent here. Map availability can differ.

## Changelog

### v1.0

- Settings menu hardening: effective disabled/forced values, controller-aware
  availability, stable refreshes and press-only button actions with live lock checks.
- First public Workshop release, with persistent lobby and pause settings.
- Host-aware settings locks, row explanations, and a per-match compatibility report.
- Match, player, loadout, zombie, world, power-up, GobbleGum, and challenge controls.
- Named character preferences, including Chronicles Ultimis, with host-priority co-op
  assignment and explicit custom-map adapter support.
- Normal-results Auto Restart and rotation among installed stock/custom maps.

## Credits and support

By Xep. Built around Treyarch's Zombies systems. The Lua menu is built with **L3akMod**
by the **D3V Team**. MIT licensed; see [LICENSE](LICENSE).

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F6L1285ROA)
