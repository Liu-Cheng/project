; ModuleID = 'fun2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define i32 @_Z9matrixAddPA10_iS0_([10 x i32]* %a, [10 x i32]* %b) nounwind {
entry:
  %c = alloca [10 x [10 x i32]], align 4
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx4 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 0
  %0 = load i32* %arrayidx4, align 4
  %arrayidx6 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 0
  %1 = load i32* %arrayidx6, align 4
  %add = add nsw i32 %0, %1
  %arrayidx7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [10 x i32]* %arrayidx7, i32 0, i32 0
  store i32 %add, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [10 x i32]* %arrayidx9, i32 0, i32 0
  %2 = load i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %arrayidx4.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 1
  %3 = load i32* %arrayidx4.1, align 4
  %arrayidx6.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 1
  %4 = load i32* %arrayidx6.1, align 4
  %add.1 = add nsw i32 %3, %4
  %arrayidx7.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.1 = getelementptr inbounds [10 x i32]* %arrayidx7.1, i32 0, i32 1
  store i32 %add.1, i32* %arrayidx8.1, align 4
  %arrayidx9.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.1 = getelementptr inbounds [10 x i32]* %arrayidx9.1, i32 0, i32 1
  %5 = load i32* %arrayidx10.1, align 4
  %add11.1 = add nsw i32 %2, %5
  br label %for.inc.1

for.inc12:                                        ; preds = %for.inc.9
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx4.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 2
  %6 = load i32* %arrayidx4.2, align 4
  %arrayidx6.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 2
  %7 = load i32* %arrayidx6.2, align 4
  %add.2 = add nsw i32 %6, %7
  %arrayidx7.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.2 = getelementptr inbounds [10 x i32]* %arrayidx7.2, i32 0, i32 2
  store i32 %add.2, i32* %arrayidx8.2, align 4
  %arrayidx9.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.2 = getelementptr inbounds [10 x i32]* %arrayidx9.2, i32 0, i32 2
  %8 = load i32* %arrayidx10.2, align 4
  %add11.2 = add nsw i32 %add11.1, %8
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx4.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 3
  %9 = load i32* %arrayidx4.3, align 4
  %arrayidx6.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 3
  %10 = load i32* %arrayidx6.3, align 4
  %add.3 = add nsw i32 %9, %10
  %arrayidx7.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.3 = getelementptr inbounds [10 x i32]* %arrayidx7.3, i32 0, i32 3
  store i32 %add.3, i32* %arrayidx8.3, align 4
  %arrayidx9.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.3 = getelementptr inbounds [10 x i32]* %arrayidx9.3, i32 0, i32 3
  %11 = load i32* %arrayidx10.3, align 4
  %add11.3 = add nsw i32 %add11.2, %11
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx4.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 4
  %12 = load i32* %arrayidx4.4, align 4
  %arrayidx6.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 4
  %13 = load i32* %arrayidx6.4, align 4
  %add.4 = add nsw i32 %12, %13
  %arrayidx7.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.4 = getelementptr inbounds [10 x i32]* %arrayidx7.4, i32 0, i32 4
  store i32 %add.4, i32* %arrayidx8.4, align 4
  %arrayidx9.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.4 = getelementptr inbounds [10 x i32]* %arrayidx9.4, i32 0, i32 4
  %14 = load i32* %arrayidx10.4, align 4
  %add11.4 = add nsw i32 %add11.3, %14
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx4.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 5
  %15 = load i32* %arrayidx4.5, align 4
  %arrayidx6.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 5
  %16 = load i32* %arrayidx6.5, align 4
  %add.5 = add nsw i32 %15, %16
  %arrayidx7.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.5 = getelementptr inbounds [10 x i32]* %arrayidx7.5, i32 0, i32 5
  store i32 %add.5, i32* %arrayidx8.5, align 4
  %arrayidx9.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.5 = getelementptr inbounds [10 x i32]* %arrayidx9.5, i32 0, i32 5
  %17 = load i32* %arrayidx10.5, align 4
  %add11.5 = add nsw i32 %add11.4, %17
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx4.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 6
  %18 = load i32* %arrayidx4.6, align 4
  %arrayidx6.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 6
  %19 = load i32* %arrayidx6.6, align 4
  %add.6 = add nsw i32 %18, %19
  %arrayidx7.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.6 = getelementptr inbounds [10 x i32]* %arrayidx7.6, i32 0, i32 6
  store i32 %add.6, i32* %arrayidx8.6, align 4
  %arrayidx9.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.6 = getelementptr inbounds [10 x i32]* %arrayidx9.6, i32 0, i32 6
  %20 = load i32* %arrayidx10.6, align 4
  %add11.6 = add nsw i32 %add11.5, %20
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx4.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 7
  %21 = load i32* %arrayidx4.7, align 4
  %arrayidx6.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 7
  %22 = load i32* %arrayidx6.7, align 4
  %add.7 = add nsw i32 %21, %22
  %arrayidx7.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.7 = getelementptr inbounds [10 x i32]* %arrayidx7.7, i32 0, i32 7
  store i32 %add.7, i32* %arrayidx8.7, align 4
  %arrayidx9.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.7 = getelementptr inbounds [10 x i32]* %arrayidx9.7, i32 0, i32 7
  %23 = load i32* %arrayidx10.7, align 4
  %add11.7 = add nsw i32 %add11.6, %23
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx4.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 8
  %24 = load i32* %arrayidx4.8, align 4
  %arrayidx6.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 8
  %25 = load i32* %arrayidx6.8, align 4
  %add.8 = add nsw i32 %24, %25
  %arrayidx7.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.8 = getelementptr inbounds [10 x i32]* %arrayidx7.8, i32 0, i32 8
  store i32 %add.8, i32* %arrayidx8.8, align 4
  %arrayidx9.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.8 = getelementptr inbounds [10 x i32]* %arrayidx9.8, i32 0, i32 8
  %26 = load i32* %arrayidx10.8, align 4
  %add11.8 = add nsw i32 %add11.7, %26
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx4.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i32 9
  %27 = load i32* %arrayidx4.9, align 4
  %arrayidx6.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i32 9
  %28 = load i32* %arrayidx6.9, align 4
  %add.9 = add nsw i32 %27, %28
  %arrayidx7.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx8.9 = getelementptr inbounds [10 x i32]* %arrayidx7.9, i32 0, i32 9
  store i32 %add.9, i32* %arrayidx8.9, align 4
  %arrayidx9.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 0
  %arrayidx10.9 = getelementptr inbounds [10 x i32]* %arrayidx9.9, i32 0, i32 9
  %29 = load i32* %arrayidx10.9, align 4
  %add11.9 = add nsw i32 %add11.8, %29
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  br label %for.inc12

for.body3.1:                                      ; preds = %for.inc12
  %arrayidx.15 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.16 = getelementptr inbounds [10 x i32]* %arrayidx.15, i32 0, i32 0
  %30 = load i32* %arrayidx4.16, align 4
  %arrayidx5.17 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.18 = getelementptr inbounds [10 x i32]* %arrayidx5.17, i32 0, i32 0
  %31 = load i32* %arrayidx6.18, align 4
  %add.19 = add nsw i32 %30, %31
  %arrayidx7.110 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.111 = getelementptr inbounds [10 x i32]* %arrayidx7.110, i32 0, i32 0
  store i32 %add.19, i32* %arrayidx8.111, align 4
  %arrayidx9.112 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.113 = getelementptr inbounds [10 x i32]* %arrayidx9.112, i32 0, i32 0
  %32 = load i32* %arrayidx10.113, align 4
  %add11.114 = add nsw i32 %add11.9, %32
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body3.1
  %arrayidx.1.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.1.1 = getelementptr inbounds [10 x i32]* %arrayidx.1.1, i32 0, i32 1
  %33 = load i32* %arrayidx4.1.1, align 4
  %arrayidx5.1.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.1.1 = getelementptr inbounds [10 x i32]* %arrayidx5.1.1, i32 0, i32 1
  %34 = load i32* %arrayidx6.1.1, align 4
  %add.1.1 = add nsw i32 %33, %34
  %arrayidx7.1.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.1.1 = getelementptr inbounds [10 x i32]* %arrayidx7.1.1, i32 0, i32 1
  store i32 %add.1.1, i32* %arrayidx8.1.1, align 4
  %arrayidx9.1.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.1.1 = getelementptr inbounds [10 x i32]* %arrayidx9.1.1, i32 0, i32 1
  %35 = load i32* %arrayidx10.1.1, align 4
  %add11.1.1 = add nsw i32 %add11.114, %35
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.115
  %arrayidx.2.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.2.1 = getelementptr inbounds [10 x i32]* %arrayidx.2.1, i32 0, i32 2
  %36 = load i32* %arrayidx4.2.1, align 4
  %arrayidx5.2.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.2.1 = getelementptr inbounds [10 x i32]* %arrayidx5.2.1, i32 0, i32 2
  %37 = load i32* %arrayidx6.2.1, align 4
  %add.2.1 = add nsw i32 %36, %37
  %arrayidx7.2.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.2.1 = getelementptr inbounds [10 x i32]* %arrayidx7.2.1, i32 0, i32 2
  store i32 %add.2.1, i32* %arrayidx8.2.1, align 4
  %arrayidx9.2.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.2.1 = getelementptr inbounds [10 x i32]* %arrayidx9.2.1, i32 0, i32 2
  %38 = load i32* %arrayidx10.2.1, align 4
  %add11.2.1 = add nsw i32 %add11.1.1, %38
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx.3.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.3.1 = getelementptr inbounds [10 x i32]* %arrayidx.3.1, i32 0, i32 3
  %39 = load i32* %arrayidx4.3.1, align 4
  %arrayidx5.3.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.3.1 = getelementptr inbounds [10 x i32]* %arrayidx5.3.1, i32 0, i32 3
  %40 = load i32* %arrayidx6.3.1, align 4
  %add.3.1 = add nsw i32 %39, %40
  %arrayidx7.3.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.3.1 = getelementptr inbounds [10 x i32]* %arrayidx7.3.1, i32 0, i32 3
  store i32 %add.3.1, i32* %arrayidx8.3.1, align 4
  %arrayidx9.3.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.3.1 = getelementptr inbounds [10 x i32]* %arrayidx9.3.1, i32 0, i32 3
  %41 = load i32* %arrayidx10.3.1, align 4
  %add11.3.1 = add nsw i32 %add11.2.1, %41
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx.4.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.4.1 = getelementptr inbounds [10 x i32]* %arrayidx.4.1, i32 0, i32 4
  %42 = load i32* %arrayidx4.4.1, align 4
  %arrayidx5.4.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.4.1 = getelementptr inbounds [10 x i32]* %arrayidx5.4.1, i32 0, i32 4
  %43 = load i32* %arrayidx6.4.1, align 4
  %add.4.1 = add nsw i32 %42, %43
  %arrayidx7.4.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.4.1 = getelementptr inbounds [10 x i32]* %arrayidx7.4.1, i32 0, i32 4
  store i32 %add.4.1, i32* %arrayidx8.4.1, align 4
  %arrayidx9.4.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.4.1 = getelementptr inbounds [10 x i32]* %arrayidx9.4.1, i32 0, i32 4
  %44 = load i32* %arrayidx10.4.1, align 4
  %add11.4.1 = add nsw i32 %add11.3.1, %44
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx.5.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.5.1 = getelementptr inbounds [10 x i32]* %arrayidx.5.1, i32 0, i32 5
  %45 = load i32* %arrayidx4.5.1, align 4
  %arrayidx5.5.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.5.1 = getelementptr inbounds [10 x i32]* %arrayidx5.5.1, i32 0, i32 5
  %46 = load i32* %arrayidx6.5.1, align 4
  %add.5.1 = add nsw i32 %45, %46
  %arrayidx7.5.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.5.1 = getelementptr inbounds [10 x i32]* %arrayidx7.5.1, i32 0, i32 5
  store i32 %add.5.1, i32* %arrayidx8.5.1, align 4
  %arrayidx9.5.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.5.1 = getelementptr inbounds [10 x i32]* %arrayidx9.5.1, i32 0, i32 5
  %47 = load i32* %arrayidx10.5.1, align 4
  %add11.5.1 = add nsw i32 %add11.4.1, %47
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %arrayidx.6.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.6.1 = getelementptr inbounds [10 x i32]* %arrayidx.6.1, i32 0, i32 6
  %48 = load i32* %arrayidx4.6.1, align 4
  %arrayidx5.6.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.6.1 = getelementptr inbounds [10 x i32]* %arrayidx5.6.1, i32 0, i32 6
  %49 = load i32* %arrayidx6.6.1, align 4
  %add.6.1 = add nsw i32 %48, %49
  %arrayidx7.6.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.6.1 = getelementptr inbounds [10 x i32]* %arrayidx7.6.1, i32 0, i32 6
  store i32 %add.6.1, i32* %arrayidx8.6.1, align 4
  %arrayidx9.6.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.6.1 = getelementptr inbounds [10 x i32]* %arrayidx9.6.1, i32 0, i32 6
  %50 = load i32* %arrayidx10.6.1, align 4
  %add11.6.1 = add nsw i32 %add11.5.1, %50
  br label %for.inc.6.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %arrayidx.7.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.7.1 = getelementptr inbounds [10 x i32]* %arrayidx.7.1, i32 0, i32 7
  %51 = load i32* %arrayidx4.7.1, align 4
  %arrayidx5.7.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.7.1 = getelementptr inbounds [10 x i32]* %arrayidx5.7.1, i32 0, i32 7
  %52 = load i32* %arrayidx6.7.1, align 4
  %add.7.1 = add nsw i32 %51, %52
  %arrayidx7.7.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.7.1 = getelementptr inbounds [10 x i32]* %arrayidx7.7.1, i32 0, i32 7
  store i32 %add.7.1, i32* %arrayidx8.7.1, align 4
  %arrayidx9.7.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.7.1 = getelementptr inbounds [10 x i32]* %arrayidx9.7.1, i32 0, i32 7
  %53 = load i32* %arrayidx10.7.1, align 4
  %add11.7.1 = add nsw i32 %add11.6.1, %53
  br label %for.inc.7.1

