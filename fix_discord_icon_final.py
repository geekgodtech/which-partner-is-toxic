#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Find and replace the entire section
old_section = '''        // Enable toggle row with help
        Row(
          children: [
            Icon(Icons.discord, color: const Color(0xFF5865F2), size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                l10n.enableDiscord,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            // Info icon - large white icon on blue background with shadow
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
            ),
            const SizedBox(width: 8),
            // Maroon circle with white "i" inside, and white "!" to the right
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Maroon circle with white "i" inside and maroon shadow
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF800000), // Maroon
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF800000).withOpacity(0.4),
                          blurRadius: 6, // 25% smaller than 8
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  // White exclamation mark to the right - same height as circle
                  Transform.rotate(
                    angle: 0.35, // ~20 degrees slant
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
            ),
          ],
        ),'''

new_section = '''        // Enable toggle row with help
        Row(
          children: [
            Icon(Icons.discord, color: const Color(0xFF5865F2), size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                l10n.enableDiscord,
                style: theme.textTheme.bodyMedium,
              ),
            ),
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
            ),
            const SizedBox(width: 8),
            // Maroon shadow area containing white circle with "i" and white "!"
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF800000), // Maroon background
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF800000).withOpacity(0.4),
                      blurRadius: 6, // 25% smaller shadow
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // White circle with "i" inside - original size
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.info_outline,
                          color: Color(0xFF800000), // Maroon icon
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    // White exclamation mark inside maroon area - same height as circle (40px)
                    Transform.rotate(
                      angle: 0.35, // ~20 degrees slant
                      child: const Text(
                        '!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40, // Same height as white circle
                          fontWeight: FontWeight.w900, // Extra bold / wide fat
                          fontFamily: 'Roboto',
                          height: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),'''

if old_section in content:
    content = content.replace(old_section, new_section)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Fixed Discord icon: removed blue icon, maroon shadow container with white circle and white ! inside')
else:
    print('ERROR - Section not found')
    # Debug
    import re
    match = re.search(r'// Enable toggle row with help.*?// Main action button', content, re.DOTALL)
    if match:
        print('Found section, length:', len(match.group(0)))
