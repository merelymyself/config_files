System Info:
```
00:00.0 Host bridge: Intel Corporation Ice Lake-LP Processor Host Bridge/DRAM Registers (rev 03)
	Subsystem: Lenovo Ice Lake-LP Processor Host Bridge/DRAM Registers
	Kernel driver in use: icl_uncore
00:02.0 VGA compatible controller: Intel Corporation Iris Plus Graphics G1 (Ice Lake) (rev 07)
	Subsystem: Lenovo Iris Plus Graphics G1 (Ice Lake)
	Kernel driver in use: i915
	Kernel modules: i915
00:04.0 Signal processing controller: Intel Corporation Device 8a03 (rev 03)
	Subsystem: Lenovo Device 3804
	Kernel driver in use: proc_thermal
	Kernel modules: processor_thermal_device_pci_legacy
00:14.0 USB controller: Intel Corporation Ice Lake-LP USB 3.1 xHCI Host Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP USB 3.1 xHCI Host Controller
	Kernel driver in use: xhci_hcd
	Kernel modules: xhci_pci
00:14.2 RAM memory: Intel Corporation Ice Lake-LP DRAM Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP DRAM Controller
00:15.0 Serial bus controller: Intel Corporation Ice Lake-LP Serial IO I2C Controller #0 (rev 30)
	Subsystem: Lenovo Ice Lake-LP Serial IO I2C Controller
	Kernel driver in use: intel-lpss
	Kernel modules: intel_lpss_pci
00:15.1 Serial bus controller: Intel Corporation Ice Lake-LP Serial IO I2C Controller #1 (rev 30)
	Subsystem: Lenovo Ice Lake-LP Serial IO I2C Controller
	Kernel driver in use: intel-lpss
	Kernel modules: intel_lpss_pci
00:16.0 Communication controller: Intel Corporation Ice Lake-LP Management Engine (rev 30)
	Subsystem: Lenovo Ice Lake-LP Management Engine
	Kernel driver in use: mei_me
	Kernel modules: mei_me
00:17.0 SATA controller: Intel Corporation Ice Lake-LP SATA Controller [AHCI mode] (rev 30)
	Subsystem: Lenovo Ice Lake-LP SATA Controller [AHCI mode]
	Kernel driver in use: ahci
	Kernel modules: ahci
00:1d.0 PCI bridge: Intel Corporation Ice Lake-LP PCI Express Root Port #9 (rev 30)
	Kernel driver in use: pcieport
00:1d.4 PCI bridge: Intel Corporation Device 34b4 (rev 30)
	Kernel driver in use: pcieport
00:1f.0 ISA bridge: Intel Corporation Ice Lake-LP LPC Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP LPC Controller
00:1f.3 Audio device: Intel Corporation Ice Lake-LP Smart Sound Technology Audio Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP Smart Sound Technology Audio Controller
	Kernel driver in use: snd_hda_intel
	Kernel modules: snd_hda_intel, snd_sof_pci_intel_icl
00:1f.4 SMBus: Intel Corporation Ice Lake-LP SMBus Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP SMBus Controller
	Kernel driver in use: i801_smbus
	Kernel modules: i2c_i801
00:1f.5 Serial bus controller: Intel Corporation Ice Lake-LP SPI Controller (rev 30)
	Subsystem: Lenovo Ice Lake-LP SPI Controller
	Kernel driver in use: intel-spi
	Kernel modules: spi_intel_pci
01:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8822CE 802.11ac PCIe Wireless Network Adapter
	Subsystem: Lenovo RTL8822CE 802.11ac PCIe Wireless Network Adapter
	Kernel driver in use: rtw_8822ce
	Kernel modules: rtw88_8822ce
06:00.0 Non-Volatile memory controller: SK hynix BC511
	Subsystem: SK hynix BC511
	Kernel driver in use: nvme
	Kernel modules: nvme
 ```


"dependencies":

fish
neovim
alacritty
macchina
cmus
sway (wm)
firefox
blueman
nm-applet
copyq
amixer
jq
light
nm-connection-editor
system76-power
alsamixer
upower
bluetoothctl
protonvpn-cli
nmcli
fcitx5
fcitx5-chinese-addons
gnome-keyring-daemon
wdisplays
tlp
gdm
system-config-printer
gnome-disk-utility



/etc/bluetooth/audio.conf:

```
[General]

Disable=Socket
Enable=Media,Source,Sink,Gateway
```

