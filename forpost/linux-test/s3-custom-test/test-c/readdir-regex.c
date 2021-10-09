#include <stdio.h>
#include <dirent.h>
#include <regex.h>        

regex_t regex;
int reti;

int main()
{
    DIR *folder;
    struct dirent *entry;
    int files = 0;

    folder = opendir(".");
    if(folder == NULL)
    {
        perror("Unable to read directory");
        return(1);
    }

    while( (entry=readdir(folder)) )
    {
        files++;
        //reti = regcomp(&regex, "^a[[:alnum:]]", 0);
        reti = regcomp(&regex, ".md$", 0);
        reti = regexec(&regex, entry->d_name, 0, NULL, 0);
        if(!reti){
            printf("%s\n", entry->d_name);
        }
        regfree(&regex);
        //printf("File %3d: %s\n",
        //        files,
        //        entry->d_name
        //      );
    }

    closedir(folder);

    return(0);
}
