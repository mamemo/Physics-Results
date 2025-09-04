# Prompt Video Matrix Viewer

A lightweight static webpage to present multiple generated videos per prompt, side by side in a matrix.  
Each **prompt folder** (inside `assets/`) contains:

-   `prompt.txt` → the text description for that prompt (shown in the table’s first column)
-   Five videos (`cogvideox.mp4`, `motion.mp4`, `collisions.mp4`, `motion_desc.mp4`, `collisions_desc.mp4`)

The site automatically loads all prompt folders and builds a video matrix.  
You can play/pause/reset videos individually, by row, or all at once.

---

## Usage

### 1. Generate the `prompts.js`

The site needs a `prompts.js` file (in `assets/`) that lists all prompt folders.  
This is created automatically by the provided script:

```
cd scripts
./gen_prompts.sh
```

### 2.Test locally

Open `index.html` in your browser.
You should see all your prompt rows and their videos.

### 3. Push to GitHub

Commit and push your changes:

```
git add .
git commit -m "Update prompts and regenerate prompts.js"
git push origin main
```

### 4. Go to live site

Go to your GitHub Pages site
