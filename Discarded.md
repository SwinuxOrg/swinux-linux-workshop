# Introduction to Linux - Pre-Workshop

## Obtaining Linux

1. Linux comes in the form of different OS distributions built on top of it, colloquially known as Linux distros. You must choose one to use for this workshop, which will cover both of these side-by-side:
   *  **Ubuntu Desktop** - The most iconic Linux distro, based on Debian. Most Linux distros are built on top of it, so anything that supports Ubuntu will likely support them too.
   * **Linux Mint Cinnamon Edition** - Based on Ubuntu. It is considered by most (including me) the best distro for new Linux users, and what I use myself.
     * Cinnamon is the name of it's desktop environment.
     * Linux Mint does have a Debian-based version independent of Ubuntu, but that's out of scope.
2. You will need to download the installer for your distro of choice. This will come in the form of an ISO file, which are optical disk images, named after the ISO 9660 filesystem used on them.
   * Ubuntu Desktop: <https://ubuntu.com/download/desktop><br>
     The workshop will be using version ???.
     * The LTS version is recommended due to less frequent system upgrades.
     * You can also download it via BitTorrent. Torrents can be found from the alternative downloads page under the main download button. Make sure to select the 64-bit version.
   * Linux Mint Cinnamon Edition: <https://www.linuxmint.com/download.php><br>
     The workshop will be using version ???.
     * The Australian AARNet mirror should be the fastest due to being the closest.
     * A torrent download is available at the top of the page.
  * Torrenting may be the fastest way to download either distro due to taking advantage of leeching from multiple peers in parallel. By torrenting, you are also sharing your copy for others to download (seeding) until you stop the torrent.

### Installing VirtualBox on Windows

These are the instructions for setting up and creating a virtual machine in VirtualBox. If you aren't planning on using VirtualBox, skip this section.

### VirtualBox Guest Additions

8. The ISO image may be ejected now, either from within Linux Mint or VirtualBox.
   * Linux Mint: Right-click on the CD on the Desktop and press "Eject".<br>
     Recommended as it allows the OS to check if it's still in use.
   * VirtualBox Menu Bar: Devices > Optical Drives > "Remove Disk From Virtual Drive"
   * VirtualBox Bottom Toolbar: Right click on the CD icon, and press "Remove Disk From Virtual Drive".

# Workshop

### Hierarchy

* Examples:
  * `/dev/sda` is the VM's drive.
  * `/dev/sda2` is the partition of the guest's filesystem, mounted under `/`.
  * `/dev/sr0` is the VM's optical (CD, DVD, etc.) drive.<br>
    Since this is a VM and most systems don't come with an optical drive these days, this will usually just be used for mounting ISO files on the host system to it.
  * `/dev/sdX` is the naming convention used for SCSI drives, which includes SATA and USB drives. NVMe drives will follow the convention of `/dev/nvme0nX` and `/dev/nvme0nXpY` for their partitions.<br>
    For example, the 3rd partition on an NVMe drive will be called `/dev/nvme0n1p3`.