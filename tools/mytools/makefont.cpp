/* copyright 2022 Pencil-Kernel developers,All rights reserved. */
#include <iostream>
#include <fstream>
#include <cstring>
#include <cstdint>

int main(int argc,char* argv[])
{
    int outbin = 1;
    std::fstream in;
    std::fstream out;
    if(argc < 3)
    {
        /* default : Section_Name = .data ,Lable_Name = src */
        /* note : input Section_Name without '.' ! */
        std::cout << ">makefont src obj [-asm Section_Name Lable_Name]\n";
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
    if(argc >= 4)
    {
        std::string optasm;
        optasm = argv[3];
        if(optasm == "-asm")
        {
            outbin = 0;
        }
    }
    char s[32];
    char* c;
    uint16_t i = 0;
    if(outbin)
    {
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
    }
    else
    {
        if(argc >= 5)
        {
            out << "section ." << argv[4] << "\n"; /* section name */
        }
        else
        {
            out << "section .data\n";
        }
        if(argc >= 6)
        {
            out << "global " << argv[5] << '\n' << argv[5] << ":\n"; /* lable name */
        }
        else
        {
            out << "global " << argv[1] << '\n' << argv[1] << ":\n";
        }
        do
        {
            in.getline(s,32);
            if(s[0] == '\n' || s[0] == ';' || s[0] == '\0')
            {
                continue;
            }
            if(s[0] == '.' || s[0] == '#')
            {
                c = s;
                while(*c)
                {
                    if(*c == '#')
                    {
                        *c = '1';
                    }
                    if(*c == '.')
                    {
                        *c = '0';
                    }
                    if(*c == ';')
                    {
                        *c = '\0';
                        break;
                    }
                    c++;
                }
            }
            out << '\t' << "dd " << s << "b\n"; 
        }while(!in.eof());
    }
    out.close();
    return 0;

}
