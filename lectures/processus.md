---
layout:  post
title: Processes
description:  Master the concepts of processus in Linux
date: 2022/04/24
permalink: /lectures/processus/ 
lecturers:
  - name:  Anass Belcaid
---

* (toc)
{:toc}


## Processes


A **Process** is 

- An instance of a **program** that is being executed.

- In Linux each **process** has a **unique**  numerical identifier called
    **Process Identifier (PID)**

- Anything that is running inside a Linux is a **process**. For example your
        editor **vim** your networking manager is a list of processes which we
        called **service**.


### Parent

In a **hierarchical** manner, processes can create another processes. In those
situation, we call the originating process the **parent** and the newly created
process the **child**.


> Hence we will find a tree-like  hierarchy among processes.

If we have a tree, what is the initial process ( the process that create all the
otters).

- The first process that is run is `init`.
  - this process is started by the kernel.
  - Its **PID** is **1**.

> On recent distributions that uses
[systemd](https://doc.ubuntu-fr.org/systemd), you may find that it has the PID
**1**.


## Listing the processes

If we want to list the **running** processes in our system, we use the command

- `ps`: Print the running processes.
  - `Default`: print the processes in your current session.
  - `-e`: print **all** the processes.
  - `-f `: print with full information.
  - `-H `: print the **Tree**.
  - `-u [user]`: print processes attached to a given user.

Other useful to manipulate processes we mention:


- `kill,pkill`: send the terminating signal to a process.
- `pgrep`: search for a processus by it name.
- `htop`: show live process **stats** in a nice  graphical format.


<div class="center">
  <img src=" {{ site.url }}{{ site.baseurl }}/assets/img/htop.png" width="850" height="300">
  <div class="figcaption">
  The Htop command
  </div>
</div>

### Suspended processes

A process can be **suspended** leaving the room for the shell.

- In order to suspend a process we could send the associated signal by pressing
    **CTlR-Z**.
- When suspended, the process is still run but put in and **IDLE** state.

> If that is the case, how can we get back to a suspended process and How we can
>list them

- `jobs` : list the suspended process in the curent shell.
  - `-l` : also list their **PID**.
  - `-p` : will only print their **PID**.

In order to go back to a job, we use the command

- `fg %[jobid]`: for foreground. Where [jobid] is the number of job

We can also **kill** a job using the command kill

- `kill %[jobid]`: will kill the job identified by its id.

## Signals

Linux [Signals](https://www.tutorialspoint.com/unix/unix-signals-traps.htm) are
a means of sending messages to **other** processes. The list of available
signals in Linux can be printed by the command 

```bash
kill -l
```

Here is an explanation of the most used ones.

- **SIGTERM (15)** : tells a process to exit now.
- **SIGINT (2)** : The signal sent when you press CTRL-C.
- **SIGHUP (1)**: The signal sent when the user closes the terminal.
- **SIGKILL (9)**: will kill ap rocess without giving it the chance to clean up.
- **SIGCHLD** : tells the processus to collect child data.
- **SIGSTOP (19)**: suspends a process (CTRL-Z)
- **SIGCONT (18)** resume a process.

> These signals can be sent using the command kill, pkill and killall


For example in order to suspend a process:

```bash
kill -STOP 3027
```


Or we can use the code of the signal


```bash
kill 9 3027      # will kill the process (SIGKILL)
```

## Process Life Cycle


A process in Linux goes in the following life cycle:


1. Process is created, typically forked from a parent process.
 - The process now has a **PID** and the operating system starts tracking its
     info.
2. The process does whatever the process is supposed to do.
3. The process **ends**.
  - The operating system continues to hold onto resources info, PID and
      termination status code for the process.
  - The OS sens **SIGCHILD** for its parent in order for him to collect the
      data.
  - Parent process collect the data by calling the **wait** function.
  - The OS releases the data about the processus.


### Zombies processes

But what happens if a child process ends, but the **parent function doen't
collect the data**. In this case, 

- The child process will remain in the **PEED** table and other info stored.
- Those processes are known as **zombie processes**.
- This is because the child process has died, but the parent process has not
    nullified it responsibilities.

> This a little bug, but not a huge problem, since the memory impact is low.



### Orphan Processes

But how about when the **parent** process ends without terminating its child's
processes.

- Those processes are known as **Orphan Processes**
- They are adopted by **PID=1**.
