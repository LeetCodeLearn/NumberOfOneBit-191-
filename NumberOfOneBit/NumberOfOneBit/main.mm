//
//  main.m
//  NumberOfOneBit
//
//  Created by 李佳 on 15/9/18.
//  Copyright © 2015年 LiJia. All rights reserved.
//


#include <iostream>

class Solution {
public:
    int hammingWeight(uint32_t n)
    {
        int count = 0;
        while(n)
        {
            n = n & (n - 1);
            count++;
        };
        return count;
    }
    
    int hammingWeight2(uint32_t n)
    {
        int count = 0;
        while (n) {
            count += n & 1;
            n = n >> 1;
        }
        return count;
    }
};

int main(int argc, const char * argv[])
{
    Solution* solu = new Solution;
    printf("%d\n", solu->hammingWeight(11));
    printf("%d\n", solu->hammingWeight2(11));
    delete solu;
    return 0;
}
