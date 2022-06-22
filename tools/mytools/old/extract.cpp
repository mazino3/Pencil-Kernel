#include<iostream>
#include<fstream>
#include<string>
#include<cstdlib>
using namespace std;

std::fstream hzk16;
std::fstream out;
std::fstream log;

void hzk16_copy();

int main()
{
    std::string hzk_name;
    std::cout << "字库文件名[HZK16]:";
    std::cin >> hzk_name;
    hzk16.open(hzk_name.c_str(),std::ios_base::in | std::ios_base::binary);
    if(!(hzk16.is_open()))
    {
        std::cout << std::endl << "open \'" << hzk_name <<"\' error";
        exit(2);
    }
    std::string out_name;
    std::cout << "输出文件名:";
    std::cin >> out_name;
    out.open(out_name.c_str(),std::ios_base::out);
    if(!(out.is_open()))
    {
        std::cout << std::endl << "open \'" << out_name <<"\' error";
    }
    std::cout << "处理中...\n";
    hzk16_copy();
    std::cout << "处理完成,结果保存在" << out_name << "中.\n"; 
    return 0;
}

void hzk16_copy()
{
    short buf[32];
    char o_buf[17] = {0};
    unsigned short key[16] = {0x0080,0x0040,0x0020,0x0010,0x0008,0x0004,0x0002,0x0001,0x8000,0x4000,0x2000,0x1000,0x0800,0x0400,0x0200,0x0100};

    int i,j,k,l;
    for(i = 0; i < 94; i++)
    {
        for(j = 0; j < 94; j++)
        {
            hzk16.read((char*)buf,32);
            out << ";" << i+1 << " " << j + 1 << "\n";
            for(k = 0; k < 16; k++)
            {
                memcpy(o_buf,"................",17);
                for(l = 0; l < 16; l++)
                {
                    if(buf[k] & key[l])
                    {
                        o_buf[l] = '#';
                    }
                }
                out << o_buf << ";\n";
            }
            out << "\n";
        }
    }
}

