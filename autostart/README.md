This service is automatically re-built and re-installed on the VM image
before every virtual machine run. This lets you easily trigger a userspace
payload at boot time, without having to yourself interact with the VM.

This consists of:
- a systemd service which, late at boot, starts the next two programs and
  redirects their output to the boot terminal
- a shell script if you want to trigger stimuli easily accessible from bash
- a C code if you want to hook into deeper system APIs

Modify any of these files to easily exercise the kernel behavior you work on.