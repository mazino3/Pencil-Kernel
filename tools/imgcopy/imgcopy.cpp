#include <iostream>
#include <fstream>
#include <string>
#include <stdint.h>
#include <stdlib.h>
#include "fs/epfs.h"

#ifndef PACKED
#define PACKED __attribute__(packed);
#endif

struct part_table //������(16�ֽ�)
{
    uint8_t bootable;    //�ɷ�����?
    uint8_t start_head;  //��ʼ��ͷ
    uint8_t start_sector;//��ʼ����
    uint8_t start_chs;   //��ʼ�ŵ�
    uint8_t fs_type;     //fs����
    uint8_t end_head;    //������ͷ
    uint8_t end_sector;  //��������
    uint8_t end_chs;     //�����ŵ�
    uint32_t start_lba;  //��ʼlba
    uint32_t sec_cnt;    //������
} PACKED;

std::string command;  // ���������
std::fstream disk;    // ��������ļ�
std::string input_path;   //��������е�·��
std::string output_path;
std::fstream input_file;  // ���뵽��������е��ļ�
std::fstream output_file; // ����������ж������ļ�

void bootable(char* part);
void fdisk(char* part,char* s_lba,char* sec_cnt,char* spt);
void format(int part);
void help();

int main(int argc,char* argv[])
{
    command = argv[1];
    if(argc < 3)
    {
        if(command == "-help")
        {
            help();
            return 0;
        }
        else
        {
            std::cout << "error arg:" << argv[1] << std::endl;
            exit(2);
        }
    }
    if(command == "-bootable")
    {
        disk.open(argv[2],std::ios_base::in | std::ios_base::out | std::ios_base::binary);
        if(!(disk.is_open()))
        {
            std::cout << argv[2] << "��ʧ�ܻ��ļ�������";
            exit(2);
        }
        bootable(argv[3]);
    }
    else if(command == "-fdisk")
    {
        disk.open(argv[2],std::ios_base::in | std::ios_base::out | std::ios_base::binary);
        if(!(disk.is_open()))
        {
            std::cout << argv[2] << "��ʧ�ܻ��ļ�������";
            exit(2);
        }

        fdisk(argv[6],argv[7],argv[8],argv[5]);
    }
    else if(command == "-format")
    {
        disk.open(argv[2],std::ios_base::in | std::ios_base::out | std::ios_base::binary);
        if(!(disk.is_open()))
        {
            std::cout << argv[2] << "��ʧ�ܻ��ļ�������";
            exit(2);
        }
        int part = argv[3][0] - '0';
        format(part);
    }
    else if(command == "-input")
    {
        std::cout << "input�ݲ�֧��";
    }
    else if(command == "-output")
    {
        std::cout << "output�ݲ�֧��";
    }
    else
    {
        std::cout << "error command:" << command << std::endl;
    }
    return 0;
}

void bootable(char* part)
{
    disk.seekp(0x1be + (atoi(part) - 1) * 16);
    uint8_t bootable = 0x80;
    disk.write((char*)&bootable,1);
}

void fdisk(char* part,char* s_lba,char* sec_cnt,char* spt)
{
    part_table disk_part = {0};
    //disk.seekg(0x1be + (part - 1) * 16);
    //disk.read((char*)&disk_part,16);

    // disk_part.bootable = 0x80; //������
    int end_lba = atoi(s_lba) + atoi(sec_cnt);

    disk_part.start_head = (atoi(s_lba)/atoi(spt)) & 1; //lbaתchs,��boot.asm
    disk_part.start_sector = (atoi(s_lba) % atoi(spt)) + 1;
    disk_part.start_chs = (atoi(s_lba)/atoi(spt)) >> 1;

    disk_part.fs_type = 0x95; //EPFS��0x95

    disk_part.end_head = (end_lba/atoi(spt)) & 1; // lbaתchs
    disk_part.end_sector = (end_lba % atoi(spt)) + 1;
    disk_part.end_chs = (end_lba/atoi(spt)) >> 1;

    disk_part.start_lba = atoi(s_lba);
    disk_part.sec_cnt = atoi(sec_cnt);
    // std::cout << 0x1be + (stoi(part) - 1) * 16;
    disk.seekp(0x1be + (atoi(part) - 1) * 16); //��λ���
    disk.write((char*)&disk_part,16);
}

void format(int part)
{
    part_table disk_part;
    disk.seekg(0x1be + (part - 1) * 16);
    disk.read((char*)&disk_part,16);

    disk_part.fs_type = 0x95;

    disk.seekp(0x1be + (part - 1) * 16);
    disk.write((char*)&disk_part,16);
    //�˴����и������,��������
}

void help()
{
    std::cout << "imgcopy v0.0.1" << std::endl;
    std::cout << "�������(Ӳ��)�༭����(����EPFS)" << std::endl;

    std::cout << "����:" << std::endl;
    std::cout << "-bootable (disk) (part)" << std::endl
              << "\t" << "���������disk��part������Ϊ�����" << std::endl << std::endl;

    std::cout << "-fdisk (disk) (cyclinders) (heads) (spt) (part) (start_lba) (sector_cnt)" << std::endl
              << "\t" << "���������disk��start_lba������ʼ��sector_cnt������Ϊpart����" << std::endl << std::endl;

    std::cout << "-format (disk) (part)" << std::endl
              << "\t" << "���������disk��part������ʽ��ΪEPFS(��֧��������)" << std::endl
              << "\t" << "ʾ��:" << std::endl
              << "\t" << "imgcopy -format a.img 1" << std::endl
              << "\t" << "�����a.img�ĵ�1������ʽ��ΪEPFS" << std::endl << std::endl;

    std::cout << "-input (disk) (part) (path) (file)" << std::endl
              << "\t" << "��file���뵽�������disk��part������pathĿ¼��" << std::endl
              << "\t" << "ʾ��:" << std::endl
              << "\t" << "imgcopy -input a.img 1 /file/a.txt 1.txt" << std::endl
              << "\t" << "�����1.txt���뵽�������a.img�ĵ�1�����е�/file/a.txt�ļ���";
}