for.inc.7.1:                                      ; preds = %for.inc.6.1
  %arrayidx.8.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.8.1 = getelementptr inbounds [10 x i32]* %arrayidx.8.1, i32 0, i32 8
  %54 = load i32* %arrayidx4.8.1, align 4
  %arrayidx5.8.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.8.1 = getelementptr inbounds [10 x i32]* %arrayidx5.8.1, i32 0, i32 8
  %55 = load i32* %arrayidx6.8.1, align 4
  %add.8.1 = add nsw i32 %54, %55
  %arrayidx7.8.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.8.1 = getelementptr inbounds [10 x i32]* %arrayidx7.8.1, i32 0, i32 8
  store i32 %add.8.1, i32* %arrayidx8.8.1, align 4
  %arrayidx9.8.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.8.1 = getelementptr inbounds [10 x i32]* %arrayidx9.8.1, i32 0, i32 8
  %56 = load i32* %arrayidx10.8.1, align 4
  %add11.8.1 = add nsw i32 %add11.7.1, %56
  br label %for.inc.8.1

for.inc.8.1:                                      ; preds = %for.inc.7.1
  %arrayidx.9.1 = getelementptr inbounds [10 x i32]* %a, i32 1
  %arrayidx4.9.1 = getelementptr inbounds [10 x i32]* %arrayidx.9.1, i32 0, i32 9
  %57 = load i32* %arrayidx4.9.1, align 4
  %arrayidx5.9.1 = getelementptr inbounds [10 x i32]* %b, i32 1
  %arrayidx6.9.1 = getelementptr inbounds [10 x i32]* %arrayidx5.9.1, i32 0, i32 9
  %58 = load i32* %arrayidx6.9.1, align 4
  %add.9.1 = add nsw i32 %57, %58
  %arrayidx7.9.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx8.9.1 = getelementptr inbounds [10 x i32]* %arrayidx7.9.1, i32 0, i32 9
  store i32 %add.9.1, i32* %arrayidx8.9.1, align 4
  %arrayidx9.9.1 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 1
  %arrayidx10.9.1 = getelementptr inbounds [10 x i32]* %arrayidx9.9.1, i32 0, i32 9
  %59 = load i32* %arrayidx10.9.1, align 4
  %add11.9.1 = add nsw i32 %add11.8.1, %59
  br label %for.inc.9.1

for.inc.9.1:                                      ; preds = %for.inc.8.1
  br label %for.inc12.1

for.inc12.1:                                      ; preds = %for.inc.9.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc12.1
  %arrayidx.216 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.217 = getelementptr inbounds [10 x i32]* %arrayidx.216, i32 0, i32 0
  %60 = load i32* %arrayidx4.217, align 4
  %arrayidx5.218 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.219 = getelementptr inbounds [10 x i32]* %arrayidx5.218, i32 0, i32 0
  %61 = load i32* %arrayidx6.219, align 4
  %add.220 = add nsw i32 %60, %61
  %arrayidx7.221 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.222 = getelementptr inbounds [10 x i32]* %arrayidx7.221, i32 0, i32 0
  store i32 %add.220, i32* %arrayidx8.222, align 4
  %arrayidx9.223 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.224 = getelementptr inbounds [10 x i32]* %arrayidx9.223, i32 0, i32 0
  %62 = load i32* %arrayidx10.224, align 4
  %add11.225 = add nsw i32 %add11.9.1, %62
  br label %for.inc.226

for.inc.226:                                      ; preds = %for.body3.2
  %arrayidx.1.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.1.2 = getelementptr inbounds [10 x i32]* %arrayidx.1.2, i32 0, i32 1
  %63 = load i32* %arrayidx4.1.2, align 4
  %arrayidx5.1.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.1.2 = getelementptr inbounds [10 x i32]* %arrayidx5.1.2, i32 0, i32 1
  %64 = load i32* %arrayidx6.1.2, align 4
  %add.1.2 = add nsw i32 %63, %64
  %arrayidx7.1.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.1.2 = getelementptr inbounds [10 x i32]* %arrayidx7.1.2, i32 0, i32 1
  store i32 %add.1.2, i32* %arrayidx8.1.2, align 4
  %arrayidx9.1.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.1.2 = getelementptr inbounds [10 x i32]* %arrayidx9.1.2, i32 0, i32 1
  %65 = load i32* %arrayidx10.1.2, align 4
  %add11.1.2 = add nsw i32 %add11.225, %65
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.226
  %arrayidx.2.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.2.2 = getelementptr inbounds [10 x i32]* %arrayidx.2.2, i32 0, i32 2
  %66 = load i32* %arrayidx4.2.2, align 4
  %arrayidx5.2.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.2.2 = getelementptr inbounds [10 x i32]* %arrayidx5.2.2, i32 0, i32 2
  %67 = load i32* %arrayidx6.2.2, align 4
  %add.2.2 = add nsw i32 %66, %67
  %arrayidx7.2.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.2.2 = getelementptr inbounds [10 x i32]* %arrayidx7.2.2, i32 0, i32 2
  store i32 %add.2.2, i32* %arrayidx8.2.2, align 4
  %arrayidx9.2.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.2.2 = getelementptr inbounds [10 x i32]* %arrayidx9.2.2, i32 0, i32 2
  %68 = load i32* %arrayidx10.2.2, align 4
  %add11.2.2 = add nsw i32 %add11.1.2, %68
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx.3.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.3.2 = getelementptr inbounds [10 x i32]* %arrayidx.3.2, i32 0, i32 3
  %69 = load i32* %arrayidx4.3.2, align 4
  %arrayidx5.3.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.3.2 = getelementptr inbounds [10 x i32]* %arrayidx5.3.2, i32 0, i32 3
  %70 = load i32* %arrayidx6.3.2, align 4
  %add.3.2 = add nsw i32 %69, %70
  %arrayidx7.3.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.3.2 = getelementptr inbounds [10 x i32]* %arrayidx7.3.2, i32 0, i32 3
  store i32 %add.3.2, i32* %arrayidx8.3.2, align 4
  %arrayidx9.3.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.3.2 = getelementptr inbounds [10 x i32]* %arrayidx9.3.2, i32 0, i32 3
  %71 = load i32* %arrayidx10.3.2, align 4
  %add11.3.2 = add nsw i32 %add11.2.2, %71
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx.4.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.4.2 = getelementptr inbounds [10 x i32]* %arrayidx.4.2, i32 0, i32 4
  %72 = load i32* %arrayidx4.4.2, align 4
  %arrayidx5.4.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.4.2 = getelementptr inbounds [10 x i32]* %arrayidx5.4.2, i32 0, i32 4
  %73 = load i32* %arrayidx6.4.2, align 4
  %add.4.2 = add nsw i32 %72, %73
  %arrayidx7.4.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.4.2 = getelementptr inbounds [10 x i32]* %arrayidx7.4.2, i32 0, i32 4
  store i32 %add.4.2, i32* %arrayidx8.4.2, align 4
  %arrayidx9.4.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.4.2 = getelementptr inbounds [10 x i32]* %arrayidx9.4.2, i32 0, i32 4
  %74 = load i32* %arrayidx10.4.2, align 4
  %add11.4.2 = add nsw i32 %add11.3.2, %74
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx.5.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.5.2 = getelementptr inbounds [10 x i32]* %arrayidx.5.2, i32 0, i32 5
  %75 = load i32* %arrayidx4.5.2, align 4
  %arrayidx5.5.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.5.2 = getelementptr inbounds [10 x i32]* %arrayidx5.5.2, i32 0, i32 5
  %76 = load i32* %arrayidx6.5.2, align 4
  %add.5.2 = add nsw i32 %75, %76
  %arrayidx7.5.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.5.2 = getelementptr inbounds [10 x i32]* %arrayidx7.5.2, i32 0, i32 5
  store i32 %add.5.2, i32* %arrayidx8.5.2, align 4
  %arrayidx9.5.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.5.2 = getelementptr inbounds [10 x i32]* %arrayidx9.5.2, i32 0, i32 5
  %77 = load i32* %arrayidx10.5.2, align 4
  %add11.5.2 = add nsw i32 %add11.4.2, %77
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %arrayidx.6.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.6.2 = getelementptr inbounds [10 x i32]* %arrayidx.6.2, i32 0, i32 6
  %78 = load i32* %arrayidx4.6.2, align 4
  %arrayidx5.6.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.6.2 = getelementptr inbounds [10 x i32]* %arrayidx5.6.2, i32 0, i32 6
  %79 = load i32* %arrayidx6.6.2, align 4
  %add.6.2 = add nsw i32 %78, %79
  %arrayidx7.6.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.6.2 = getelementptr inbounds [10 x i32]* %arrayidx7.6.2, i32 0, i32 6
  store i32 %add.6.2, i32* %arrayidx8.6.2, align 4
  %arrayidx9.6.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.6.2 = getelementptr inbounds [10 x i32]* %arrayidx9.6.2, i32 0, i32 6
  %80 = load i32* %arrayidx10.6.2, align 4
  %add11.6.2 = add nsw i32 %add11.5.2, %80
  br label %for.inc.6.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  %arrayidx.7.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.7.2 = getelementptr inbounds [10 x i32]* %arrayidx.7.2, i32 0, i32 7
  %81 = load i32* %arrayidx4.7.2, align 4
  %arrayidx5.7.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.7.2 = getelementptr inbounds [10 x i32]* %arrayidx5.7.2, i32 0, i32 7
  %82 = load i32* %arrayidx6.7.2, align 4
  %add.7.2 = add nsw i32 %81, %82
  %arrayidx7.7.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.7.2 = getelementptr inbounds [10 x i32]* %arrayidx7.7.2, i32 0, i32 7
  store i32 %add.7.2, i32* %arrayidx8.7.2, align 4
  %arrayidx9.7.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.7.2 = getelementptr inbounds [10 x i32]* %arrayidx9.7.2, i32 0, i32 7
  %83 = load i32* %arrayidx10.7.2, align 4
  %add11.7.2 = add nsw i32 %add11.6.2, %83
  br label %for.inc.7.2

for.inc.7.2:                                      ; preds = %for.inc.6.2
  %arrayidx.8.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.8.2 = getelementptr inbounds [10 x i32]* %arrayidx.8.2, i32 0, i32 8
  %84 = load i32* %arrayidx4.8.2, align 4
  %arrayidx5.8.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.8.2 = getelementptr inbounds [10 x i32]* %arrayidx5.8.2, i32 0, i32 8
  %85 = load i32* %arrayidx6.8.2, align 4
  %add.8.2 = add nsw i32 %84, %85
  %arrayidx7.8.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.8.2 = getelementptr inbounds [10 x i32]* %arrayidx7.8.2, i32 0, i32 8
  store i32 %add.8.2, i32* %arrayidx8.8.2, align 4
  %arrayidx9.8.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.8.2 = getelementptr inbounds [10 x i32]* %arrayidx9.8.2, i32 0, i32 8
  %86 = load i32* %arrayidx10.8.2, align 4
  %add11.8.2 = add nsw i32 %add11.7.2, %86
  br label %for.inc.8.2

