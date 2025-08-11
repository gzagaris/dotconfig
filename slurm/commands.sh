#=======================================================
#
# Helper commands for SLURM
#
#=======================================================

# SLURM allocation + GPU info helper
print_alloc_info() {
    echo "==== SLURM Allocation ===="
    echo "  Nodes allocated : ${SLURM_JOB_NUM_NODES:-1}"
    echo "  MPI tasks       : ${SLURM_NTASKS:-1}"
    echo "  CPUs per node   : ${SLURM_CPUS_ON_NODE:-1}"
    echo
}

# Print hostname, number of sockets, and cores per socket for each allocated node
print_node_cpu_info() {
    local nodes=${SLURM_JOB_NUM_NODES:-1}

    srun -N "$nodes" -n "$nodes" bash -c '
        echo -n "Node: $(hostname)  "
        sockets=$(lscpu | awk "/Socket\\(s\\)/{print \$2}")
        cores_per_socket=$(lscpu | awk "/Core\\(s\\) per socket/{print \$4}")
        echo "Sockets: $sockets  CoresPerSocket: $cores_per_socket"
    '
}

## aliases
alias slurm_allocinfo='print_alloc_info'
alias slurm_nodecpuinfo='print_node_cpu_info'
alias slurm_timeleft='squeue -j $SLURM_JOB_ID -o "%.10L" -h'
alias slurm_timeused='squeue -j $SLURM_JOB_ID -o "%.10M" -h'
