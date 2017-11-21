; ModuleID = '/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pointer_arith_str = internal unnamed_addr constant [14 x i8] c"pointer_arith\00" ; [#uses=1 type=[14 x i8]*]
@acc = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @pointer_arith(i32* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @pointer_arith_str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %d}, i64 0, metadata !13), !dbg !23 ; [debug line = 94:28] [debug variable = d]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 5, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !24 ; [debug line = 95:1]
  br label %1, !dbg !26                           ; [debug line = 98:7]

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i, -4, !dbg !26         ; [#uses=1 type=i1] [debug line = 98:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i_1 = add i3 %i, 1, !dbg !28                   ; [#uses=2 type=i3] [debug line = 99:5]
  br i1 %exitcond, label %3, label %2, !dbg !26   ; [debug line = 98:7]

; <label>:2                                       ; preds = %1
  %tmp = zext i3 %i to i64, !dbg !28              ; [#uses=1 type=i64] [debug line = 99:5]
  %p_sum_cast = zext i3 %i_1 to i64, !dbg !28     ; [#uses=1 type=i64] [debug line = 99:5]
  %d_addr = getelementptr inbounds i32* %d, i64 %p_sum_cast, !dbg !28 ; [#uses=2 type=i32*] [debug line = 99:5]
  %d_load_req = call i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32* %d_addr, i32 1) nounwind, !dbg !28 ; [#uses=0 type=i1] [debug line = 99:5]
  %d_addr_read = call i32 @_ssdm_op_Read.ap_bus.i32P(i32* %d_addr) nounwind, !dbg !28 ; [#uses=1 type=i32] [debug line = 99:5]
  %acc_load = load i32* @acc, align 4, !dbg !28   ; [#uses=1 type=i32] [debug line = 99:5]
  %tmp_1 = add nsw i32 %d_addr_read, %acc_load, !dbg !28 ; [#uses=2 type=i32] [debug line = 99:5]
  store i32 %tmp_1, i32* @acc, align 4, !dbg !28  ; [debug line = 99:5]
  %d_addr_1 = getelementptr inbounds i32* %d, i64 %tmp, !dbg !30 ; [#uses=2 type=i32*] [debug line = 100:5]
  %d_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %d_addr_1, i32 1) nounwind, !dbg !30 ; [#uses=0 type=i1] [debug line = 100:5]
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %d_addr_1, i32 %tmp_1) nounwind, !dbg !30 ; [debug line = 100:5]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !31), !dbg !32 ; [debug line = 98:15] [debug variable = i]
  br label %1, !dbg !32                           ; [debug line = 98:15]

; <label>:3                                       ; preds = %1
  ret void, !dbg !33                              ; [debug line = 102:1]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_bus.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_bus.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
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
!13 = metadata !{i32 786689, metadata !14, metadata !"d", metadata !15, i32 16777310, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"pointer_arith", metadata !"pointer_arith", metadata !"", metadata !15, i32 94, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @pointer_arith, null, null, metadata !21, i32 94} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"pointer_arith.c", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786454, null, metadata !"dio_t", metadata !15, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 94, i32 28, metadata !14, null}
!24 = metadata !{i32 95, i32 1, metadata !25, null}
!25 = metadata !{i32 786443, metadata !14, i32 94, i32 31, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 98, i32 7, metadata !27, null}
!27 = metadata !{i32 786443, metadata !25, i32 98, i32 2, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 99, i32 5, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 98, i32 20, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 100, i32 5, metadata !29, null}
!31 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !15, i32 96, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 98, i32 15, metadata !27, null}
!33 = metadata !{i32 102, i32 1, metadata !25, null}
