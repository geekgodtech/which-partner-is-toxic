path = r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart'
with open(path, encoding='utf-8') as f:
    c = f.read()

SEARCH = (
    "// White circle (plain, empty)\n"
    "                    Container(\n"
    "                      width: 40,\n"
    "                      height: 40,\n"
    "                      decoration: const BoxDecoration(\n"
    "                        color: Colors.white,\n"
    "                        shape: BoxShape.circle,\n"
    "                      ),\n"
    "                    ),\n"
    "                    const SizedBox(width: 4),\n"
    "                    // Bold white \"i\" on maroon background\n"
    "                    const Text(\n"
    "                      'i',\n"
    "                      style: TextStyle(\n"
    "                        color: Colors.white,\n"
    "                        fontSize: 40,\n"
    "                        fontWeight: FontWeight.w900,\n"
    "                        fontFamily: 'Roboto',\n"
    "                        height: 1.0,\n"
    "                      ),\n"
    "                    ),"
)

REPLACE = (
    "// Outlined white circle with 'i' inside (maroon background shows through)\n"
    "                    Container(\n"
    "                      width: 40,\n"
    "                      height: 40,\n"
    "                      decoration: BoxDecoration(\n"
    "                        color: Colors.transparent,\n"
    "                        shape: BoxShape.circle,\n"
    "                        border: Border.all(color: Colors.white, width: 3),\n"
    "                      ),\n"
    "                      alignment: Alignment.center,\n"
    "                      child: const Text(\n"
    "                        'i',\n"
    "                        style: TextStyle(\n"
    "                          color: Colors.white,\n"
    "                          fontSize: 24,\n"
    "                          fontWeight: FontWeight.w900,\n"
    "                          fontFamily: 'Roboto',\n"
    "                          height: 1.0,\n"
    "                        ),\n"
    "                      ),\n"
    "                    ),"
)

assert SEARCH in c, "Block not found"
c2 = c.replace(SEARCH, REPLACE, 1)
assert c2 != c, "No change made"
with open(path, 'w', encoding='utf-8') as f:
    f.write(c2)
print("Done.")
