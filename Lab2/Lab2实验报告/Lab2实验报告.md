# Lab2

## T1

* 完成寄存器堆功能仿真

  ![](https://raw.githubusercontent.com/expecto347/Img/main/202304101639278.png)

## T2

* 比较分布式寄存器和块式寄存器的区别
  ![202304101717134](https://raw.githubusercontent.com/expecto347/Img/main/202304101718313.png)

## T3

* 顶层模块分别IP例化块式16 x 8位单端口RAM三种不同的操作模式
	![块式存储器](https://raw.githubusercontent.com/expecto347/Img/main/image-20230411225328099.png)

## T3

```mermaid
stateDiagram-v2
[*] --> IDLE: rst
IDLE --> ENQU: enq & !full
ENQU --> ENQU: enq & !full
ENQU --> IDLE: enq & full
IDLE --> DEQU: deq & !empty
DEQU --> DEQU: deq & !empty
DEQU --> IDLE: deq & empty
DEQU --> ENQU: enq
ENQU --> DEQU
```

