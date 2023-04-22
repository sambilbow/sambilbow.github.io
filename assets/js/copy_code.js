// create elements for GitHub and copy buttons in code blocks
var codeBlocks = document.querySelectorAll('pre');
codeBlocks.forEach(function (codeBlock) {
  if (codeBlock.querySelector('pre:not(.lineno)') || codeBlock.querySelector('code')) {
    var copyButton = document.createElement('button');
    copyButton.className = 'copy';
    copyButton.type = 'button';
    copyButton.ariaLabel = 'Copy code to clipboard';
    copyButton.innerText = 'Copy';
    copyButton.innerHTML = '<i class="fas fa-clipboard"></i>';
    codeBlock.append(copyButton);

    var gistUrl = codeBlock.closest('div').dataset.gistUrl;
    if (gistUrl) {
      var githubButton = document.createElement('button');
      githubButton.className = 'github';
      githubButton.type = 'button';
      githubButton.ariaLabel = 'View Gist on GitHub';
      githubButton.innerHTML = '<i class="fab fa-github"></i>';
      codeBlock.append(githubButton);

      // open GitHub link to view Gist
      githubButton.addEventListener('click', function () {
        window.open(gistUrl, '_blank');
      });
    }

    // get code from code block and copy to clipboard
    copyButton.addEventListener('click', function () {
      // check if code block has line numbers
      // i.e. `kramdown.syntax_highlighter_opts.block.line_numbers` set to true in _config.yml
      // or using `jekyll highlight` liquid tag with `linenos` option
      if (codeBlock.querySelector('pre:not(.lineno)')) {
        // get code from code block ignoring line numbers
        var code = codeBlock.querySelector('pre:not(.lineno)').innerText.trim();
      } else { // if (codeBlock.querySelector('code')) {
        // get code from code block when line numbers are not displayed
        var code = codeBlock.querySelector('code').innerText.trim();
      }
      window.navigator.clipboard.writeText(code);
      copyButton.innerText = 'Copied';
      copyButton.innerHTML = '<i class="fas fa-clipboard-check"></i>';
      var waitFor = 3000;

      setTimeout(function () {
        copyButton.innerText = 'Copy';
        copyButton.innerHTML = '<i class="fas fa-clipboard"></i>';
      }, waitFor);
    });
  }
});
