--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣷⢸⣿⣿⡜⢯⣷⡌⡻⣿⣿⣿⣆⢈⠻⠿⢿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⢳⣿⣿⣿⣿⣿⣿⡜⣿⣿⣧⢀⢻⣷⠰⠈⢿⣿⣿⣧⢣⠉⠑⠪⢙⠿⠿⠿⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣱⡇⡞⣿⣿⣿⣿⣿⣿⡇⣿⣿⡏⡄⣧⠹⡇⠧⠈⢻⣿⣿⡇⢧⢢⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣇⢃⢿⣿⣿⣿⣿⣿⣷⣿⣿⠇⢃⣡⣤⡹⠐⣿⣀⢻⣿⣿⢸⡎⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣾⣿⣿⠘⡸⣿⣿⣿⣿⣿⣿⣿⡿⣰⣿⣿⢟⡷⠈⠋⠃⠎⢿⣿⡏⣿⠀⠘⢆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⢹⣿⣿⡐⢡⢹⣿⣿⣿⣿⡏⣿⢣⣿⣿⡑⠁⠔⠀⠉⠉⠢⡘⣿⡇⣿⡇⠀⡀⠡⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠘⣿⣿⣇⠇⢣⢻⣿⣿⣿⡇⢇⣾⣿⣿⡆⢸⣤⡀⠚⢂⠀⢡⢿⡇⣿⡇⠀⢿⠀⠀⠄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠠⠹⣿⣿⡘⣆⢣⠻⣿⣿⢈⣾⣿⣿⣿⣶⣸⣏⢀⣬⣋⡼⣠⢸⢹⣿⡇⢠⣼⠙⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠁⠹⣿⣇⠹⡃⠃⠙⡇⠘⢿⣿⣿⣿⣿⣿⣏⣓⣉⣭⣴⣿⠘⢸⣿⠁⠘⠋⠀⠹⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀⠀⠈⢿⣇⠂⣷⠄⠐⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢠⢸⡏⠀⢀⣠⣴⣾⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠙⠆⠈⠢⠲⠥⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡞⣸⠁⠀⢸⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⠃⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡏⠹⣿⣿⡿⠫⠊⠀⠀⠀⣶⠀⢻⣿⣿⣿⣿⡿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠿⢋⠀⠀⠀⠀⢀⣼⣿⡆⠈⣿⣿⣿⡟⣱⡷⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⣁⡀⠨⣛⠿⠶⠄⢀⣠⣾⣿⣿⣷⠀⢹⣿⡟⣴⠈⢃⣶⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠈⣿⣿⡿⠀⡀⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⠻⣿⣿⢀⠙⠻⠿⣿⣿⣿⣿⣿⣿⡇⠁⣿⠟⡀⠈⣧⢰⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠴⠮⣥⠻⢧⣤⣄⣀⡉⢩⣭⣍⣃⣀⣩⠎⢀⣼⠉⣼⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠁⣛⠓⢒⣒⣢⡭⢁⡈⠿⠿⠟⠹⠛⠁⠀⠀⠀⠰⠃⠂⠀⠀⠀
 
@ Noryn | © COPYRIGHT 2026
--// Hey, before skidding read — LICENSE ✨      

╭──────────────────────────────────────────────────────────────────────────╮
│                                 INFO                                     │
╰──────────────────────────────────────────────────────────────────────────╯

