##
## SSH aliases to simplify login to various systems
##

# [onyx2]
alias onyx2="ssh gzagaris@onyx02.erdc.hpc.mil"
alias onyx-mount="sshfs gzagaris@onyx.erdc.hpc.mil:/p/home/gzagaris ~/dev/remotes.d/onyx"
alias onyx-umount="umount -f ~/dev/remotes.d/onyx"
alias onyx="ssh gzagaris@onyx.erdc.hpc.mil"

# [rickon]
alias rickon="ssh gzagaris@rickon.create.hpc.mil"
alias rickon-mount="sshfs gzagaris@rickon.create.hpc.mil:/home/gzagaris ~/dev/remotes.d/rickon"
alias rickon-umount="umount -f ~/dev/remotes.d/rickon"

# [narwhal]
alias narwhal="ssh gzagaris@narwhal.navydsrc.hpc.mil"
alias narwhal-mount="sshfs gzagaris@narwhal.navydsrc.hpc.mil:/p/home/gzagaris ~/dev/remotes.d/narwhal"
alias narwhal-umount="umount -f ~/dev/remotes.d/narwhal"

# [scout]
alias scout="ssh gzagaris@scout.arl.hpc.mil"
alias scout-mount="sshfs gzagaris@scout.arl.hpc.mil:/p/home/gzagaris ~/dev/remotes.d/scout"
alias scout-umount="umount -f ~/dev/remotes.d/scout"

# [warhawk]
alias warhawk="ssh gzagaris@warhawk.afrl.hpc.mil"
alias warhawk-mount="sshfs gzagaris@warhawk.afrl.hpc.mil:/p/home/gzagaris ~/dev/remotes.d/warhawk"
alias warhawk-umount="umout -f ~/dev/remotes.d/warhawk"

# [ascent]
alias ascent="ssh gzagaris@login1.ascent.olcf.ornl.gov"
alias ascent-mount="sshfs gzagaris@login1.ascent.olcf.ornl.gov:/ccsopen/home/gzagaris ~/dev/remotes.d/ascent"
alias ascent-umount="umount -f ~/dev/remotes.d/ascent"

