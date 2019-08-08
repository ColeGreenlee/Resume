workflow "LaTeX Conversion" {
  resolves = ["PDF", "Markdown"]
  on = "push"
}

action "PDF" {
  uses = "maxheld83/pandoc@v0.1.0"
  args = [
    "--standalone",
    "--output=Resume.pdf",
    "Resume.tex",
  ]
}

action "Markdown" {
  uses = "maxheld83/pandoc@v0.1.0"
  args = [
    "--standalone",
    "--output=README.md",
    "Resume.tex",
  ]
}
