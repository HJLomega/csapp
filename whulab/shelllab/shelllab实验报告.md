## 一、实验目的

本实验目的是使学生熟悉进程控制和信号处理的概念
（对应书的第8章异常控制流8.4进程控制和8.5信号两小节。）

## 二、实验要求
实现一个简单的支持作业控制的Unix shell程序。

## 三、实验分析

### 1、trace01 - trace02
实现 quit 命令： 完善 builtin_cmd 函数 ,判断第一个参数是否是"quit",如果是则直接退出。

### 2、 trace03 - trace04
实现 eval 函数：套用csapp书中P525模板代码即可

### 3、 trace05 
实现 jobs 命令，job 的管理，前台等待进程
1. 实现 jobs 命令： 调用 listjob s函数。
2. jobs 数据结构的管理：完善 eval 函数，在创建子进程时调用 addjob ；完成 sigchld_handler ，回收僵尸进程时调用deletejob
3. 前台等待进程: 实现 waitfg 函数，循环调用调用 `sigsuspend` 等待信号，如果当前进程已经不在前台则退出循环.

### 4、 trace06 - trace07
实现 INT(CTRL_C) 信号：
1. 实现 sigint_handler 函数：调用 `kill` 向前台进程组发放sig即可
2. 完善 sigchld_handler 函数：用 `WIFSIGNALED(status)` 宏判断是否为信号终止，输出相关信息，调用 deletejob

### 5、 trace08 
实现TSTP(CTRL_Z)信号：与4类似
1. 实现 sigtstp_handler 函数：调用 `kill` 向前台进程组发放sig即可
2. 完善 sigchld_handler 函数：用 `WIFSTOPPED(status)` 宏判断是否为信号终止，输出相关信息，把对应 job 的状态改为 ST
3. 
### 5、 trace09 
实现 bg 命令：
1. 完善 builtin_cmd 函数：判断第一个参数是否是"quit",如果是则调用 do_bgfg
2. 实现 do_bgfg 函数：先调用atoi的C库函数,将字符串转为int类型；调用 `kill` 向相应进程组发放送 SIGCONT ，把对应 job 的状态改为 BG

### 6、 trace10 - trace13
实现 fg 命令：
1. 将一个后台进程调入前台: 把对应 job 的状态改为 FG，调用 waitfg等待。
2. 将一个挂起进程调入前台: 调用 `kill` 向相应进程组发放送 SIGCONT ，把对应 job 的状态改为 FG ，调用 waitfg 等待。

### 7、 trace14 - tarce16
对于错误的处理
主要有4类错误

-   1. 找不到指令
-   2. bg、fg 没有参数
    3. bg、fg 的参数不是 数字 或者 %数字
    4. bg、fg 的参数没有对应的进程或进程组

## 四、实验总结
实验注意事项：
1. 创建子进程 
   1. 创建子进程前要阻塞 SIGCHLD 信号，以防止竞争。
   2. 在子进程分支中，调用 `execve` 前要调用 `setpgid(0, 0);` 来将子进程加入到独立的进程组中。
   3. 在子进程分支中，调用 `execve` 前要解除 SIGCHLD 信号的阻塞。
2. 对全局数据结构jobs的操作： 
   操作前要阻塞所有信号， 操作后解除阻塞。
   具体操作为 
   ```C
    sigset_t mask_all, prev;
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK, &mask_all, NULL);
    //对全局数据结构jobs的操作开始
    addjob(jobs, pid, BG, cmdline);
    //对全局数据结构jobs的操作结束
    sigprocmask(SIG_SETMASK, &prev, NULL);
   ```
3. 对进程组发送信号时要用负的pid。

