To sync to your latest live site locally:
1. On the bottom status bar, next to "main", click the sync button
2. If it shows changes to pull down, click again.

To enable a local site:
1. Terminal > New Terminal
2. Type "bundle exec jekyll serve"
3. The local site will now be available at https://127.0.0.1:4000/
4. At first this may take <30s
5. Saving any .md file will result in a recompile for any changed pages, (1 - 2 seconds)
6. Refresh the page in your browser to see changes


To push changes to the live site:
1. Save any open files File > Save All
2. Open up source control View > Source Control
3. Next to "Changes", press the + to stage all changes to be committed
4. Add a message to describe what has been changed (necessary)
5. Click "Commit & Push"
6. Go back to explorer side bar with View > Explorer
7. Site will go live in 3 - 4 minutes.
8. If you're done, close the local site with "ctrl-C" in the terminal window.