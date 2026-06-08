# AIRTA Session End Hook
# Outputs instructions forcing the agent to write a session summary before stopping

$projectDir = "C:\My Projects\AIRTA"
$sessionLog = "$projectDir\.devin\SESSION_LOG.md"

$msg = @"
{
  "decision": "block",
  "reason": "REQUIRED BEFORE STOPPING: You must write a session summary to '$sessionLog'.\n\nFormat:\n## Session - $(Get-Date -Format 'yyyy-MM-dd HH:mm')\n\n### What was accomplished\n- (bullet list of every change made)\n\n### Current state\n- (what is working, what is deployed, what is on the phone)\n\n### Next steps / open items\n- (anything pending or the user mentioned wanting to do)\n\n### Key facts\n- (any credentials, IDs, URLs, or config discovered this session)\n\nAppend this to the BOTTOM of the file (do not overwrite previous entries). Use the write or edit tool. Once written, you may stop."
}
"@

Write-Output $msg