for.inc.8.2:                                      ; preds = %for.inc.7.2
  %arrayidx.9.2 = getelementptr inbounds [10 x i32]* %a, i32 2
  %arrayidx4.9.2 = getelementptr inbounds [10 x i32]* %arrayidx.9.2, i32 0, i32 9
  %87 = load i32* %arrayidx4.9.2, align 4
  %arrayidx5.9.2 = getelementptr inbounds [10 x i32]* %b, i32 2
  %arrayidx6.9.2 = getelementptr inbounds [10 x i32]* %arrayidx5.9.2, i32 0, i32 9
  %88 = load i32* %arrayidx6.9.2, align 4
  %add.9.2 = add nsw i32 %87, %88
  %arrayidx7.9.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx8.9.2 = getelementptr inbounds [10 x i32]* %arrayidx7.9.2, i32 0, i32 9
  store i32 %add.9.2, i32* %arrayidx8.9.2, align 4
  %arrayidx9.9.2 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 2
  %arrayidx10.9.2 = getelementptr inbounds [10 x i32]* %arrayidx9.9.2, i32 0, i32 9
  %89 = load i32* %arrayidx10.9.2, align 4
  %add11.9.2 = add nsw i32 %add11.8.2, %89
  br label %for.inc.9.2

for.inc.9.2:                                      ; preds = %for.inc.8.2
  br label %for.inc12.2

for.inc12.2:                                      ; preds = %for.inc.9.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc12.2
  %arrayidx.327 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.328 = getelementptr inbounds [10 x i32]* %arrayidx.327, i32 0, i32 0
  %90 = load i32* %arrayidx4.328, align 4
  %arrayidx5.329 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.330 = getelementptr inbounds [10 x i32]* %arrayidx5.329, i32 0, i32 0
  %91 = load i32* %arrayidx6.330, align 4
  %add.331 = add nsw i32 %90, %91
  %arrayidx7.332 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.333 = getelementptr inbounds [10 x i32]* %arrayidx7.332, i32 0, i32 0
  store i32 %add.331, i32* %arrayidx8.333, align 4
  %arrayidx9.334 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.335 = getelementptr inbounds [10 x i32]* %arrayidx9.334, i32 0, i32 0
  %92 = load i32* %arrayidx10.335, align 4
  %add11.336 = add nsw i32 %add11.9.2, %92
  br label %for.inc.337

for.inc.337:                                      ; preds = %for.body3.3
  %arrayidx.1.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.1.3 = getelementptr inbounds [10 x i32]* %arrayidx.1.3, i32 0, i32 1
  %93 = load i32* %arrayidx4.1.3, align 4
  %arrayidx5.1.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.1.3 = getelementptr inbounds [10 x i32]* %arrayidx5.1.3, i32 0, i32 1
  %94 = load i32* %arrayidx6.1.3, align 4
  %add.1.3 = add nsw i32 %93, %94
  %arrayidx7.1.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.1.3 = getelementptr inbounds [10 x i32]* %arrayidx7.1.3, i32 0, i32 1
  store i32 %add.1.3, i32* %arrayidx8.1.3, align 4
  %arrayidx9.1.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.1.3 = getelementptr inbounds [10 x i32]* %arrayidx9.1.3, i32 0, i32 1
  %95 = load i32* %arrayidx10.1.3, align 4
  %add11.1.3 = add nsw i32 %add11.336, %95
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.337
  %arrayidx.2.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.2.3 = getelementptr inbounds [10 x i32]* %arrayidx.2.3, i32 0, i32 2
  %96 = load i32* %arrayidx4.2.3, align 4
  %arrayidx5.2.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.2.3 = getelementptr inbounds [10 x i32]* %arrayidx5.2.3, i32 0, i32 2
  %97 = load i32* %arrayidx6.2.3, align 4
  %add.2.3 = add nsw i32 %96, %97
  %arrayidx7.2.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.2.3 = getelementptr inbounds [10 x i32]* %arrayidx7.2.3, i32 0, i32 2
  store i32 %add.2.3, i32* %arrayidx8.2.3, align 4
  %arrayidx9.2.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.2.3 = getelementptr inbounds [10 x i32]* %arrayidx9.2.3, i32 0, i32 2
  %98 = load i32* %arrayidx10.2.3, align 4
  %add11.2.3 = add nsw i32 %add11.1.3, %98
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx.3.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.3.3 = getelementptr inbounds [10 x i32]* %arrayidx.3.3, i32 0, i32 3
  %99 = load i32* %arrayidx4.3.3, align 4
  %arrayidx5.3.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.3.3 = getelementptr inbounds [10 x i32]* %arrayidx5.3.3, i32 0, i32 3
  %100 = load i32* %arrayidx6.3.3, align 4
  %add.3.3 = add nsw i32 %99, %100
  %arrayidx7.3.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.3.3 = getelementptr inbounds [10 x i32]* %arrayidx7.3.3, i32 0, i32 3
  store i32 %add.3.3, i32* %arrayidx8.3.3, align 4
  %arrayidx9.3.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.3.3 = getelementptr inbounds [10 x i32]* %arrayidx9.3.3, i32 0, i32 3
  %101 = load i32* %arrayidx10.3.3, align 4
  %add11.3.3 = add nsw i32 %add11.2.3, %101
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx.4.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.4.3 = getelementptr inbounds [10 x i32]* %arrayidx.4.3, i32 0, i32 4
  %102 = load i32* %arrayidx4.4.3, align 4
  %arrayidx5.4.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.4.3 = getelementptr inbounds [10 x i32]* %arrayidx5.4.3, i32 0, i32 4
  %103 = load i32* %arrayidx6.4.3, align 4
  %add.4.3 = add nsw i32 %102, %103
  %arrayidx7.4.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.4.3 = getelementptr inbounds [10 x i32]* %arrayidx7.4.3, i32 0, i32 4
  store i32 %add.4.3, i32* %arrayidx8.4.3, align 4
  %arrayidx9.4.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.4.3 = getelementptr inbounds [10 x i32]* %arrayidx9.4.3, i32 0, i32 4
  %104 = load i32* %arrayidx10.4.3, align 4
  %add11.4.3 = add nsw i32 %add11.3.3, %104
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx.5.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.5.3 = getelementptr inbounds [10 x i32]* %arrayidx.5.3, i32 0, i32 5
  %105 = load i32* %arrayidx4.5.3, align 4
  %arrayidx5.5.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.5.3 = getelementptr inbounds [10 x i32]* %arrayidx5.5.3, i32 0, i32 5
  %106 = load i32* %arrayidx6.5.3, align 4
  %add.5.3 = add nsw i32 %105, %106
  %arrayidx7.5.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.5.3 = getelementptr inbounds [10 x i32]* %arrayidx7.5.3, i32 0, i32 5
  store i32 %add.5.3, i32* %arrayidx8.5.3, align 4
  %arrayidx9.5.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.5.3 = getelementptr inbounds [10 x i32]* %arrayidx9.5.3, i32 0, i32 5
  %107 = load i32* %arrayidx10.5.3, align 4
  %add11.5.3 = add nsw i32 %add11.4.3, %107
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %arrayidx.6.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.6.3 = getelementptr inbounds [10 x i32]* %arrayidx.6.3, i32 0, i32 6
  %108 = load i32* %arrayidx4.6.3, align 4
  %arrayidx5.6.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.6.3 = getelementptr inbounds [10 x i32]* %arrayidx5.6.3, i32 0, i32 6
  %109 = load i32* %arrayidx6.6.3, align 4
  %add.6.3 = add nsw i32 %108, %109
  %arrayidx7.6.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.6.3 = getelementptr inbounds [10 x i32]* %arrayidx7.6.3, i32 0, i32 6
  store i32 %add.6.3, i32* %arrayidx8.6.3, align 4
  %arrayidx9.6.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.6.3 = getelementptr inbounds [10 x i32]* %arrayidx9.6.3, i32 0, i32 6
  %110 = load i32* %arrayidx10.6.3, align 4
  %add11.6.3 = add nsw i32 %add11.5.3, %110
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3
  %arrayidx.7.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.7.3 = getelementptr inbounds [10 x i32]* %arrayidx.7.3, i32 0, i32 7
  %111 = load i32* %arrayidx4.7.3, align 4
  %arrayidx5.7.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.7.3 = getelementptr inbounds [10 x i32]* %arrayidx5.7.3, i32 0, i32 7
  %112 = load i32* %arrayidx6.7.3, align 4
  %add.7.3 = add nsw i32 %111, %112
  %arrayidx7.7.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.7.3 = getelementptr inbounds [10 x i32]* %arrayidx7.7.3, i32 0, i32 7
  store i32 %add.7.3, i32* %arrayidx8.7.3, align 4
  %arrayidx9.7.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.7.3 = getelementptr inbounds [10 x i32]* %arrayidx9.7.3, i32 0, i32 7
  %113 = load i32* %arrayidx10.7.3, align 4
  %add11.7.3 = add nsw i32 %add11.6.3, %113
  br label %for.inc.7.3

for.inc.7.3:                                      ; preds = %for.inc.6.3
  %arrayidx.8.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.8.3 = getelementptr inbounds [10 x i32]* %arrayidx.8.3, i32 0, i32 8
  %114 = load i32* %arrayidx4.8.3, align 4
  %arrayidx5.8.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.8.3 = getelementptr inbounds [10 x i32]* %arrayidx5.8.3, i32 0, i32 8
  %115 = load i32* %arrayidx6.8.3, align 4
  %add.8.3 = add nsw i32 %114, %115
  %arrayidx7.8.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.8.3 = getelementptr inbounds [10 x i32]* %arrayidx7.8.3, i32 0, i32 8
  store i32 %add.8.3, i32* %arrayidx8.8.3, align 4
  %arrayidx9.8.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.8.3 = getelementptr inbounds [10 x i32]* %arrayidx9.8.3, i32 0, i32 8
  %116 = load i32* %arrayidx10.8.3, align 4
  %add11.8.3 = add nsw i32 %add11.7.3, %116
  br label %for.inc.8.3

for.inc.8.3:                                      ; preds = %for.inc.7.3
  %arrayidx.9.3 = getelementptr inbounds [10 x i32]* %a, i32 3
  %arrayidx4.9.3 = getelementptr inbounds [10 x i32]* %arrayidx.9.3, i32 0, i32 9
  %117 = load i32* %arrayidx4.9.3, align 4
  %arrayidx5.9.3 = getelementptr inbounds [10 x i32]* %b, i32 3
  %arrayidx6.9.3 = getelementptr inbounds [10 x i32]* %arrayidx5.9.3, i32 0, i32 9
  %118 = load i32* %arrayidx6.9.3, align 4
  %add.9.3 = add nsw i32 %117, %118
  %arrayidx7.9.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx8.9.3 = getelementptr inbounds [10 x i32]* %arrayidx7.9.3, i32 0, i32 9
  store i32 %add.9.3, i32* %arrayidx8.9.3, align 4
  %arrayidx9.9.3 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 3
  %arrayidx10.9.3 = getelementptr inbounds [10 x i32]* %arrayidx9.9.3, i32 0, i32 9
  %119 = load i32* %arrayidx10.9.3, align 4
  %add11.9.3 = add nsw i32 %add11.8.3, %119
  br label %for.inc.9.3

for.inc.9.3:                                      ; preds = %for.inc.8.3
  br label %for.inc12.3

for.inc12.3:                                      ; preds = %for.inc.9.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc12.3
  %arrayidx.438 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.439 = getelementptr inbounds [10 x i32]* %arrayidx.438, i32 0, i32 0
  %120 = load i32* %arrayidx4.439, align 4
  %arrayidx5.440 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.441 = getelementptr inbounds [10 x i32]* %arrayidx5.440, i32 0, i32 0
  %121 = load i32* %arrayidx6.441, align 4
  %add.442 = add nsw i32 %120, %121
  %arrayidx7.443 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.444 = getelementptr inbounds [10 x i32]* %arrayidx7.443, i32 0, i32 0
  store i32 %add.442, i32* %arrayidx8.444, align 4
  %arrayidx9.445 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.446 = getelementptr inbounds [10 x i32]* %arrayidx9.445, i32 0, i32 0
  %122 = load i32* %arrayidx10.446, align 4
  %add11.447 = add nsw i32 %add11.9.3, %122
  br label %for.inc.448

