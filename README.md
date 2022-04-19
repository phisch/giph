# giph
giph is a screen recorder that records the desktop, a window or selection and encodes it into a gif file. It prints the encoded gif directly to standard output when omitting the output filename.

![demo](https://i.imgur.com/Hoi0fF7.gif)

*I used **giph** to record a gif of **giph** recording a gif*.

## Examples

```bash
$ giph -s -l -c 1,1,1,0.3 -b 5 -p -5 out.gif 
```
Select a window or area with slop. The selection rectangle is highlighted in a transparent blue color abd has a 5px border on the inside. 
After stopping the recording with either `ctrl+c`, by running `giph --stop` or by sending a `SIGINT` to the processgroup, the resulting gif is written to `out.gif`.


```bash
$ giph -g 100x200+0+0 -d 5 -t 10
```
Records a 100x200 pixel rectangle in the top left corner of the screen. The recording starts after a 5 seconds countdown and will record for exactly 10 seconds. The resulting gif will be printed to standard output, which makes this able to be piped into other scripts like a file-upload to an image hosting service.


```bash
$ giph -f 30 -t 5 -s -a -m out.webm
```
Records a 5 second video of the users selection at 30 fps. The recording also contains the users desktop audio and microphone. If the recording fails because the default audio source `0` is not the correct one, run `pacmd list-sources` to get the correct source `index` or `name` and pass it to the `-as` parameter instead of using `-a`. Example: `giph -f 30 -t 5 -s -as 1 -m out.webm` (using id) or `giph -f 30 -t 5 -s -as alsa_output.pci-0000_04_00.1.hdmi-stereo.monitor -m out.webm` (using name)

```bash
$ giph -s -t 10 --format webm | curl -F "file=@-" 0x0.st | xclip -selection clipboard
```

Records a 10 second webm of the users selection, uploads the video to 0x0.st using curl and copies the returned url to the clipboard.

## Installation

### Arch

```bash
$ yay -S giph
```
Or install [giph-git](https://aur.archlinux.org/packages/giph-git/) to get the latest development version.

### From source

Make sure to install the following dependencies:

 - ffmpeg
 - xdotool

Optionally, install the following dependencies:

 - slop (`--select`)
 - libnotify (`--notify`)
 - pgrep (`--stop`)

Clone the giph repository:

```bash
$ git clone https://github.com/phisch/giph.git
```

And finally install giph:

```bash
$ cd giph
$ sudo make install
```

## Desktop Makers

<a href="https://discord.gg/RqKTeA4uxW" title="Desktop Makers Discord"><img align="left" width="72" alt="type=discord" src="https://user-images.githubusercontent.com/1282767/161089772-d7ad28bf-76eb-4951-b0f0-985afd5ea57a.png"></a>

I am actively working on giph and other cool projects on the [Desktop Makers Discord](https://discord.gg/RqKTeA4uxW). It aims to be a community for communities of Linux desktop related projects. If you are looking to collaborate with or want to contribute to great projects, this might be the right place for you.
