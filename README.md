# alpine

# http://allinone.vm:8080/#/chat/conv-1755328343577
# -O0: 表示没有优化。
# -O1: 表示基本优化。
# -O2: 表示经过验证的优化，是常用的默认级别。
# -O3: 表示更全面的优化。
# -Ofast: 表示忽略某些标准限制的全面优化。
# -Os: 表示优化代码大小。
PREPARE

HEADER_TARGETS += SRC_ROOTS[0]
HEADER_TARGETS += SRC_ROOTS[0]/sub1
HEADER_TARGETS += SRC_ROOTS[0]/sub1/sub2
HEADER_TARGETS += SRC_ROOTS[1]

recursive