for.inc.448:                                      ; preds = %for.body3.4
  %arrayidx.1.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.1.4 = getelementptr inbounds [10 x i32]* %arrayidx.1.4, i32 0, i32 1
  %123 = load i32* %arrayidx4.1.4, align 4
  %arrayidx5.1.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.1.4 = getelementptr inbounds [10 x i32]* %arrayidx5.1.4, i32 0, i32 1
  %124 = load i32* %arrayidx6.1.4, align 4
  %add.1.4 = add nsw i32 %123, %124
  %arrayidx7.1.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.1.4 = getelementptr inbounds [10 x i32]* %arrayidx7.1.4, i32 0, i32 1
  store i32 %add.1.4, i32* %arrayidx8.1.4, align 4
  %arrayidx9.1.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.1.4 = getelementptr inbounds [10 x i32]* %arrayidx9.1.4, i32 0, i32 1
  %125 = load i32* %arrayidx10.1.4, align 4
  %add11.1.4 = add nsw i32 %add11.447, %125
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.448
  %arrayidx.2.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.2.4 = getelementptr inbounds [10 x i32]* %arrayidx.2.4, i32 0, i32 2
  %126 = load i32* %arrayidx4.2.4, align 4
  %arrayidx5.2.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.2.4 = getelementptr inbounds [10 x i32]* %arrayidx5.2.4, i32 0, i32 2
  %127 = load i32* %arrayidx6.2.4, align 4
  %add.2.4 = add nsw i32 %126, %127
  %arrayidx7.2.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.2.4 = getelementptr inbounds [10 x i32]* %arrayidx7.2.4, i32 0, i32 2
  store i32 %add.2.4, i32* %arrayidx8.2.4, align 4
  %arrayidx9.2.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.2.4 = getelementptr inbounds [10 x i32]* %arrayidx9.2.4, i32 0, i32 2
  %128 = load i32* %arrayidx10.2.4, align 4
  %add11.2.4 = add nsw i32 %add11.1.4, %128
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx.3.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.3.4 = getelementptr inbounds [10 x i32]* %arrayidx.3.4, i32 0, i32 3
  %129 = load i32* %arrayidx4.3.4, align 4
  %arrayidx5.3.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.3.4 = getelementptr inbounds [10 x i32]* %arrayidx5.3.4, i32 0, i32 3
  %130 = load i32* %arrayidx6.3.4, align 4
  %add.3.4 = add nsw i32 %129, %130
  %arrayidx7.3.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.3.4 = getelementptr inbounds [10 x i32]* %arrayidx7.3.4, i32 0, i32 3
  store i32 %add.3.4, i32* %arrayidx8.3.4, align 4
  %arrayidx9.3.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.3.4 = getelementptr inbounds [10 x i32]* %arrayidx9.3.4, i32 0, i32 3
  %131 = load i32* %arrayidx10.3.4, align 4
  %add11.3.4 = add nsw i32 %add11.2.4, %131
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx.4.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.4.4 = getelementptr inbounds [10 x i32]* %arrayidx.4.4, i32 0, i32 4
  %132 = load i32* %arrayidx4.4.4, align 4
  %arrayidx5.4.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.4.4 = getelementptr inbounds [10 x i32]* %arrayidx5.4.4, i32 0, i32 4
  %133 = load i32* %arrayidx6.4.4, align 4
  %add.4.4 = add nsw i32 %132, %133
  %arrayidx7.4.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.4.4 = getelementptr inbounds [10 x i32]* %arrayidx7.4.4, i32 0, i32 4
  store i32 %add.4.4, i32* %arrayidx8.4.4, align 4
  %arrayidx9.4.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.4.4 = getelementptr inbounds [10 x i32]* %arrayidx9.4.4, i32 0, i32 4
  %134 = load i32* %arrayidx10.4.4, align 4
  %add11.4.4 = add nsw i32 %add11.3.4, %134
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx.5.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.5.4 = getelementptr inbounds [10 x i32]* %arrayidx.5.4, i32 0, i32 5
  %135 = load i32* %arrayidx4.5.4, align 4
  %arrayidx5.5.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.5.4 = getelementptr inbounds [10 x i32]* %arrayidx5.5.4, i32 0, i32 5
  %136 = load i32* %arrayidx6.5.4, align 4
  %add.5.4 = add nsw i32 %135, %136
  %arrayidx7.5.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.5.4 = getelementptr inbounds [10 x i32]* %arrayidx7.5.4, i32 0, i32 5
  store i32 %add.5.4, i32* %arrayidx8.5.4, align 4
  %arrayidx9.5.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.5.4 = getelementptr inbounds [10 x i32]* %arrayidx9.5.4, i32 0, i32 5
  %137 = load i32* %arrayidx10.5.4, align 4
  %add11.5.4 = add nsw i32 %add11.4.4, %137
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  %arrayidx.6.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.6.4 = getelementptr inbounds [10 x i32]* %arrayidx.6.4, i32 0, i32 6
  %138 = load i32* %arrayidx4.6.4, align 4
  %arrayidx5.6.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.6.4 = getelementptr inbounds [10 x i32]* %arrayidx5.6.4, i32 0, i32 6
  %139 = load i32* %arrayidx6.6.4, align 4
  %add.6.4 = add nsw i32 %138, %139
  %arrayidx7.6.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.6.4 = getelementptr inbounds [10 x i32]* %arrayidx7.6.4, i32 0, i32 6
  store i32 %add.6.4, i32* %arrayidx8.6.4, align 4
  %arrayidx9.6.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.6.4 = getelementptr inbounds [10 x i32]* %arrayidx9.6.4, i32 0, i32 6
  %140 = load i32* %arrayidx10.6.4, align 4
  %add11.6.4 = add nsw i32 %add11.5.4, %140
  br label %for.inc.6.4

for.inc.6.4:                                      ; preds = %for.inc.5.4
  %arrayidx.7.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.7.4 = getelementptr inbounds [10 x i32]* %arrayidx.7.4, i32 0, i32 7
  %141 = load i32* %arrayidx4.7.4, align 4
  %arrayidx5.7.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.7.4 = getelementptr inbounds [10 x i32]* %arrayidx5.7.4, i32 0, i32 7
  %142 = load i32* %arrayidx6.7.4, align 4
  %add.7.4 = add nsw i32 %141, %142
  %arrayidx7.7.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.7.4 = getelementptr inbounds [10 x i32]* %arrayidx7.7.4, i32 0, i32 7
  store i32 %add.7.4, i32* %arrayidx8.7.4, align 4
  %arrayidx9.7.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.7.4 = getelementptr inbounds [10 x i32]* %arrayidx9.7.4, i32 0, i32 7
  %143 = load i32* %arrayidx10.7.4, align 4
  %add11.7.4 = add nsw i32 %add11.6.4, %143
  br label %for.inc.7.4

for.inc.7.4:                                      ; preds = %for.inc.6.4
  %arrayidx.8.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.8.4 = getelementptr inbounds [10 x i32]* %arrayidx.8.4, i32 0, i32 8
  %144 = load i32* %arrayidx4.8.4, align 4
  %arrayidx5.8.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.8.4 = getelementptr inbounds [10 x i32]* %arrayidx5.8.4, i32 0, i32 8
  %145 = load i32* %arrayidx6.8.4, align 4
  %add.8.4 = add nsw i32 %144, %145
  %arrayidx7.8.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.8.4 = getelementptr inbounds [10 x i32]* %arrayidx7.8.4, i32 0, i32 8
  store i32 %add.8.4, i32* %arrayidx8.8.4, align 4
  %arrayidx9.8.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.8.4 = getelementptr inbounds [10 x i32]* %arrayidx9.8.4, i32 0, i32 8
  %146 = load i32* %arrayidx10.8.4, align 4
  %add11.8.4 = add nsw i32 %add11.7.4, %146
  br label %for.inc.8.4

for.inc.8.4:                                      ; preds = %for.inc.7.4
  %arrayidx.9.4 = getelementptr inbounds [10 x i32]* %a, i32 4
  %arrayidx4.9.4 = getelementptr inbounds [10 x i32]* %arrayidx.9.4, i32 0, i32 9
  %147 = load i32* %arrayidx4.9.4, align 4
  %arrayidx5.9.4 = getelementptr inbounds [10 x i32]* %b, i32 4
  %arrayidx6.9.4 = getelementptr inbounds [10 x i32]* %arrayidx5.9.4, i32 0, i32 9
  %148 = load i32* %arrayidx6.9.4, align 4
  %add.9.4 = add nsw i32 %147, %148
  %arrayidx7.9.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx8.9.4 = getelementptr inbounds [10 x i32]* %arrayidx7.9.4, i32 0, i32 9
  store i32 %add.9.4, i32* %arrayidx8.9.4, align 4
  %arrayidx9.9.4 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 4
  %arrayidx10.9.4 = getelementptr inbounds [10 x i32]* %arrayidx9.9.4, i32 0, i32 9
  %149 = load i32* %arrayidx10.9.4, align 4
  %add11.9.4 = add nsw i32 %add11.8.4, %149
  br label %for.inc.9.4

for.inc.9.4:                                      ; preds = %for.inc.8.4
  br label %for.inc12.4

for.inc12.4:                                      ; preds = %for.inc.9.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc12.4
  %arrayidx.549 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.550 = getelementptr inbounds [10 x i32]* %arrayidx.549, i32 0, i32 0
  %150 = load i32* %arrayidx4.550, align 4
  %arrayidx5.551 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.552 = getelementptr inbounds [10 x i32]* %arrayidx5.551, i32 0, i32 0
  %151 = load i32* %arrayidx6.552, align 4
  %add.553 = add nsw i32 %150, %151
  %arrayidx7.554 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.555 = getelementptr inbounds [10 x i32]* %arrayidx7.554, i32 0, i32 0
  store i32 %add.553, i32* %arrayidx8.555, align 4
  %arrayidx9.556 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.557 = getelementptr inbounds [10 x i32]* %arrayidx9.556, i32 0, i32 0
  %152 = load i32* %arrayidx10.557, align 4
  %add11.558 = add nsw i32 %add11.9.4, %152
  br label %for.inc.559

