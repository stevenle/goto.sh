# goto.sh - Create command-line CD aliases

## Installation

```sh
# Save goto.sh to ~/bin/goto.sh
curl https://raw.githubusercontent.com/stevenle/goto.sh/master/goto.sh > ~/bin/goto.sh

# Add alias to your .zshrc
echo 'alias goto=". ~/bin/goto.sh"' >> ~/.zshrc
```

## Usage

```sh
# Create an alias
goto myalias ~/path/to/some/folder

# Go to an alias
goto myalias
```
