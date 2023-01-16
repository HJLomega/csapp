unix shell
    一条命令对应一个job，一个job有1个或多个进程
    前台最多1个job，后台有多给job
    job control
        *  ctrl-c ctrl-z
        *  jobs
        *  bg/fg/kill <job>
        *  &


1. 进程处理
    waitpid, kill, fork, execve

    * fork execve exit
    * waitpid 
2. 信号
   setpgid,setpgid(0, 0),sigprocmask
   1. 发送信号
        * kill,alarm
        * getpgrp , setpgid
   2. 接收信号
       * 绑定信号处理函数 signal(SIGCHLD, handler)
       * 信号集 sigset_t mask, prev;
       * 阻塞信号 sigprocmask(SIG_BLOCK, &mask, &prev);
       * 恢复成阻塞前的信号 sigprocmask(SIG_SETMASK, &prev, NULL)
       * 暂停等待信号 sigsuspend

