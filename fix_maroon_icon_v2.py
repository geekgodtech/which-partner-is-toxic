#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Find the current icon section - we need to find what's there now
# The user wants: Maroon circle + White ! to the right of the circle
old_section = '''            // Toggle switch instead of checkbox
            Switch(
              value: _discordEnabled,
              onChanged: (val) {
                if (val && !hasDiscordAddon) {
                  _showDiscordAddonPopup(context);
                } else {
                  setState(() {
                    _discordEnabled = val;
                  });
                }
              },
              activeColor: const Color(0xFF5865F2),
            ),'''

# New design: Switch followed by Maroon circle with White ! to its right
new_section = '''            // Toggle switch instead of checkbox
            Switch(
              value: _discordEnabled,
              onChanged: (val) {
                if (val && !hasDiscordAddon) {
                  _showDiscordAddonPopup(context);
                } else {
                  setState(() {
                    _discordEnabled = val;
                  });
                }
              },
              activeColor: const Color(0xFF5865F2),
            ),
            const SizedBox(width: 8),
            // Maroon circle with white exclamation mark to the right
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Maroon circle with smaller shadow
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF800000), // Maroon
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF800000).withOpacity(0.4),
                          blurRadius: 6, // 25% smaller
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  // White exclamation mark - same height as circle (40px)
                  Transform.rotate(
                    angle: 0.17, // ~10 degrees
                    child: Text(
                      '!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40, // Same height as circle
                        fontWeight: FontWeight.w900, // Extra bold / wide fat
                        fontFamily: 'Roboto',
                        height: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),'''

if old_section in content:
    content = content.replace(old_section, new_section)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Maroon circle with white ! to the right')
else:
    print('ERROR - Could not find section')
