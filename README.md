It turns out that the environment variables available to a user in their shell (including any set in a dockerfile or Docker compose) are not available to a process they are running as a `cron` job -  something I wasted a couple of hours figuring out. This is a simple demo of that problem. 

There's no way, from the cron job's point of view, to pick up the environment variables from the shell, so the solution used here is to save the variable we're interested in at the entry point, then read it from the cron script later. Not elegant, but functional.

We can ignore the possibility of the image_url.txt file being stale, since all the files in a container are ephemeral.