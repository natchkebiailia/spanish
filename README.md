# ESP Study Workspace

## Structure
- `lessons/`: Daily lessons (`lesson-YYYY-MM-DD.md`).
- `vocabulary/`: Daily vocabulary lists (`vocabulary-YYYY-MM-DD.md`).
- `words.csv`: Master aggregated vocabulary (6 columns):
  - word, part_of_speech, translation, example, source_date, source_file
- `index.md`: Homepage linking to lessons and vocabulary.
- Scripts:
  - `update-index.sh`: Regenerate `index.md` from files in `lessons/` and `vocabulary/`.
  - `add-word.sh`: Append a single entry to `words.csv`.
  - `import-from-vocab.sh`: Parse all files in `vocabulary/` and append words to `words.csv`.

## Usage
- Use ./generate-lesson.sh (interactive by default) to create a timestamped lesson and vocabulary.
- The script automatically updates index.md and rebuilds words.csv.

### View Markdown in Browser
- Run ./serve.sh then open the shown URL.
- Use index.html to pick files or add ?file=path in the URL.
