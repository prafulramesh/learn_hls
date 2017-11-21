; ModuleID = '/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_FIFO_str = internal unnamed_addr constant [11 x i8] c"array_FIFO\00" ; [#uses=1 type=[11 x i8]*]
@p_str2 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_FIFO(i32* %d_o, i32* %d_i, [4 x i32]* %idx) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d_o) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d_i) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %idx) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @array_FIFO_str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %d_o}, i64 0, metadata !21), !dbg !38 ; [debug line = 94:25] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{i32* %d_i}, i64 0, metadata !39), !dbg !41 ; [debug line = 94:39] [debug variable = d_i]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %idx}, i64 0, metadata !42), !dbg !44 ; [debug line = 94:54] [debug variable = idx]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_o, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_i, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %1, !dbg !45                           ; [debug line = 98:17]

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=2 type=i3]
  %exitcond = icmp eq i3 %i, -4, !dbg !45         ; [#uses=1 type=i1] [debug line = 98:17]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i_1 = add i3 %i, 1, !dbg !48                   ; [#uses=1 type=i3] [debug line = 98:25]
  br i1 %exitcond, label %3, label %2, !dbg !45   ; [debug line = 98:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str2) nounwind, !dbg !49 ; [debug line = 98:31]
  %d_i_read = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %d_i) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 99:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %d_o, i32 %d_i_read) nounwind, !dbg !51 ; [debug line = 99:3]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !52), !dbg !48 ; [debug line = 98:25] [debug variable = i]
  br label %1, !dbg !48                           ; [debug line = 98:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !53                              ; [debug line = 102:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
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
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dout_t*", metadata !"din_t*", metadata !"didx_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"d_o", metadata !"d_i", metadata !"idx"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"d_o", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"d_i", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"idx", metadata !11, metadata !"int", i32 0, i32 31}
!21 = metadata !{i32 786689, metadata !22, metadata !"d_o", null, i32 94, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"array_FIFO", metadata !"array_FIFO", metadata !"", metadata !23, i32 94, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !33, i32 94} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"array_FIFO.c", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !29, metadata !31}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786454, null, metadata !"dout_t", metadata !23, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!30 = metadata !{i32 786454, null, metadata !"din_t", metadata !23, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786454, null, metadata !"didx_t", metadata !23, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !27, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 94, i32 25, metadata !22, null}
!39 = metadata !{i32 786689, metadata !22, metadata !"d_i", null, i32 94, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !30, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{i32 94, i32 39, metadata !22, null}
!42 = metadata !{i32 786689, metadata !22, metadata !"idx", null, i32 94, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !32, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{i32 94, i32 54, metadata !22, null}
!45 = metadata !{i32 98, i32 17, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 98, i32 12, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !22, i32 94, i32 62, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 98, i32 25, metadata !46, null}
!49 = metadata !{i32 98, i32 31, metadata !50, null}
!50 = metadata !{i32 786443, metadata !46, i32 98, i32 30, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 99, i32 3, metadata !50, null}
!52 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !23, i32 95, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 102, i32 1, metadata !47, null}