## 五、要求实现函数的代码
```C
void eval(char *cmdline) 
{
    char *argv[MAXARGS]; /* Argument list execve() */
    char buf[MAXLINE]; /* Holds modified command line */
    int bg; /* Should the job run in bg or fg? */
    pid_t pid;/* Process id */
    sigset_t mask_all,mask_one,prev_one;
    
    sigfillset(&mask_all);
    sigemptyset(&mask_one);
    sigaddset(&mask_one,SIGCHLD);

    strcpy(buf, cmdline);
    bg = parseline(buf, argv);
    if (argv[0] == NULL)
        return; /* Ignore empty lines */
    if (!builtin_cmd(argv)) {

        //blcok
        sigprocmask(SIG_BLOCK,&mask_one,&prev_one);
        if ((pid = Fork()) == 0) { /* Child runs user job */
            sigprocmask(SIG_SETMASK,&prev_one,NULL);
            setpgid(0,0);
            if (execve(argv[0], argv, environ) < 0) {
                printf("%s: Command not found\n", argv[0]);
                exit(0);
            }
        }
        
        /* Parent waits for foreground job to terminate */
        if (!bg) {
            sigprocmask(SIG_BLOCK,&mask_all,NULL);
            addjob(jobs,pid,FG,cmdline);
            sigprocmask(SIG_SETMASK,&prev_one,NULL);
            waitfg(pid);
        }
        else{
            sigprocmask(SIG_BLOCK,&mask_all,NULL);
            addjob(jobs,pid,BG,cmdline);
            sigprocmask(SIG_SETMASK,&prev_one,NULL);
            printf("[%d] (%d) %s",pid2jid(pid), pid, cmdline);
        }
    }
    return;
}

int builtin_cmd(char **argv) 
{
    /* If first arg is a builtin command, run it and return true */
    if (!strcmp(argv[0], "quit")) /* quit command */
        exit(0);
    if (!strcmp(argv[0],"jobs")){
    	listjobs(jobs);
    	return 1;
    }
    if (!strcmp(argv[0],"bg") || !strcmp(argv[0],"fg")){
    	do_bgfg(argv);
    	return 1;
    }
    if (!strcmp(argv[0], "&")) /* Ignore singleton & */
        return 1;
    
    return 0;     /* not a builtin command */
}

oid do_bgfg(char **argv) 
{
     
    if (!strcmp(argv[0],"bg")){
        if(argv[1] == NULL){
            printf("bg command requires PID or %%jobid argument\n");
            return;
        }

        if(argv[1][0] == '%'){ //jid
            int jid = atoi(&argv[1][1]);
            if(jid == 0){
                printf("bg: argument must be a PID or %%jobid\n");
                return;
            }
            struct job_t* job = getjobjid(jobs,jid);
            if(job == NULL ){
                printf("%%%d: No such job\n",jid);
                return;
            }

            job->state = BG;
            kill(-job->pid,SIGCONT);
            printf("[%d] (%d) %s", jid, job->pid, job->cmdline);
        }else{ //pid
            int pid = atoi(argv[1]);
            if(pid == 0){
                printf("bg: argument must be a PID or %%jobid\n");
                return;
            }
            struct job_t* job = getjobpid(jobs,pid);
            if(job == NULL){
                printf("(%d): No such process\n",pid);
                return;
            }

            job->state = BG;
            kill(-job->pid,SIGCONT);
            printf("[%d] (%d) %s", pid2jid(pid), job->pid, job->cmdline);
        }
    } else{
        if(argv[1] == NULL){
            printf("fg command requires PID or %%jobid argument\n");
            return;
        }

        if(argv[1][0] == '%'){ //jid
            int jid = atoi(&argv[1][1]);
            if(jid == 0){
                printf("fg: argument must be a PID or %%jobid\n");
                return;
            }
            struct job_t* job = getjobjid(jobs,jid);
            if(job == NULL ){
                printf("%%%d: No such job\n",jid);
                return;
            }

            if(job->state == ST){  // ST -> FG
                job->state=FG;
                kill(-job->pid,SIGCONT);
                waitfg(job->pid);
            }else if(job->state == BG){ //BG -> FG
                job->state=FG;
                waitfg(job->pid);
            }else{
                printf("undefine state");
            }
        } else{//pid
            int pid = atoi(argv[1]);
            if(pid == 0){
                printf("fg: argument must be a PID or %%jobid\n");
                return;
            }
            struct job_t* job = getjobpid(jobs,pid);
            if(job == NULL){
                printf("(%d): No such process\n",pid);
                return;
            }


            if(job->state == ST){  // ST -> FG
                job->state=FG;
                kill(-job->pid,SIGCONT);
                waitfg(job->pid);
            }else if(job->state == BG){ //BG -> FG
                job->state=FG;
                waitfg(job->pid);
            }else{
                printf("undefine state");
            }
        }
    }
    return;
}

void waitfg(pid_t pid)
{
    sigset_t mask,mask_all,prev;
    sigemptyset(&mask);
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK,&mask_all,&prev);
    while (pid == fgpid(jobs))
        sigsuspend(&mask);
    sigprocmask(SIG_SETMASK,&prev,NULL);
    return;
}
void sigchld_handler(int sig) 
{
	int olderrno = errno;
	sigset_t mask_all,prev_all;
	pid_t  pid;
    int status;
	
	sigfillset(&mask_all);
	while ((pid = waitpid(-1, &status, WNOHANG|WUNTRACED)) >0){ /* Reap a zombie child */
		if(WIFEXITED(status)){  //normal
            sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            deletejob(jobs,pid); /* Delete the child from the job list */
            sigprocmask(SIG_SETMASK, &prev_all, NULL);
        } else if(WIFSIGNALED(status)) { // sig teminate
            sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            printf("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid,WTERMSIG(status));
            deletejob(jobs, pid);
            sigprocmask(SIG_SETMASK, &prev_all, NULL);    
        }else if(WIFSTOPPED(status)){  //sig stop
            sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            printf("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid,WSTOPSIG(status));
            getjobpid(jobs,pid)->state = ST;
            sigprocmask(SIG_SETMASK, &prev_all, NULL);
        }
	}
	errno = olderrno;
    return;
}

void sigint_handler(int sig) 
{
    
    sigset_t mask_all,prev_all;
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

    pid_t fg_pid= fgpid(jobs);
    if(fg_pid > 0){
        kill(-fg_pid,sig);
    }        

    sigprocmask(SIG_SETMASK, &prev_all, NULL);
   
    return;
}

void sigtstp_handler(int sig) 
{
    sigset_t mask_all,prev_all;
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK, &mask_all, &prev_all);

    pid_t fg_pid= fgpid(jobs);
    if(fg_pid > 0){
        kill(-fg_pid,SIGTSTP);
    }        

    sigprocmask(SIG_SETMASK, &prev_all, NULL);
   
    return;
}
```
