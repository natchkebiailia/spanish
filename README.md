# ESP Study Workspace

## Structure
- `lessons/`: Daily lessons (`lesson-YYYY-MM-DD-HH-MM.md`).
- `vocabulary/`: Daily vocabulary lists (`vocabulary-YYYY-MM-DD-HH-MM.md`).
- `words.csv`: Master aggregated vocabulary (6 columns):
  - word, part_of_speech, translation, example, source_date, source_file
- `index.md`: Homepage linking to lessons and vocabulary.
- Scripts:
  - `generate_lesson`: Creates a new timestamped lesson and matching vocabulary file.
  - `post_generate`: Rebuilds `words.csv` from `vocabulary/` and regenerates `index.md`.
  - `serve.sh`: Serves the workspace locally for quick viewing.

## Usage
- Run `./generate_lesson` to create a new lesson and vocabulary pair.
- Then run `./post_generate` to refresh `index.md` and rebuild `words.csv`.

### View Markdown in Browser
- Run `./serve.sh` then open the shown URL.
- Use `index.html` to pick files or add `?file=path` in the URL.
