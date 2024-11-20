#include <sys/stat.h>
#include <stdio.h>
#include <dirent.h>
#include <pwd.h>
#include <grp.h>
#include <time.h>
int main(int argc, char *argv[])
{
    struct dirent *mydir;
    DIR *dir = opendir(".");
    if(argc<2)
    {
        while((mydir = readdir(dir))!=NULL)
        {
            printf("%s  ", mydir->d_name);
        }
        printf("\n");
        return 0;
    }

    struct stat stbuff;
    
    struct passwd *pwd;
    struct group *grp;
    while((mydir = readdir(dir))!=NULL)
    {
        int x = stat(mydir->d_name, &stbuff);
        S_ISDIR(stbuff.st_mode)==1? printf("d "):printf("f ");
        (S_IWUSR & stbuff.st_mode) ? printf("x"):printf("_");
        (S_IRUSR & stbuff.st_mode) ? printf("r"):printf("_");
        (S_IXUSR & stbuff.st_mode) ? printf("w"):printf("_");       
        printf(" ");
        (S_IWGRP & stbuff.st_mode) ? printf("x"):printf("_");
        (S_IRGRP & stbuff.st_mode) ? printf("r"):printf("_");
        (S_IXGRP & stbuff.st_mode) ? printf("w"):printf("_");       
        printf(" ");
        (S_IWOTH & stbuff.st_mode) ? printf("x"):printf("_");
        (S_IROTH & stbuff.st_mode) ? printf("r"):printf("_");
        (S_IXOTH & stbuff.st_mode) ? printf("w"):printf("_");               
        printf(" %ld " , stbuff.st_nlink);
        pwd = getpwuid(stbuff.st_uid);
        printf("%s",pwd->pw_name);
        grp = getgrgid(stbuff.st_gid);
        printf(" %s ",grp->gr_name);
        printf(" %s  ", mydir->d_name);
        printf("\n");
    }
}