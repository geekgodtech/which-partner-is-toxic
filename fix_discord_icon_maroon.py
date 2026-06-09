#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Find and replace the entire icon section with new maroon design positioned after switch
old_icon_section = '''            // Info icon - large white icon on blue background with shadow
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF5865F2),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5865F2).withOpacity(0.4),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.info_outline,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Toggle switch instead of checkbox
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

# New design: Maroon circle with white ! positioned to the right, after the switch
new_icon_section = '''            // Toggle switch instead of checkbox
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
            // Maroon info button with white exclamation mark
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF800000), // Maroon
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF800000).withOpacity(0.4),
                      blurRadius: 6, // 25% smaller (was 8)
                      offset: const Offset(2, 2), // Offset to the right
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // White exclamation mark with wide bold font
                    Transform.rotate(
                      angle: 0.17, // ~10 degrees in radians
                      child: Text(
                        '!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900, // Extra bold
                          fontFamily: 'Roboto', // Use system font
                          height: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),'''

if old_icon_section in content:
    content = content.replace(old_icon_section, new_icon_section)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Updated to maroon icon with white ! after switch')
else:
    print('ERROR - Could not find icon section to replace')
    # Try to find what we have
    import re
    match = re.search(r'// Info icon.*?(?=// Toggle switch)', content, re.DOTALL)
    if match:
        print(f'Found section: {match.group(0)[:100]}...')
