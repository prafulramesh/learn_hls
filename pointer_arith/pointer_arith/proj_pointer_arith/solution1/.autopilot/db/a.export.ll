; ModuleID = '/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pointer_arith_str = internal unnamed_addr constant [14 x i8] c"pointer_arith\00"
@acc = internal unnamed_addr global i32 0, align 4
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1

define void @pointer_arith(i32* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @pointer_arith_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %d, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 5, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_1 = add i3 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i3 %i to i64
  %p_sum_cast = zext i3 %i_1 to i64
  %d_addr = getelementptr inbounds i32* %d, i64 %p_sum_cast
  %d_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %d_addr, i32 1) nounwind
  %d_addr_read = call i32 @_ssdm_op_Read.ap_bus.i32P(i32* %d_addr) nounwind
  %acc_load = load i32* @acc, align 4
  %tmp_1 = add nsw i32 %d_addr_read, %acc_load
  store i32 %tmp_1, i32* @acc, align 4
  %d_addr_1 = getelementptr inbounds i32* %d, i64 %tmp
  %d_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %d_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %d_addr_1, i32 %tmp_1) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.ap_bus.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.ap_bus.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i32*)* @pointer_arith, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dio_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"d", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 4, i32 1}
