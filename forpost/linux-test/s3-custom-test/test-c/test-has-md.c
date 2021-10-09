#include <stdio.h>
#include <dirent.h>
#include <regex.h>        

regex_t regex;
int reti;
int mdcount = 0;

int main(int argc, char *argv[]){
    DIR *folder;
    struct dirent *entry;
    int files = 0;
    char *dirpath =  ".";
    // if we have a positional use that
    if(argc > 1){
        dirpath = argv[1];
    }
    // open folder
    folder = opendir(dirpath);
    if(folder == NULL){
        // return a status of 2 for folder not found
        return 2;
    }
    while( (entry=readdir(folder)) ){
        files++;
        reti = regcomp(&regex, "\\.md$", 0);
        if(reti){
            // failed to compile a regex
            return 2;
        }
        reti = regexec(&regex, entry->d_name, 0, NULL, 0);
        if(!reti){
            mdcount++;
            //printf("%s\n", entry->d_name);
        }
        regfree(&regex);
    }
    closedir(folder);
    // if mdcount is greater than 0 then return exit with code 0
    //printf("%i\n", mdcount);
    if(mdcount > 0){
        return 0;
    }
    // else exit with code 1
    return 1;
}