for.inc.559:                                      ; preds = %for.body3.5
  %arrayidx.1.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.1.5 = getelementptr inbounds [10 x i32]* %arrayidx.1.5, i32 0, i32 1
  %153 = load i32* %arrayidx4.1.5, align 4
  %arrayidx5.1.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.1.5 = getelementptr inbounds [10 x i32]* %arrayidx5.1.5, i32 0, i32 1
  %154 = load i32* %arrayidx6.1.5, align 4
  %add.1.5 = add nsw i32 %153, %154
  %arrayidx7.1.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.1.5 = getelementptr inbounds [10 x i32]* %arrayidx7.1.5, i32 0, i32 1
  store i32 %add.1.5, i32* %arrayidx8.1.5, align 4
  %arrayidx9.1.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.1.5 = getelementptr inbounds [10 x i32]* %arrayidx9.1.5, i32 0, i32 1
  %155 = load i32* %arrayidx10.1.5, align 4
  %add11.1.5 = add nsw i32 %add11.558, %155
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.559
  %arrayidx.2.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.2.5 = getelementptr inbounds [10 x i32]* %arrayidx.2.5, i32 0, i32 2
  %156 = load i32* %arrayidx4.2.5, align 4
  %arrayidx5.2.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.2.5 = getelementptr inbounds [10 x i32]* %arrayidx5.2.5, i32 0, i32 2
  %157 = load i32* %arrayidx6.2.5, align 4
  %add.2.5 = add nsw i32 %156, %157
  %arrayidx7.2.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.2.5 = getelementptr inbounds [10 x i32]* %arrayidx7.2.5, i32 0, i32 2
  store i32 %add.2.5, i32* %arrayidx8.2.5, align 4
  %arrayidx9.2.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.2.5 = getelementptr inbounds [10 x i32]* %arrayidx9.2.5, i32 0, i32 2
  %158 = load i32* %arrayidx10.2.5, align 4
  %add11.2.5 = add nsw i32 %add11.1.5, %158
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx.3.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.3.5 = getelementptr inbounds [10 x i32]* %arrayidx.3.5, i32 0, i32 3
  %159 = load i32* %arrayidx4.3.5, align 4
  %arrayidx5.3.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.3.5 = getelementptr inbounds [10 x i32]* %arrayidx5.3.5, i32 0, i32 3
  %160 = load i32* %arrayidx6.3.5, align 4
  %add.3.5 = add nsw i32 %159, %160
  %arrayidx7.3.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.3.5 = getelementptr inbounds [10 x i32]* %arrayidx7.3.5, i32 0, i32 3
  store i32 %add.3.5, i32* %arrayidx8.3.5, align 4
  %arrayidx9.3.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.3.5 = getelementptr inbounds [10 x i32]* %arrayidx9.3.5, i32 0, i32 3
  %161 = load i32* %arrayidx10.3.5, align 4
  %add11.3.5 = add nsw i32 %add11.2.5, %161
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx.4.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.4.5 = getelementptr inbounds [10 x i32]* %arrayidx.4.5, i32 0, i32 4
  %162 = load i32* %arrayidx4.4.5, align 4
  %arrayidx5.4.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.4.5 = getelementptr inbounds [10 x i32]* %arrayidx5.4.5, i32 0, i32 4
  %163 = load i32* %arrayidx6.4.5, align 4
  %add.4.5 = add nsw i32 %162, %163
  %arrayidx7.4.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.4.5 = getelementptr inbounds [10 x i32]* %arrayidx7.4.5, i32 0, i32 4
  store i32 %add.4.5, i32* %arrayidx8.4.5, align 4
  %arrayidx9.4.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.4.5 = getelementptr inbounds [10 x i32]* %arrayidx9.4.5, i32 0, i32 4
  %164 = load i32* %arrayidx10.4.5, align 4
  %add11.4.5 = add nsw i32 %add11.3.5, %164
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx.5.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.5.5 = getelementptr inbounds [10 x i32]* %arrayidx.5.5, i32 0, i32 5
  %165 = load i32* %arrayidx4.5.5, align 4
  %arrayidx5.5.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.5.5 = getelementptr inbounds [10 x i32]* %arrayidx5.5.5, i32 0, i32 5
  %166 = load i32* %arrayidx6.5.5, align 4
  %add.5.5 = add nsw i32 %165, %166
  %arrayidx7.5.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.5.5 = getelementptr inbounds [10 x i32]* %arrayidx7.5.5, i32 0, i32 5
  store i32 %add.5.5, i32* %arrayidx8.5.5, align 4
  %arrayidx9.5.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.5.5 = getelementptr inbounds [10 x i32]* %arrayidx9.5.5, i32 0, i32 5
  %167 = load i32* %arrayidx10.5.5, align 4
  %add11.5.5 = add nsw i32 %add11.4.5, %167
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  %arrayidx.6.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.6.5 = getelementptr inbounds [10 x i32]* %arrayidx.6.5, i32 0, i32 6
  %168 = load i32* %arrayidx4.6.5, align 4
  %arrayidx5.6.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.6.5 = getelementptr inbounds [10 x i32]* %arrayidx5.6.5, i32 0, i32 6
  %169 = load i32* %arrayidx6.6.5, align 4
  %add.6.5 = add nsw i32 %168, %169
  %arrayidx7.6.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.6.5 = getelementptr inbounds [10 x i32]* %arrayidx7.6.5, i32 0, i32 6
  store i32 %add.6.5, i32* %arrayidx8.6.5, align 4
  %arrayidx9.6.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.6.5 = getelementptr inbounds [10 x i32]* %arrayidx9.6.5, i32 0, i32 6
  %170 = load i32* %arrayidx10.6.5, align 4
  %add11.6.5 = add nsw i32 %add11.5.5, %170
  br label %for.inc.6.5

for.inc.6.5:                                      ; preds = %for.inc.5.5
  %arrayidx.7.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.7.5 = getelementptr inbounds [10 x i32]* %arrayidx.7.5, i32 0, i32 7
  %171 = load i32* %arrayidx4.7.5, align 4
  %arrayidx5.7.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.7.5 = getelementptr inbounds [10 x i32]* %arrayidx5.7.5, i32 0, i32 7
  %172 = load i32* %arrayidx6.7.5, align 4
  %add.7.5 = add nsw i32 %171, %172
  %arrayidx7.7.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.7.5 = getelementptr inbounds [10 x i32]* %arrayidx7.7.5, i32 0, i32 7
  store i32 %add.7.5, i32* %arrayidx8.7.5, align 4
  %arrayidx9.7.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.7.5 = getelementptr inbounds [10 x i32]* %arrayidx9.7.5, i32 0, i32 7
  %173 = load i32* %arrayidx10.7.5, align 4
  %add11.7.5 = add nsw i32 %add11.6.5, %173
  br label %for.inc.7.5

for.inc.7.5:                                      ; preds = %for.inc.6.5
  %arrayidx.8.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.8.5 = getelementptr inbounds [10 x i32]* %arrayidx.8.5, i32 0, i32 8
  %174 = load i32* %arrayidx4.8.5, align 4
  %arrayidx5.8.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.8.5 = getelementptr inbounds [10 x i32]* %arrayidx5.8.5, i32 0, i32 8
  %175 = load i32* %arrayidx6.8.5, align 4
  %add.8.5 = add nsw i32 %174, %175
  %arrayidx7.8.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.8.5 = getelementptr inbounds [10 x i32]* %arrayidx7.8.5, i32 0, i32 8
  store i32 %add.8.5, i32* %arrayidx8.8.5, align 4
  %arrayidx9.8.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.8.5 = getelementptr inbounds [10 x i32]* %arrayidx9.8.5, i32 0, i32 8
  %176 = load i32* %arrayidx10.8.5, align 4
  %add11.8.5 = add nsw i32 %add11.7.5, %176
  br label %for.inc.8.5

for.inc.8.5:                                      ; preds = %for.inc.7.5
  %arrayidx.9.5 = getelementptr inbounds [10 x i32]* %a, i32 5
  %arrayidx4.9.5 = getelementptr inbounds [10 x i32]* %arrayidx.9.5, i32 0, i32 9
  %177 = load i32* %arrayidx4.9.5, align 4
  %arrayidx5.9.5 = getelementptr inbounds [10 x i32]* %b, i32 5
  %arrayidx6.9.5 = getelementptr inbounds [10 x i32]* %arrayidx5.9.5, i32 0, i32 9
  %178 = load i32* %arrayidx6.9.5, align 4
  %add.9.5 = add nsw i32 %177, %178
  %arrayidx7.9.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx8.9.5 = getelementptr inbounds [10 x i32]* %arrayidx7.9.5, i32 0, i32 9
  store i32 %add.9.5, i32* %arrayidx8.9.5, align 4
  %arrayidx9.9.5 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 5
  %arrayidx10.9.5 = getelementptr inbounds [10 x i32]* %arrayidx9.9.5, i32 0, i32 9
  %179 = load i32* %arrayidx10.9.5, align 4
  %add11.9.5 = add nsw i32 %add11.8.5, %179
  br label %for.inc.9.5

for.inc.9.5:                                      ; preds = %for.inc.8.5
  br label %for.inc12.5

for.inc12.5:                                      ; preds = %for.inc.9.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc12.5
  %arrayidx.660 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.661 = getelementptr inbounds [10 x i32]* %arrayidx.660, i32 0, i32 0
  %180 = load i32* %arrayidx4.661, align 4
  %arrayidx5.662 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.663 = getelementptr inbounds [10 x i32]* %arrayidx5.662, i32 0, i32 0
  %181 = load i32* %arrayidx6.663, align 4
  %add.664 = add nsw i32 %180, %181
  %arrayidx7.665 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.666 = getelementptr inbounds [10 x i32]* %arrayidx7.665, i32 0, i32 0
  store i32 %add.664, i32* %arrayidx8.666, align 4
  %arrayidx9.667 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.668 = getelementptr inbounds [10 x i32]* %arrayidx9.667, i32 0, i32 0
  %182 = load i32* %arrayidx10.668, align 4
  %add11.669 = add nsw i32 %add11.9.5, %182
  br label %for.inc.670

for.inc.670:                                      ; preds = %for.body3.6
  %arrayidx.1.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.1.6 = getelementptr inbounds [10 x i32]* %arrayidx.1.6, i32 0, i32 1
  %183 = load i32* %arrayidx4.1.6, align 4
  %arrayidx5.1.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.1.6 = getelementptr inbounds [10 x i32]* %arrayidx5.1.6, i32 0, i32 1
  %184 = load i32* %arrayidx6.1.6, align 4
  %add.1.6 = add nsw i32 %183, %184
  %arrayidx7.1.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.1.6 = getelementptr inbounds [10 x i32]* %arrayidx7.1.6, i32 0, i32 1
  store i32 %add.1.6, i32* %arrayidx8.1.6, align 4
  %arrayidx9.1.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.1.6 = getelementptr inbounds [10 x i32]* %arrayidx9.1.6, i32 0, i32 1
  %185 = load i32* %arrayidx10.1.6, align 4
  %add11.1.6 = add nsw i32 %add11.669, %185
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %for.inc.670
  %arrayidx.2.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.2.6 = getelementptr inbounds [10 x i32]* %arrayidx.2.6, i32 0, i32 2
  %186 = load i32* %arrayidx4.2.6, align 4
  %arrayidx5.2.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.2.6 = getelementptr inbounds [10 x i32]* %arrayidx5.2.6, i32 0, i32 2
  %187 = load i32* %arrayidx6.2.6, align 4
  %add.2.6 = add nsw i32 %186, %187
  %arrayidx7.2.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.2.6 = getelementptr inbounds [10 x i32]* %arrayidx7.2.6, i32 0, i32 2
  store i32 %add.2.6, i32* %arrayidx8.2.6, align 4
  %arrayidx9.2.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.2.6 = getelementptr inbounds [10 x i32]* %arrayidx9.2.6, i32 0, i32 2
  %188 = load i32* %arrayidx10.2.6, align 4
  %add11.2.6 = add nsw i32 %add11.1.6, %188
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %for.inc.1.6
  %arrayidx.3.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.3.6 = getelementptr inbounds [10 x i32]* %arrayidx.3.6, i32 0, i32 3
  %189 = load i32* %arrayidx4.3.6, align 4
  %arrayidx5.3.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.3.6 = getelementptr inbounds [10 x i32]* %arrayidx5.3.6, i32 0, i32 3
  %190 = load i32* %arrayidx6.3.6, align 4
  %add.3.6 = add nsw i32 %189, %190
  %arrayidx7.3.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.3.6 = getelementptr inbounds [10 x i32]* %arrayidx7.3.6, i32 0, i32 3
  store i32 %add.3.6, i32* %arrayidx8.3.6, align 4
  %arrayidx9.3.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.3.6 = getelementptr inbounds [10 x i32]* %arrayidx9.3.6, i32 0, i32 3
  %191 = load i32* %arrayidx10.3.6, align 4
  %add11.3.6 = add nsw i32 %add11.2.6, %191
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %for.inc.2.6
  %arrayidx.4.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.4.6 = getelementptr inbounds [10 x i32]* %arrayidx.4.6, i32 0, i32 4
  %192 = load i32* %arrayidx4.4.6, align 4
  %arrayidx5.4.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.4.6 = getelementptr inbounds [10 x i32]* %arrayidx5.4.6, i32 0, i32 4
  %193 = load i32* %arrayidx6.4.6, align 4
  %add.4.6 = add nsw i32 %192, %193
  %arrayidx7.4.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.4.6 = getelementptr inbounds [10 x i32]* %arrayidx7.4.6, i32 0, i32 4
  store i32 %add.4.6, i32* %arrayidx8.4.6, align 4
  %arrayidx9.4.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.4.6 = getelementptr inbounds [10 x i32]* %arrayidx9.4.6, i32 0, i32 4
  %194 = load i32* %arrayidx10.4.6, align 4
  %add11.4.6 = add nsw i32 %add11.3.6, %194
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %for.inc.3.6
  %arrayidx.5.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.5.6 = getelementptr inbounds [10 x i32]* %arrayidx.5.6, i32 0, i32 5
  %195 = load i32* %arrayidx4.5.6, align 4
  %arrayidx5.5.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.5.6 = getelementptr inbounds [10 x i32]* %arrayidx5.5.6, i32 0, i32 5
  %196 = load i32* %arrayidx6.5.6, align 4
  %add.5.6 = add nsw i32 %195, %196
  %arrayidx7.5.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.5.6 = getelementptr inbounds [10 x i32]* %arrayidx7.5.6, i32 0, i32 5
  store i32 %add.5.6, i32* %arrayidx8.5.6, align 4
  %arrayidx9.5.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.5.6 = getelementptr inbounds [10 x i32]* %arrayidx9.5.6, i32 0, i32 5
  %197 = load i32* %arrayidx10.5.6, align 4
  %add11.5.6 = add nsw i32 %add11.4.6, %197
  br label %for.inc.5.6

