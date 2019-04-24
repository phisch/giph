# giph
giph is a utility script that records a region, window or your desktop and encodes the recording into a high quality gif.

## Installation

### From source

Make sure to install the following dependencies:

 - ffmpeg
 - grep
 - awk

Optionally, install the following dependencies:
 - slop (`--select`)
 - xwininfo (`--window` or desktop recording)
 - zenity (`--interface zenity`)
 - gifski (`--encoder gifski`)

Clone the giph repository:

```bash
$ git clone https://github.com/phisch/giph.git
```

And finally install giph:

```bash
$ cd giph
$ make install
```

## Examples

This command lets you select a window or area with slop, where the selection rectangle is highlighted in a transparent white, the rectangle has a 5px bolder on the inside and the final gif is saved to `out.gif`. Also this command uses the default terminal ui, which lets you stop the recording by pressing `ctrl+c` after it started.

```bash
$ ./giph -s -l -c 1,1,1,0.3 -b 5 -p -5 out.gif 
```

This adds a countdown before the video is recorded, and uses the zenity interface.

```bash
$ ./giph -s -l -c 1,1,1,0.3 -b 5 -p -5 -d 5 --interface zenity out.gif
```