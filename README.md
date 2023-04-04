# My config files and more

## Supported OS

- Debian based

## Structure

```
dotfiles
├── apt
├── config
│   └── lvim  
├── env
├── home
├── local
│   └── user-bin
└── templates
```

## How to use

1. First time downloading
   
   ```bash
   git clone https://github.com/f1lem0n/dotfiles.git
   cd dotfiles
   ./download.sh
   ```
2. then all you need to do to update dotfiles is to run `./download.sh` inside the repo folder
3. If you want to modify this repository and push it to your own github you should modify `set-config.sh` and then run it `./set-config.sh`.
4. You can modify your dotfiles in your filesystem outside repo folder. When you are done just run `./upload.sh` inside the repo folder. This script will copy all the files you modified to the repo folder, commit and push all the changes for you.
5. *Note that if you wish to add new files to the repo you need to do it **manually***!

