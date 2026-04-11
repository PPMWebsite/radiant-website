$handoffPath = Join-Path $env:CLAUDE_PROJECT_DIR "docs/session-handoff.md"

if (Test-Path $handoffPath) {
    Get-Content $handoffPath -Raw
} else {
    Write-Output "No session handoff file exists yet. Read CLAUDE.md and docs files normally."
}