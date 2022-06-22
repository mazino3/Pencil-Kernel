#include <iostream>
#include <fstream>
#include <cstdint>
int main(int argc,char* argv[])
{
    std::fstream in;
    std::fstream out;
    if(argc < 3)
    {
        std::cout << ">makefont src opt\n";
        return 1;
    }
    in.open(argv[1],std::ios_base::in);
    if(!in.is_open())
    {
        std::cout << "can't open input file.\n";
        return 2;
    }
    out.open(argv[2],std::ios_base::out | std::ios_base::binary);
    if(!out.is_open())
    {
        std::cout << "can't open output file.\n";
        return 3;
    }
    char s[32];
    uint16_t i = 0;
    do
    {
        in.getline(s,32);
        if(s[0] == '\n' || s[0] == ';')
        {
        	continue;
		}
        if(s[0] == '.' || s[0] == '#')
        {
            i  = (s[ 0] == '#') << 7;
            i |= (s[ 1] == '#') << 6;
            i |= (s[ 2] == '#') << 5;
            i |= (s[ 3] == '#') << 4;
            i |= (s[ 4] == '#') << 3;
            i |= (s[ 5] == '#') << 2;
            i |= (s[ 6] == '#') << 1;
            i |= (s[ 7] == '#')     ;

            i |= (s[ 8] == '#') << 15;
            i |= (s[ 9] == '#') << 14;
            i |= (s[10] == '#') << 13;
            i |= (s[11] == '#') << 12;
            i |= (s[12] == '#') << 11;
            i |= (s[13] == '#') << 10;
            i |= (s[14] == '#') <<  9;
            i |= (s[15] == '#') <<  8;
            out.write((char*)&i,sizeof(i));
        }

    }while(!in.eof());
    return 0;

}
