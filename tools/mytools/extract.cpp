#include<iostream>
#include<cstdint>
#include<fstream>
#include<string>
#include<cstdlib>
using namespace std;

std::fstream font;
std::fstream out;
std::fstream log;

int utf8(int ch)
{
	// xxxx xxxx 33-7f
	if(ch >= 33 && ch <= 0x7f)
	{
		out.write((char*)&ch,1);
		// log.write((char*)&ch,1);
		return ch;
	}
	// 110x xxxx 10xx xxxx 7ff-80
	else if(ch <= 0x7ff && ch >= 0x80)
	{
		//小端字节序 高位10xx xxxx 低位110x xxxx
		//               0000 0xxx     xxxx xxxx
		//return 0x80c0;
		ch = (0x80c0 | (((ch & 0x07c0) >> 6) | ((ch & 0x003f) <<8 )));
		out.write((char*)&ch,2);
		// log.write((char*)&ch,2);
		return ch;
	}
	// 1110 xxxx 10xx xxxx 10xx xxxx ffff-800
	else if(ch <= 65535 && ch >= 2048)
	{
	    ch = (0x8080e0 | (ch & 0xf000) >> 12 | ((ch & 0x0fc0) << 2) | ((ch & 0x003f) << 16));
		out.write((char*)&ch,3);
		// log.write((char*)&ch,3);
		return ch;
	}
	return 0;
}

void font_copy(int startch);

int main()
{
    std::string font_name;
    int startch = 0;
    std::cout << "字库文件名:";
    std::cin >> font_name;
    font.open(font_name.c_str(),std::ios_base::in | std::ios_base::binary);
    if(!(font.is_open()))
    {
        std::cout << std::endl << "open \'" << font_name <<"\' error";
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
    /* log.open((out_name + ".log").c_str(),std::ios_base::out);
    if(!(log.is_open()))
    {
    	std::cout << std::endl << "open \'" << out_name + ".log" << "\'error";
    } */
    std::cout << "start code:";
    std::cin >> startch;
    // out << "section .data\nglobal font\nfont:\n";
    font_copy(startch);
    out << "; create by 'extract',copyright (c) 2022 Pencil-Kernel developers.\n; All rights reserved";
    log << "; create by 'extract',copyright (c) 2022 Pencil-Kernel developers.\n,All rights reserved";
    out.close();
    log.close();
    std::cout << "done!\n";
    return 0;
}

void font_copy(int startch)
{
    short buf[32];
    char o_buf[17] = {0};
    // char l_buf[17] = {0};
    //unsigned short key[16] = {0x8000,0x4000,0x2000,0x1000,0x0800,0x0400,0x0200,0x0100,0x0080,0x0040,0x0020,0x0010,0x0008,0x0004,0x0002,0x0001};
    unsigned short key[16] = {0x0080,0x0040,0x0020,0x0010,0x0008,0x0004,0x0002,0x0001,0x8000,0x4000,0x2000,0x1000,0x0800,0x0400,0x0200,0x0100};
    int chars = startch,ch;
    int i,j;
    while(!font.eof())
    {
    	out << ";char: 0x" << std::hex << chars << " ";
    	// log << "\t;char: 0x" << std::hex << chars << " ";
    	// std::cout << "\t;char: 0x" << std::hex << chars << " ( " << std::dec << chars << " )";
    	utf8(chars);
    	/*if(ch >= 33 && ch <=0x7f)
    	{
    	    out.write((char*)&ch,1);
        }
        else if(ch >= 0x80 && ch <= 0x7ff)
        {
        	out.write((char*)&ch,2);
        }
        else if(ch >= 0x800 && ch <= 0xffff)
        {
        	out.write((char*)&ch,3);
        }*/
    	out << std::endl;
        // log << std::endl;
        // std::cout << std::endl;
        //一个字符是16*16=32个char
        font.read((char*)buf,32);
        for(i = 0; i < 16; i++)
        {
            std::memcpy(o_buf,"................",17);
            // std::memcpy(o_buf,"0000000000000000",17);
            // std::memcpy(l_buf,"................",17);
            for(j = 0; j < 16; j++)
            {
                if(buf[i] & key[j])
                {
                	o_buf[j] = '#';
                    // o_buf[j] = '1';
                    // l_buf[j] = '#';
                }
            }
            out << o_buf << std::endl;
            //out << "\tdd " << o_buf << "b\n";
            //log << l_buf << std::endl;
            // std::cout << "\tdd " << o_buf << "b\n";
        }
        out << "\n";
        // log << "\n";
        out << std::flush;
        //log << std::flush;
        // std::cout << "\n";
        chars++;
    }
}
