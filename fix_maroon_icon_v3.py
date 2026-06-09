#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Find and replace the icon section
old_icon = '''            const SizedBox(width: 8),
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

new_icon = '''            const SizedBox(width: 8),
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

if old_icon in content:
    content = content.replace(old_icon, new_icon)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Updated to maroon circle with white i inside and white ! to the right')
else:
    print('ERROR - Pattern not found')
