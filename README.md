# giph
giph is a screen recorder that records the desktop, a window or selection and encodes it into a gif file. It prints the encoded gif directly to standard output when omitting the output filename.

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

```bash
$ ./giph -s -l -c 1,1,1,0.3 -b 5 -p -5 out.gif 
```
Select a window or area with slop. The selection rectangle is highlighted in a transparent blue color abd has a 5px border on the inside. After stopping the recording with either `ctrl+c` or by sending a `SIGINT` to the processgroup, the resulting gif is written to `out.gif`.


```bash
$ ./giph -g 100x200+0+0 -d 5 -t 10
```
Records a 100x200 pixel rectangle in the top left corner of the screen. The recording starts after a 5 seconds countdown and will record for exactly 10 seconds. The resulting gif will be printed to standard output, which makes this able to be piped into other scripts like a file-upload to an image hosting service.