╭─ ⚠️ QUICK NOTE ──────────────────────────────────────────────────────────
│ This script has been fundamentally redesigned for the Noryn v2.0.0 suite. 
│ It includes native execution state checking, hardware whitelisting protection, 
│ dynamic setting updates, and aggressive connection garbage collection to prevent
│ memory leaks upon re-execution.
│
│ 🎯 MAIN FEATURES
│ • Aim Helper (100% Precision Support)
│ • Wall Check & Team Check
│ • Target Down Check (Da Hood Compatibility)
│ • Target Closest Distance Filtering
│ • Ultra-low Delay Trigger Bot
│ • High-Fidelity Velocity Resolver System (with Linear Interpolation)
│ • Velocity Spoofer Axis Manipulation
│ • Drawing API FOV Circle
│ • Safety FOV (Hidden Core Overlay Mode)
│ • Hitbox Expander (Global & Single Target Isolation Modes)
│ • Advanced Macro Emote Handler (Auto-Stop on Movement)
│ • Thread-safe FPS Stability Manager
│ • Native Script Re-execution Configuration Diff Engine
│ • Integrated Console Auto-Launch (F9 Key Injection)
│ 
│ 💻 PLATFORM SUPPORT
│ • PC Only (Enforced via Keyboard/Mouse hardware validation)
│ • Fully optimized for executors utilizing secure cloneref() abstractions
│ 
│ 🗽 SOURCE STATUS
│ • Fully Open Source
│ • Free to Use / Modify / Redistribute (with proper attribution)
│ • Licensed under GPL-3.0
│
│ 💡 RECOMMENDED SETTINGS
│ • For peak prediction accuracy, utilize a stable 200 FPS framework cap.
│ • HumanoidRootPart remains recommended for consistent prediction indexing.
│ • Best performance verified on standard network latency profiles (70ms - 120ms).
╰──────────────────────────────────────────────────────────────────────────

╭──────────────────────────────────────────────────────────────────────────╮
│                               QUICK GUIDE                                │
╰──────────────────────────────────────────────────────────────────────────╯

╭─ 🎯 TARGET METHOD ───────────────────────────────────────────────────────
│ 
│ 1️⃣ Aim Helper Tracking
│ • Monitors frame loops while looking for high-priority viewport targets.
│ • Real-time field-of-view scanning instantly recalibrates to closer threats.
│ • Dynamic distance clamping handles engagement prioritization flawlessly.
│ 
│ 🎯 TARGET PART SUPPORT
│ Adapts dynamically to standard R6 and R15 rig hierarchies.
│
│ ➕ Supported Joint Arrays:
│ • HumanoidRootPart
│ • UpperTorso / LowerTorso
│ • Torso
│ • Head
╰──────────────────────────────────────────────────────────────────────────

╭──────────────────────────────────────────────────────────────────────────╮
│                           CONFIGURATION TEMPLATE                         │
╰──────────────────────────────────────────────────────────────────────────╯

╭─ 🏠 SETTINGS ────────────────────────────────────────────────────────────
│
│   local Current_Config = {
│       Aim_Helper_Enabled = true, --// [true or false]
│       Aim_Helper_Accuracy = '80%', --// [0% to 100%]
│       Aim_Helper_Target_Part = 'HumanoidRootPart', --// ['HumanoidRootPart' or 'Head' or 'UpperTorso' or 'LowerTorso' or 'Torso']
│
│       Target_Closest_Distance_Check = 5, --// [Clamps closest target logic]
│       Target_Down_Check = true, --// [Skips downed targets]
│
│       Wall_Check = true, --// [Raycast check geometry]
│       Team_Check = true, --// [Skips alliance players]
│
│       Smoothness = 3,  
│       Prediction = 0.05,  
│       Aim_Range = 200,  
│
│       Y_Offset = 1.2, --// [0 to 2]
│       X_Offset = 0, --// [-2 to 2]
│
│       Trigger_Bot = true, --// [true or false]
│       Trigger_Bot_Accuracy = '70%', --// [0% to 100%]
│       Trigger_Bot_Detection_Delay = 0.001, 
│
│       Resolver_Enabled = true, --// [true or false]
│       Resolver_Strength = 0.9, --// [0 to 1]
│       Resolver_Max_Velocity = 300,
│
│       Velocity_Spoofer_Enabled = false, --// [true or false]
│       X_Velocity = 0, 
│       Y_Velocity = 500, 
│       Z_Velocity = 0,
│
│       Fov_Enabled = true, --// [true or false]
│       Safety_Fov_Enabled = false, --// [true or false]
│       Fov_Radius = 75, --// [30 to 200]
│       Fov_Thickness = 1, --// [0.1 to 5]
│       Fov_Transparency = 0.8, 
│       Fov_Color = '173,164,207', 
│
│       Hitbox_Enabled = true, --// [true or false]
│       Hitbox_Mode = 'Target', --// ['Target' or 'Global']
│       Hitbox_Size = 3, --// [3 or 50]
│       Hitbox_Transparency = 0.9, 
│       Hitbox_Color = '173,164,207', 
│       Hitbox_Material = Enum.Material.Neon, 
│       Hitbox_Can_Collide = false, 
│
│       Macro_Emote_Enabled = true, --// [true or false]
│       Macro_Emote_Id = '15610015346', --// [Id | Link]
│       Macro_Emote_Keybind = Enum.KeyCode.V, 
│       Macro_Emote_Stop_On_Move = true, 
│
│       Fps_Stability_Enabled = true, --// [https://noryni.github.io/Noryn/Website/Beta] ⭐
│       Fps_Value = '200', --// [Visit the site and set Fps_Value to the value shown there for better performance and lower CPU usage.]
│
│       Print_Logs = true, 
│       Join_Discord = false 
│   }
│
╰──────────────────────────────────────────────────────────────────────────