for.inc.5.6:                                      ; preds = %for.inc.4.6
  %arrayidx.6.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.6.6 = getelementptr inbounds [10 x i32]* %arrayidx.6.6, i32 0, i32 6
  %198 = load i32* %arrayidx4.6.6, align 4
  %arrayidx5.6.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.6.6 = getelementptr inbounds [10 x i32]* %arrayidx5.6.6, i32 0, i32 6
  %199 = load i32* %arrayidx6.6.6, align 4
  %add.6.6 = add nsw i32 %198, %199
  %arrayidx7.6.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.6.6 = getelementptr inbounds [10 x i32]* %arrayidx7.6.6, i32 0, i32 6
  store i32 %add.6.6, i32* %arrayidx8.6.6, align 4
  %arrayidx9.6.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.6.6 = getelementptr inbounds [10 x i32]* %arrayidx9.6.6, i32 0, i32 6
  %200 = load i32* %arrayidx10.6.6, align 4
  %add11.6.6 = add nsw i32 %add11.5.6, %200
  br label %for.inc.6.6

for.inc.6.6:                                      ; preds = %for.inc.5.6
  %arrayidx.7.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.7.6 = getelementptr inbounds [10 x i32]* %arrayidx.7.6, i32 0, i32 7
  %201 = load i32* %arrayidx4.7.6, align 4
  %arrayidx5.7.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.7.6 = getelementptr inbounds [10 x i32]* %arrayidx5.7.6, i32 0, i32 7
  %202 = load i32* %arrayidx6.7.6, align 4
  %add.7.6 = add nsw i32 %201, %202
  %arrayidx7.7.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.7.6 = getelementptr inbounds [10 x i32]* %arrayidx7.7.6, i32 0, i32 7
  store i32 %add.7.6, i32* %arrayidx8.7.6, align 4
  %arrayidx9.7.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.7.6 = getelementptr inbounds [10 x i32]* %arrayidx9.7.6, i32 0, i32 7
  %203 = load i32* %arrayidx10.7.6, align 4
  %add11.7.6 = add nsw i32 %add11.6.6, %203
  br label %for.inc.7.6

for.inc.7.6:                                      ; preds = %for.inc.6.6
  %arrayidx.8.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.8.6 = getelementptr inbounds [10 x i32]* %arrayidx.8.6, i32 0, i32 8
  %204 = load i32* %arrayidx4.8.6, align 4
  %arrayidx5.8.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.8.6 = getelementptr inbounds [10 x i32]* %arrayidx5.8.6, i32 0, i32 8
  %205 = load i32* %arrayidx6.8.6, align 4
  %add.8.6 = add nsw i32 %204, %205
  %arrayidx7.8.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.8.6 = getelementptr inbounds [10 x i32]* %arrayidx7.8.6, i32 0, i32 8
  store i32 %add.8.6, i32* %arrayidx8.8.6, align 4
  %arrayidx9.8.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.8.6 = getelementptr inbounds [10 x i32]* %arrayidx9.8.6, i32 0, i32 8
  %206 = load i32* %arrayidx10.8.6, align 4
  %add11.8.6 = add nsw i32 %add11.7.6, %206
  br label %for.inc.8.6

for.inc.8.6:                                      ; preds = %for.inc.7.6
  %arrayidx.9.6 = getelementptr inbounds [10 x i32]* %a, i32 6
  %arrayidx4.9.6 = getelementptr inbounds [10 x i32]* %arrayidx.9.6, i32 0, i32 9
  %207 = load i32* %arrayidx4.9.6, align 4
  %arrayidx5.9.6 = getelementptr inbounds [10 x i32]* %b, i32 6
  %arrayidx6.9.6 = getelementptr inbounds [10 x i32]* %arrayidx5.9.6, i32 0, i32 9
  %208 = load i32* %arrayidx6.9.6, align 4
  %add.9.6 = add nsw i32 %207, %208
  %arrayidx7.9.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx8.9.6 = getelementptr inbounds [10 x i32]* %arrayidx7.9.6, i32 0, i32 9
  store i32 %add.9.6, i32* %arrayidx8.9.6, align 4
  %arrayidx9.9.6 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 6
  %arrayidx10.9.6 = getelementptr inbounds [10 x i32]* %arrayidx9.9.6, i32 0, i32 9
  %209 = load i32* %arrayidx10.9.6, align 4
  %add11.9.6 = add nsw i32 %add11.8.6, %209
  br label %for.inc.9.6

for.inc.9.6:                                      ; preds = %for.inc.8.6
  br label %for.inc12.6

for.inc12.6:                                      ; preds = %for.inc.9.6
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.inc12.6
  %arrayidx.771 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.772 = getelementptr inbounds [10 x i32]* %arrayidx.771, i32 0, i32 0
  %210 = load i32* %arrayidx4.772, align 4
  %arrayidx5.773 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.774 = getelementptr inbounds [10 x i32]* %arrayidx5.773, i32 0, i32 0
  %211 = load i32* %arrayidx6.774, align 4
  %add.775 = add nsw i32 %210, %211
  %arrayidx7.776 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.777 = getelementptr inbounds [10 x i32]* %arrayidx7.776, i32 0, i32 0
  store i32 %add.775, i32* %arrayidx8.777, align 4
  %arrayidx9.778 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.779 = getelementptr inbounds [10 x i32]* %arrayidx9.778, i32 0, i32 0
  %212 = load i32* %arrayidx10.779, align 4
  %add11.780 = add nsw i32 %add11.9.6, %212
  br label %for.inc.781

for.inc.781:                                      ; preds = %for.body3.7
  %arrayidx.1.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.1.7 = getelementptr inbounds [10 x i32]* %arrayidx.1.7, i32 0, i32 1
  %213 = load i32* %arrayidx4.1.7, align 4
  %arrayidx5.1.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.1.7 = getelementptr inbounds [10 x i32]* %arrayidx5.1.7, i32 0, i32 1
  %214 = load i32* %arrayidx6.1.7, align 4
  %add.1.7 = add nsw i32 %213, %214
  %arrayidx7.1.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.1.7 = getelementptr inbounds [10 x i32]* %arrayidx7.1.7, i32 0, i32 1
  store i32 %add.1.7, i32* %arrayidx8.1.7, align 4
  %arrayidx9.1.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.1.7 = getelementptr inbounds [10 x i32]* %arrayidx9.1.7, i32 0, i32 1
  %215 = load i32* %arrayidx10.1.7, align 4
  %add11.1.7 = add nsw i32 %add11.780, %215
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %for.inc.781
  %arrayidx.2.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.2.7 = getelementptr inbounds [10 x i32]* %arrayidx.2.7, i32 0, i32 2
  %216 = load i32* %arrayidx4.2.7, align 4
  %arrayidx5.2.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.2.7 = getelementptr inbounds [10 x i32]* %arrayidx5.2.7, i32 0, i32 2
  %217 = load i32* %arrayidx6.2.7, align 4
  %add.2.7 = add nsw i32 %216, %217
  %arrayidx7.2.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.2.7 = getelementptr inbounds [10 x i32]* %arrayidx7.2.7, i32 0, i32 2
  store i32 %add.2.7, i32* %arrayidx8.2.7, align 4
  %arrayidx9.2.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.2.7 = getelementptr inbounds [10 x i32]* %arrayidx9.2.7, i32 0, i32 2
  %218 = load i32* %arrayidx10.2.7, align 4
  %add11.2.7 = add nsw i32 %add11.1.7, %218
  br label %for.inc.2.7

for.inc.2.7:                                      ; preds = %for.inc.1.7
  %arrayidx.3.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.3.7 = getelementptr inbounds [10 x i32]* %arrayidx.3.7, i32 0, i32 3
  %219 = load i32* %arrayidx4.3.7, align 4
  %arrayidx5.3.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.3.7 = getelementptr inbounds [10 x i32]* %arrayidx5.3.7, i32 0, i32 3
  %220 = load i32* %arrayidx6.3.7, align 4
  %add.3.7 = add nsw i32 %219, %220
  %arrayidx7.3.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.3.7 = getelementptr inbounds [10 x i32]* %arrayidx7.3.7, i32 0, i32 3
  store i32 %add.3.7, i32* %arrayidx8.3.7, align 4
  %arrayidx9.3.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.3.7 = getelementptr inbounds [10 x i32]* %arrayidx9.3.7, i32 0, i32 3
  %221 = load i32* %arrayidx10.3.7, align 4
  %add11.3.7 = add nsw i32 %add11.2.7, %221
  br label %for.inc.3.7

for.inc.3.7:                                      ; preds = %for.inc.2.7
  %arrayidx.4.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.4.7 = getelementptr inbounds [10 x i32]* %arrayidx.4.7, i32 0, i32 4
  %222 = load i32* %arrayidx4.4.7, align 4
  %arrayidx5.4.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.4.7 = getelementptr inbounds [10 x i32]* %arrayidx5.4.7, i32 0, i32 4
  %223 = load i32* %arrayidx6.4.7, align 4
  %add.4.7 = add nsw i32 %222, %223
  %arrayidx7.4.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.4.7 = getelementptr inbounds [10 x i32]* %arrayidx7.4.7, i32 0, i32 4
  store i32 %add.4.7, i32* %arrayidx8.4.7, align 4
  %arrayidx9.4.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.4.7 = getelementptr inbounds [10 x i32]* %arrayidx9.4.7, i32 0, i32 4
  %224 = load i32* %arrayidx10.4.7, align 4
  %add11.4.7 = add nsw i32 %add11.3.7, %224
  br label %for.inc.4.7

for.inc.4.7:                                      ; preds = %for.inc.3.7
  %arrayidx.5.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.5.7 = getelementptr inbounds [10 x i32]* %arrayidx.5.7, i32 0, i32 5
  %225 = load i32* %arrayidx4.5.7, align 4
  %arrayidx5.5.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.5.7 = getelementptr inbounds [10 x i32]* %arrayidx5.5.7, i32 0, i32 5
  %226 = load i32* %arrayidx6.5.7, align 4
  %add.5.7 = add nsw i32 %225, %226
  %arrayidx7.5.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.5.7 = getelementptr inbounds [10 x i32]* %arrayidx7.5.7, i32 0, i32 5
  store i32 %add.5.7, i32* %arrayidx8.5.7, align 4
  %arrayidx9.5.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.5.7 = getelementptr inbounds [10 x i32]* %arrayidx9.5.7, i32 0, i32 5
  %227 = load i32* %arrayidx10.5.7, align 4
  %add11.5.7 = add nsw i32 %add11.4.7, %227
  br label %for.inc.5.7

for.inc.5.7:                                      ; preds = %for.inc.4.7
  %arrayidx.6.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.6.7 = getelementptr inbounds [10 x i32]* %arrayidx.6.7, i32 0, i32 6
  %228 = load i32* %arrayidx4.6.7, align 4
  %arrayidx5.6.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.6.7 = getelementptr inbounds [10 x i32]* %arrayidx5.6.7, i32 0, i32 6
  %229 = load i32* %arrayidx6.6.7, align 4
  %add.6.7 = add nsw i32 %228, %229
  %arrayidx7.6.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.6.7 = getelementptr inbounds [10 x i32]* %arrayidx7.6.7, i32 0, i32 6
  store i32 %add.6.7, i32* %arrayidx8.6.7, align 4
  %arrayidx9.6.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.6.7 = getelementptr inbounds [10 x i32]* %arrayidx9.6.7, i32 0, i32 6
  %230 = load i32* %arrayidx10.6.7, align 4
  %add11.6.7 = add nsw i32 %add11.5.7, %230
  br label %for.inc.6.7

