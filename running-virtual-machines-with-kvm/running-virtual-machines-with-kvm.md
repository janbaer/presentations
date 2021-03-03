---
title: Running Virtual Machines with KVM
subtitle: How to run Virtual Machines on Linux Systems
author: Jan Baer, LeadDeveloper, CHECK24
institute: 
lang: de
date: \today

theme: metropolis
colortheme: metropolis
linkcolor: blue
themeoptions:
  - sectionpage=progressbar
  - subsectionpage=progressbar
  - numbering=fraction
  - block=fill
  - background=light
  - progressbar=foot
header-includes:
  - \usepackage[export]{adjustbox}
  - \setbeamercolor{frametitle}{bg=MidnightBlue}
  - '\makeatletter'
  - '\beamer@ignorenonframefalse'
  - '\makeatother'

---

# What is KVM?

- QEMU is a generic and open source machine emulator and virtualizer.
- KVM (Kernel-based Virtual Machine), is a hypervisor built into the Linux kernel.
- QEMU can run OSes and programs made for one machine (e.g. an ARM board) on a different machine (e.g. your x86 PC)
- QEMU can use other hypervisors like KVM to use CPU extensions
- Libvirt is collection of software that provides a convenient way to manage virtual machines and other virtualization functionality

# Alternatives

- Virtual Box
- Vagrant (with using Virtual Box, but also KVM)
- VMware
- XEN
- Ubuntu Multipass
- Proxmox (is also using KVM)
- Parallels Workstation (MacOS)
- HyperV Windows

# Requirements

- KVM requires that the virtual machine host's processor has virtualization support (named VT-x for Intel processors and AMD-V for AMD processors).
- Runs on a Linux based system

# What tools can you use

- qemu-\* - Use qemu directly, but less options, or use Libvirt
- virt-install - Install virtual machines from the commandline
- virsh - Managing virtual machines from the commandline
- virt-manager - Managing virtual machines with an UI (also remote)
- GNOME Boxes — Simple GNOME 3 application to access remote or virtual systems
- Ansible [community.libvirt.virt](https://docs.ansible.com/ansible/latest/collections/community/libvirt/virt_module.html)

# Howto create a virtual machine

```cmake
qemu-system-x86_64 -cdrom iso_image -boot order=d
    -drive file=disk_image,format=raw
```

# Howto create a virtual machine

```cmake
virt-install
  --connect qemu:///system                                      \
  --virt-type=kvm                                               \
  --name Manjaro                                                \
  --ram=2048                                                    \
  --vcpus 2                                                     \
  --os-type linux                                               \
  --os-variant archlinux                                        \
  --cdrom=./isos/manjaro-xfce-20.2.1-minimal-210103-linux59.iso \
  --disk size=50                                                \
  --network network=default                                     \
  --graphics spice                                              \
  --vga virtio -display sdl,gl=on
```

# Hoow to create a virtual machine

```cmake
sudo virt-install \
  --connect qemu:///system                    \
  --os-type linux                             \
  --os-variant generic                        \
  --name k3os                                 \
  --vcpus 2                                   \
  --memory 2048                               \
  --disk k3os.qcow,size=10                    \
  --network network=default                   \
  --graphics none                             \
  --console=pty,target_type=serial            \
  --cdrom ./k3os-amd64.iso
```

# Control VirtualMachines with VMs

Using **virsh**

Start with

```cmake
virsh -c qemu:///system
```

Within **virsh**

```cmake
start {name}
shutdown
suspend
resume
undefine
```

# Connect to the VM

```cmake
virt-viewer -c qemu:///system manjaro
```

# {.standout}

Demo

# Links

- [Qemu Wiki](https://wiki.archlinux.org/index.php/QEMU#Installing_the_operating_system)
- [Libvirt Wiki](https://wiki.archlinux.org/index.php/Libvirt)
- [manjaro-kvm-virtmanager](https://boseji.com/posts/manjaro-kvm-virtmanager/)
- [virsh-commands-cheatsheet](https://computingforgeeks.com/virsh-commands-cheatsheet/)
- [Libvirt-api](https://libvirt.org/formatdomain.html#element-and-attribute-overview)
- [how-to-mount-vm-virtual-disk-on-kvm-hypervisor](https://computingforgeeks.com/how-to-mount-vm-virtual-disk-on-kvm-hypervisor/)

# {.standout}

Questions?

---

\section{Thank you!}