╭──────────────────────────────────────────────────────────────────────────╮
│                           SETTINGS EXPLANATIONS                          │
╰──────────────────────────────────────────────────────────────────────────╯

╭─ 🔎 ACT 1 ───────────────────────────────────────────────────────────────
│
│ 🎯 Target Filters
│ • Target_Closest_Distance_Check: Filters out minimum-range exceptions 
│   to guarantee target locking prioritization at standard combat ranges.
│ • Target_Down_Check: Targets with localized death tracking indices
│   are instantly released from cache.
│
├─ 👁️ FOV & SAFETY FOV ────────────────────────────────────────────────────
│ Monitors tracking states using the Drawing API canvas pipeline.
│
│ • Fov_Enabled: Displays the perimeter target field on screen.
│ • Safety_Fov_Enabled: Keeps positional evaluation boundaries fully functional 
│   without committing visual objects to the rendering queue.
│
│ ⚠️ MUTUAL EXCLUSION
│ Fov_Enabled and Safety_Fov_Enabled contain conflicting render pipelines. 
│ Enabling both simultaneously triggers an automatic configuration error bypass.
│
├─ 🧠 Resolver Engine ─────────────────────────────────────────────────────
│ Manually recalculates true movement telemetry vectors every tick based on 
│ position deltas instead of relying on compromised AssemblyLinearVelocity properties.
│
│ • Resolver_Strength: Sets the interpolation blend speed (0 = static, 1 = instant).
│ • Resolver_Max_Velocity: Imposes a threshold boundary to dismiss extreme 
│   telemetry changes caused by CFrame exploits.
│
├─ 🚀 Spoofer Framework ───────────────────────────────────────────────────
│ Intercepts and overrides physics state updates frame-by-frame, cleaning up 
│ and restoring native metadata post-simulation to ensure local stability.
│
├─ 📦 Hitbox Expander ─────────────────────────────────────────────────────
│ Injects custom spatial transformations directly into target bounding components.
│ Target Mode limits manipulation solely to locked targets for minimal footprint.
│
├─ ⚡ FPS Caps
│ Directly references the execution level environment to configure setfpscap().
│ Reduces micro-stuttering, helps minimize runaway thermal thresholds on 
│ high-refresh hardware, and keeps prediction math strictly linear.
│
├─ 🧹 Connection Garbage Collection ───────────────────────────────────────
│ Native engine dynamically clears out active connection wrappers, reset loops, 
│ tween structures, drawing vectors, and modifications on reload to keep memory 
│ usage fully optimized and prevent overlap crashes.
╰──────────────────────────────────────────────────────────────────────────

╭──────────────────────────────────────────────────────────────────────────╮
│                                 DISCLAIMER                               │
╰──────────────────────────────────────────────────────────────────────────╯

╭─ 📝 NOTICE ──────────────────────────────────────────────────────────────
│ Distributed strictly for technical, architectural evaluation and educational use.
│
│ Operational deployments are performed under sole user liability regarding:
│ • Localized moderation, restriction logs, platform flags, or profile anomalies.
│
│ No functional warranties are attached to this demonstration codebase. This v2.0.0
│ release acts as a milestone design verification platform showcasing the stability, 
│ modular code formatting, and architecture under development for upcoming 
│ Noryn production ecosystems.
╰──────────────────────────────────────────────────────────────────────────╯]]