for.inc.6.7:                                      ; preds = %for.inc.5.7
  %arrayidx.7.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.7.7 = getelementptr inbounds [10 x i32]* %arrayidx.7.7, i32 0, i32 7
  %231 = load i32* %arrayidx4.7.7, align 4
  %arrayidx5.7.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.7.7 = getelementptr inbounds [10 x i32]* %arrayidx5.7.7, i32 0, i32 7
  %232 = load i32* %arrayidx6.7.7, align 4
  %add.7.7 = add nsw i32 %231, %232
  %arrayidx7.7.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.7.7 = getelementptr inbounds [10 x i32]* %arrayidx7.7.7, i32 0, i32 7
  store i32 %add.7.7, i32* %arrayidx8.7.7, align 4
  %arrayidx9.7.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.7.7 = getelementptr inbounds [10 x i32]* %arrayidx9.7.7, i32 0, i32 7
  %233 = load i32* %arrayidx10.7.7, align 4
  %add11.7.7 = add nsw i32 %add11.6.7, %233
  br label %for.inc.7.7

for.inc.7.7:                                      ; preds = %for.inc.6.7
  %arrayidx.8.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.8.7 = getelementptr inbounds [10 x i32]* %arrayidx.8.7, i32 0, i32 8
  %234 = load i32* %arrayidx4.8.7, align 4
  %arrayidx5.8.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.8.7 = getelementptr inbounds [10 x i32]* %arrayidx5.8.7, i32 0, i32 8
  %235 = load i32* %arrayidx6.8.7, align 4
  %add.8.7 = add nsw i32 %234, %235
  %arrayidx7.8.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.8.7 = getelementptr inbounds [10 x i32]* %arrayidx7.8.7, i32 0, i32 8
  store i32 %add.8.7, i32* %arrayidx8.8.7, align 4
  %arrayidx9.8.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.8.7 = getelementptr inbounds [10 x i32]* %arrayidx9.8.7, i32 0, i32 8
  %236 = load i32* %arrayidx10.8.7, align 4
  %add11.8.7 = add nsw i32 %add11.7.7, %236
  br label %for.inc.8.7

for.inc.8.7:                                      ; preds = %for.inc.7.7
  %arrayidx.9.7 = getelementptr inbounds [10 x i32]* %a, i32 7
  %arrayidx4.9.7 = getelementptr inbounds [10 x i32]* %arrayidx.9.7, i32 0, i32 9
  %237 = load i32* %arrayidx4.9.7, align 4
  %arrayidx5.9.7 = getelementptr inbounds [10 x i32]* %b, i32 7
  %arrayidx6.9.7 = getelementptr inbounds [10 x i32]* %arrayidx5.9.7, i32 0, i32 9
  %238 = load i32* %arrayidx6.9.7, align 4
  %add.9.7 = add nsw i32 %237, %238
  %arrayidx7.9.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx8.9.7 = getelementptr inbounds [10 x i32]* %arrayidx7.9.7, i32 0, i32 9
  store i32 %add.9.7, i32* %arrayidx8.9.7, align 4
  %arrayidx9.9.7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 7
  %arrayidx10.9.7 = getelementptr inbounds [10 x i32]* %arrayidx9.9.7, i32 0, i32 9
  %239 = load i32* %arrayidx10.9.7, align 4
  %add11.9.7 = add nsw i32 %add11.8.7, %239
  br label %for.inc.9.7

for.inc.9.7:                                      ; preds = %for.inc.8.7
  br label %for.inc12.7

for.inc12.7:                                      ; preds = %for.inc.9.7
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.inc12.7
  %arrayidx.882 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.883 = getelementptr inbounds [10 x i32]* %arrayidx.882, i32 0, i32 0
  %240 = load i32* %arrayidx4.883, align 4
  %arrayidx5.884 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.885 = getelementptr inbounds [10 x i32]* %arrayidx5.884, i32 0, i32 0
  %241 = load i32* %arrayidx6.885, align 4
  %add.886 = add nsw i32 %240, %241
  %arrayidx7.887 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.888 = getelementptr inbounds [10 x i32]* %arrayidx7.887, i32 0, i32 0
  store i32 %add.886, i32* %arrayidx8.888, align 4
  %arrayidx9.889 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.890 = getelementptr inbounds [10 x i32]* %arrayidx9.889, i32 0, i32 0
  %242 = load i32* %arrayidx10.890, align 4
  %add11.891 = add nsw i32 %add11.9.7, %242
  br label %for.inc.892

for.inc.892:                                      ; preds = %for.body3.8
  %arrayidx.1.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.1.8 = getelementptr inbounds [10 x i32]* %arrayidx.1.8, i32 0, i32 1
  %243 = load i32* %arrayidx4.1.8, align 4
  %arrayidx5.1.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.1.8 = getelementptr inbounds [10 x i32]* %arrayidx5.1.8, i32 0, i32 1
  %244 = load i32* %arrayidx6.1.8, align 4
  %add.1.8 = add nsw i32 %243, %244
  %arrayidx7.1.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.1.8 = getelementptr inbounds [10 x i32]* %arrayidx7.1.8, i32 0, i32 1
  store i32 %add.1.8, i32* %arrayidx8.1.8, align 4
  %arrayidx9.1.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.1.8 = getelementptr inbounds [10 x i32]* %arrayidx9.1.8, i32 0, i32 1
  %245 = load i32* %arrayidx10.1.8, align 4
  %add11.1.8 = add nsw i32 %add11.891, %245
  br label %for.inc.1.8

for.inc.1.8:                                      ; preds = %for.inc.892
  %arrayidx.2.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.2.8 = getelementptr inbounds [10 x i32]* %arrayidx.2.8, i32 0, i32 2
  %246 = load i32* %arrayidx4.2.8, align 4
  %arrayidx5.2.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.2.8 = getelementptr inbounds [10 x i32]* %arrayidx5.2.8, i32 0, i32 2
  %247 = load i32* %arrayidx6.2.8, align 4
  %add.2.8 = add nsw i32 %246, %247
  %arrayidx7.2.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.2.8 = getelementptr inbounds [10 x i32]* %arrayidx7.2.8, i32 0, i32 2
  store i32 %add.2.8, i32* %arrayidx8.2.8, align 4
  %arrayidx9.2.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.2.8 = getelementptr inbounds [10 x i32]* %arrayidx9.2.8, i32 0, i32 2
  %248 = load i32* %arrayidx10.2.8, align 4
  %add11.2.8 = add nsw i32 %add11.1.8, %248
  br label %for.inc.2.8

for.inc.2.8:                                      ; preds = %for.inc.1.8
  %arrayidx.3.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.3.8 = getelementptr inbounds [10 x i32]* %arrayidx.3.8, i32 0, i32 3
  %249 = load i32* %arrayidx4.3.8, align 4
  %arrayidx5.3.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.3.8 = getelementptr inbounds [10 x i32]* %arrayidx5.3.8, i32 0, i32 3
  %250 = load i32* %arrayidx6.3.8, align 4
  %add.3.8 = add nsw i32 %249, %250
  %arrayidx7.3.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.3.8 = getelementptr inbounds [10 x i32]* %arrayidx7.3.8, i32 0, i32 3
  store i32 %add.3.8, i32* %arrayidx8.3.8, align 4
  %arrayidx9.3.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.3.8 = getelementptr inbounds [10 x i32]* %arrayidx9.3.8, i32 0, i32 3
  %251 = load i32* %arrayidx10.3.8, align 4
  %add11.3.8 = add nsw i32 %add11.2.8, %251
  br label %for.inc.3.8

for.inc.3.8:                                      ; preds = %for.inc.2.8
  %arrayidx.4.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.4.8 = getelementptr inbounds [10 x i32]* %arrayidx.4.8, i32 0, i32 4
  %252 = load i32* %arrayidx4.4.8, align 4
  %arrayidx5.4.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.4.8 = getelementptr inbounds [10 x i32]* %arrayidx5.4.8, i32 0, i32 4
  %253 = load i32* %arrayidx6.4.8, align 4
  %add.4.8 = add nsw i32 %252, %253
  %arrayidx7.4.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.4.8 = getelementptr inbounds [10 x i32]* %arrayidx7.4.8, i32 0, i32 4
  store i32 %add.4.8, i32* %arrayidx8.4.8, align 4
  %arrayidx9.4.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.4.8 = getelementptr inbounds [10 x i32]* %arrayidx9.4.8, i32 0, i32 4
  %254 = load i32* %arrayidx10.4.8, align 4
  %add11.4.8 = add nsw i32 %add11.3.8, %254
  br label %for.inc.4.8

for.inc.4.8:                                      ; preds = %for.inc.3.8
  %arrayidx.5.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.5.8 = getelementptr inbounds [10 x i32]* %arrayidx.5.8, i32 0, i32 5
  %255 = load i32* %arrayidx4.5.8, align 4
  %arrayidx5.5.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.5.8 = getelementptr inbounds [10 x i32]* %arrayidx5.5.8, i32 0, i32 5
  %256 = load i32* %arrayidx6.5.8, align 4
  %add.5.8 = add nsw i32 %255, %256
  %arrayidx7.5.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.5.8 = getelementptr inbounds [10 x i32]* %arrayidx7.5.8, i32 0, i32 5
  store i32 %add.5.8, i32* %arrayidx8.5.8, align 4
  %arrayidx9.5.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.5.8 = getelementptr inbounds [10 x i32]* %arrayidx9.5.8, i32 0, i32 5
  %257 = load i32* %arrayidx10.5.8, align 4
  %add11.5.8 = add nsw i32 %add11.4.8, %257
  br label %for.inc.5.8

for.inc.5.8:                                      ; preds = %for.inc.4.8
  %arrayidx.6.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.6.8 = getelementptr inbounds [10 x i32]* %arrayidx.6.8, i32 0, i32 6
  %258 = load i32* %arrayidx4.6.8, align 4
  %arrayidx5.6.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.6.8 = getelementptr inbounds [10 x i32]* %arrayidx5.6.8, i32 0, i32 6
  %259 = load i32* %arrayidx6.6.8, align 4
  %add.6.8 = add nsw i32 %258, %259
  %arrayidx7.6.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.6.8 = getelementptr inbounds [10 x i32]* %arrayidx7.6.8, i32 0, i32 6
  store i32 %add.6.8, i32* %arrayidx8.6.8, align 4
  %arrayidx9.6.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.6.8 = getelementptr inbounds [10 x i32]* %arrayidx9.6.8, i32 0, i32 6
  %260 = load i32* %arrayidx10.6.8, align 4
  %add11.6.8 = add nsw i32 %add11.5.8, %260
  br label %for.inc.6.8

for.inc.6.8:                                      ; preds = %for.inc.5.8
  %arrayidx.7.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.7.8 = getelementptr inbounds [10 x i32]* %arrayidx.7.8, i32 0, i32 7
  %261 = load i32* %arrayidx4.7.8, align 4
  %arrayidx5.7.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.7.8 = getelementptr inbounds [10 x i32]* %arrayidx5.7.8, i32 0, i32 7
  %262 = load i32* %arrayidx6.7.8, align 4
  %add.7.8 = add nsw i32 %261, %262
  %arrayidx7.7.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.7.8 = getelementptr inbounds [10 x i32]* %arrayidx7.7.8, i32 0, i32 7
  store i32 %add.7.8, i32* %arrayidx8.7.8, align 4
  %arrayidx9.7.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.7.8 = getelementptr inbounds [10 x i32]* %arrayidx9.7.8, i32 0, i32 7
  %263 = load i32* %arrayidx10.7.8, align 4
  %add11.7.8 = add nsw i32 %add11.6.8, %263
  br label %for.inc.7.8

for.inc.7.8:                                      ; preds = %for.inc.6.8
  %arrayidx.8.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.8.8 = getelementptr inbounds [10 x i32]* %arrayidx.8.8, i32 0, i32 8
  %264 = load i32* %arrayidx4.8.8, align 4
  %arrayidx5.8.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.8.8 = getelementptr inbounds [10 x i32]* %arrayidx5.8.8, i32 0, i32 8
  %265 = load i32* %arrayidx6.8.8, align 4
  %add.8.8 = add nsw i32 %264, %265
  %arrayidx7.8.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.8.8 = getelementptr inbounds [10 x i32]* %arrayidx7.8.8, i32 0, i32 8
  store i32 %add.8.8, i32* %arrayidx8.8.8, align 4
  %arrayidx9.8.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.8.8 = getelementptr inbounds [10 x i32]* %arrayidx9.8.8, i32 0, i32 8
  %266 = load i32* %arrayidx10.8.8, align 4
  %add11.8.8 = add nsw i32 %add11.7.8, %266
  br label %for.inc.8.8

