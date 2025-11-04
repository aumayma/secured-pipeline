# todometer

A simple, meter-based to-do list built with Electron and React.

![todometer](assets/screenshot.png)

## Download

Nab the latest version from the [Releases](https://github.com/cassidoo/todometer/releases) page!

## Development

- Clone the repo:

```bash
$ git clone https://github.com/cassidoo/todometer.git
```

- Go to the project directory and install dependencies:

```bash
$ cd todometer && npm install
```

To show the Electron application window with your current build:

```bash
$ npm run dev
```

To build a production version:

```bash
$ npm install
$ npm run postinstall
$ npm run pre-electron-pack
$ npm run electron-pack
```

## Contributing

So you want to contribute? Yay! Great! Fun!
I love seeing new PRs for todometer. That being said, not every pull request will be merged. The general guidelines I'll follow are:

- Does it make developing todometer easier?
- Does it help other platforms (Windows, Mac, Linux) work better?
- Does it fix a bug?
- Does it break anything?
- Does it stick to the original goal of todometer (a _simple_, meter-based to-do list)
- Does it reduce the build size?
- Is it necessary?

