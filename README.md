# Write That Down

Simple note taking bash script.

## Motivation

So, picture this: I'm knee-deep in my daily tasks, happily jotting down notes in markdown because, well, who doesn't love turning chaos into snazzy reports? But here's the kicker – my boss decides it's meeting time, and suddenly, I'm on a wild goose chase through my notes organized by dates using mkdir ```mkdir $HOME/.notes/$(date +'%Y-%m-%d') && nvim $HOME/.notes/$(date +'%Y-%m-%d')```. It's like playing hide-and-seek with my own work, and let's be real, it's not the highlight of my day. Fed up with the hassle, I whipped up a nifty tool in just 20 minutes to save myself from this madness. Life's too short for note-hunting marathons, right?

## What's left

- [ ] Create a nicer way to delete files
- [ ] Create a nicer way to open existing files

## How to use it

1. Create new file

It's as simple as:

```bash
wtd name_of_the_file
```

This will create a new file in `$HOME/.notes/$(date +'%Y-%m-%d')`

2. List file

```bash
wtd --list
```

3. Open file

If the file you want was created on the same day, the command to open it is the same as to create it.

If not, then do this:

```bash
$EDITOR ~/.notes/DATE/FILE # Change DATE and FILE to match your specific case
```

4. Delete file

```bash
rm ~/.notes/DATE/FILE # Change DATE and FILE to match your specific case
```