for.inc.8.8:                                      ; preds = %for.inc.7.8
  %arrayidx.9.8 = getelementptr inbounds [10 x i32]* %a, i32 8
  %arrayidx4.9.8 = getelementptr inbounds [10 x i32]* %arrayidx.9.8, i32 0, i32 9
  %267 = load i32* %arrayidx4.9.8, align 4
  %arrayidx5.9.8 = getelementptr inbounds [10 x i32]* %b, i32 8
  %arrayidx6.9.8 = getelementptr inbounds [10 x i32]* %arrayidx5.9.8, i32 0, i32 9
  %268 = load i32* %arrayidx6.9.8, align 4
  %add.9.8 = add nsw i32 %267, %268
  %arrayidx7.9.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx8.9.8 = getelementptr inbounds [10 x i32]* %arrayidx7.9.8, i32 0, i32 9
  store i32 %add.9.8, i32* %arrayidx8.9.8, align 4
  %arrayidx9.9.8 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 8
  %arrayidx10.9.8 = getelementptr inbounds [10 x i32]* %arrayidx9.9.8, i32 0, i32 9
  %269 = load i32* %arrayidx10.9.8, align 4
  %add11.9.8 = add nsw i32 %add11.8.8, %269
  br label %for.inc.9.8

for.inc.9.8:                                      ; preds = %for.inc.8.8
  br label %for.inc12.8

for.inc12.8:                                      ; preds = %for.inc.9.8
  br label %for.body3.9

for.body3.9:                                      ; preds = %for.inc12.8
  %arrayidx.993 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.994 = getelementptr inbounds [10 x i32]* %arrayidx.993, i32 0, i32 0
  %270 = load i32* %arrayidx4.994, align 4
  %arrayidx5.995 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.996 = getelementptr inbounds [10 x i32]* %arrayidx5.995, i32 0, i32 0
  %271 = load i32* %arrayidx6.996, align 4
  %add.997 = add nsw i32 %270, %271
  %arrayidx7.998 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.999 = getelementptr inbounds [10 x i32]* %arrayidx7.998, i32 0, i32 0
  store i32 %add.997, i32* %arrayidx8.999, align 4
  %arrayidx9.9100 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.9101 = getelementptr inbounds [10 x i32]* %arrayidx9.9100, i32 0, i32 0
  %272 = load i32* %arrayidx10.9101, align 4
  %add11.9102 = add nsw i32 %add11.9.8, %272
  br label %for.inc.9103

for.inc.9103:                                     ; preds = %for.body3.9
  %arrayidx.1.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.1.9 = getelementptr inbounds [10 x i32]* %arrayidx.1.9, i32 0, i32 1
  %273 = load i32* %arrayidx4.1.9, align 4
  %arrayidx5.1.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.1.9 = getelementptr inbounds [10 x i32]* %arrayidx5.1.9, i32 0, i32 1
  %274 = load i32* %arrayidx6.1.9, align 4
  %add.1.9 = add nsw i32 %273, %274
  %arrayidx7.1.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.1.9 = getelementptr inbounds [10 x i32]* %arrayidx7.1.9, i32 0, i32 1
  store i32 %add.1.9, i32* %arrayidx8.1.9, align 4
  %arrayidx9.1.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.1.9 = getelementptr inbounds [10 x i32]* %arrayidx9.1.9, i32 0, i32 1
  %275 = load i32* %arrayidx10.1.9, align 4
  %add11.1.9 = add nsw i32 %add11.9102, %275
  br label %for.inc.1.9

for.inc.1.9:                                      ; preds = %for.inc.9103
  %arrayidx.2.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.2.9 = getelementptr inbounds [10 x i32]* %arrayidx.2.9, i32 0, i32 2
  %276 = load i32* %arrayidx4.2.9, align 4
  %arrayidx5.2.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.2.9 = getelementptr inbounds [10 x i32]* %arrayidx5.2.9, i32 0, i32 2
  %277 = load i32* %arrayidx6.2.9, align 4
  %add.2.9 = add nsw i32 %276, %277
  %arrayidx7.2.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.2.9 = getelementptr inbounds [10 x i32]* %arrayidx7.2.9, i32 0, i32 2
  store i32 %add.2.9, i32* %arrayidx8.2.9, align 4
  %arrayidx9.2.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.2.9 = getelementptr inbounds [10 x i32]* %arrayidx9.2.9, i32 0, i32 2
  %278 = load i32* %arrayidx10.2.9, align 4
  %add11.2.9 = add nsw i32 %add11.1.9, %278
  br label %for.inc.2.9

for.inc.2.9:                                      ; preds = %for.inc.1.9
  %arrayidx.3.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.3.9 = getelementptr inbounds [10 x i32]* %arrayidx.3.9, i32 0, i32 3
  %279 = load i32* %arrayidx4.3.9, align 4
  %arrayidx5.3.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.3.9 = getelementptr inbounds [10 x i32]* %arrayidx5.3.9, i32 0, i32 3
  %280 = load i32* %arrayidx6.3.9, align 4
  %add.3.9 = add nsw i32 %279, %280
  %arrayidx7.3.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.3.9 = getelementptr inbounds [10 x i32]* %arrayidx7.3.9, i32 0, i32 3
  store i32 %add.3.9, i32* %arrayidx8.3.9, align 4
  %arrayidx9.3.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.3.9 = getelementptr inbounds [10 x i32]* %arrayidx9.3.9, i32 0, i32 3
  %281 = load i32* %arrayidx10.3.9, align 4
  %add11.3.9 = add nsw i32 %add11.2.9, %281
  br label %for.inc.3.9

for.inc.3.9:                                      ; preds = %for.inc.2.9
  %arrayidx.4.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.4.9 = getelementptr inbounds [10 x i32]* %arrayidx.4.9, i32 0, i32 4
  %282 = load i32* %arrayidx4.4.9, align 4
  %arrayidx5.4.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.4.9 = getelementptr inbounds [10 x i32]* %arrayidx5.4.9, i32 0, i32 4
  %283 = load i32* %arrayidx6.4.9, align 4
  %add.4.9 = add nsw i32 %282, %283
  %arrayidx7.4.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.4.9 = getelementptr inbounds [10 x i32]* %arrayidx7.4.9, i32 0, i32 4
  store i32 %add.4.9, i32* %arrayidx8.4.9, align 4
  %arrayidx9.4.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.4.9 = getelementptr inbounds [10 x i32]* %arrayidx9.4.9, i32 0, i32 4
  %284 = load i32* %arrayidx10.4.9, align 4
  %add11.4.9 = add nsw i32 %add11.3.9, %284
  br label %for.inc.4.9

for.inc.4.9:                                      ; preds = %for.inc.3.9
  %arrayidx.5.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.5.9 = getelementptr inbounds [10 x i32]* %arrayidx.5.9, i32 0, i32 5
  %285 = load i32* %arrayidx4.5.9, align 4
  %arrayidx5.5.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.5.9 = getelementptr inbounds [10 x i32]* %arrayidx5.5.9, i32 0, i32 5
  %286 = load i32* %arrayidx6.5.9, align 4
  %add.5.9 = add nsw i32 %285, %286
  %arrayidx7.5.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.5.9 = getelementptr inbounds [10 x i32]* %arrayidx7.5.9, i32 0, i32 5
  store i32 %add.5.9, i32* %arrayidx8.5.9, align 4
  %arrayidx9.5.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.5.9 = getelementptr inbounds [10 x i32]* %arrayidx9.5.9, i32 0, i32 5
  %287 = load i32* %arrayidx10.5.9, align 4
  %add11.5.9 = add nsw i32 %add11.4.9, %287
  br label %for.inc.5.9

for.inc.5.9:                                      ; preds = %for.inc.4.9
  %arrayidx.6.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.6.9 = getelementptr inbounds [10 x i32]* %arrayidx.6.9, i32 0, i32 6
  %288 = load i32* %arrayidx4.6.9, align 4
  %arrayidx5.6.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.6.9 = getelementptr inbounds [10 x i32]* %arrayidx5.6.9, i32 0, i32 6
  %289 = load i32* %arrayidx6.6.9, align 4
  %add.6.9 = add nsw i32 %288, %289
  %arrayidx7.6.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.6.9 = getelementptr inbounds [10 x i32]* %arrayidx7.6.9, i32 0, i32 6
  store i32 %add.6.9, i32* %arrayidx8.6.9, align 4
  %arrayidx9.6.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.6.9 = getelementptr inbounds [10 x i32]* %arrayidx9.6.9, i32 0, i32 6
  %290 = load i32* %arrayidx10.6.9, align 4
  %add11.6.9 = add nsw i32 %add11.5.9, %290
  br label %for.inc.6.9

for.inc.6.9:                                      ; preds = %for.inc.5.9
  %arrayidx.7.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.7.9 = getelementptr inbounds [10 x i32]* %arrayidx.7.9, i32 0, i32 7
  %291 = load i32* %arrayidx4.7.9, align 4
  %arrayidx5.7.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.7.9 = getelementptr inbounds [10 x i32]* %arrayidx5.7.9, i32 0, i32 7
  %292 = load i32* %arrayidx6.7.9, align 4
  %add.7.9 = add nsw i32 %291, %292
  %arrayidx7.7.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.7.9 = getelementptr inbounds [10 x i32]* %arrayidx7.7.9, i32 0, i32 7
  store i32 %add.7.9, i32* %arrayidx8.7.9, align 4
  %arrayidx9.7.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.7.9 = getelementptr inbounds [10 x i32]* %arrayidx9.7.9, i32 0, i32 7
  %293 = load i32* %arrayidx10.7.9, align 4
  %add11.7.9 = add nsw i32 %add11.6.9, %293
  br label %for.inc.7.9

for.inc.7.9:                                      ; preds = %for.inc.6.9
  %arrayidx.8.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.8.9 = getelementptr inbounds [10 x i32]* %arrayidx.8.9, i32 0, i32 8
  %294 = load i32* %arrayidx4.8.9, align 4
  %arrayidx5.8.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.8.9 = getelementptr inbounds [10 x i32]* %arrayidx5.8.9, i32 0, i32 8
  %295 = load i32* %arrayidx6.8.9, align 4
  %add.8.9 = add nsw i32 %294, %295
  %arrayidx7.8.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.8.9 = getelementptr inbounds [10 x i32]* %arrayidx7.8.9, i32 0, i32 8
  store i32 %add.8.9, i32* %arrayidx8.8.9, align 4
  %arrayidx9.8.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.8.9 = getelementptr inbounds [10 x i32]* %arrayidx9.8.9, i32 0, i32 8
  %296 = load i32* %arrayidx10.8.9, align 4
  %add11.8.9 = add nsw i32 %add11.7.9, %296
  br label %for.inc.8.9

for.inc.8.9:                                      ; preds = %for.inc.7.9
  %arrayidx.9.9 = getelementptr inbounds [10 x i32]* %a, i32 9
  %arrayidx4.9.9 = getelementptr inbounds [10 x i32]* %arrayidx.9.9, i32 0, i32 9
  %297 = load i32* %arrayidx4.9.9, align 4
  %arrayidx5.9.9 = getelementptr inbounds [10 x i32]* %b, i32 9
  %arrayidx6.9.9 = getelementptr inbounds [10 x i32]* %arrayidx5.9.9, i32 0, i32 9
  %298 = load i32* %arrayidx6.9.9, align 4
  %add.9.9 = add nsw i32 %297, %298
  %arrayidx7.9.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx8.9.9 = getelementptr inbounds [10 x i32]* %arrayidx7.9.9, i32 0, i32 9
  store i32 %add.9.9, i32* %arrayidx8.9.9, align 4
  %arrayidx9.9.9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 9
  %arrayidx10.9.9 = getelementptr inbounds [10 x i32]* %arrayidx9.9.9, i32 0, i32 9
  %299 = load i32* %arrayidx10.9.9, align 4
  %add11.9.9 = add nsw i32 %add11.8.9, %299
  br label %for.inc.9.9

for.inc.9.9:                                      ; preds = %for.inc.8.9
  br label %for.inc12.9

for.inc12.9:                                      ; preds = %for.inc.9.9
  ret i32 %add11.9.9
}
