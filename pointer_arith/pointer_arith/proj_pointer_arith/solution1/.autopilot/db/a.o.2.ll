; ModuleID = '/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pointer_arith.str = internal unnamed_addr constant [14 x i8] c"pointer_arith\00" ; [#uses=1 type=[14 x i8]*]
@acc = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@.str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @pointer_arith(i32* %d) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @pointer_arith.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %d}, i64 0, metadata !33), !dbg !34 ; [debug line = 94:28] [debug variable = d]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d, [7 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 5, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !35 ; [debug line = 95:1]
  br label %1, !dbg !37                           ; [debug line = 98:7]

; <label>:1                                       ; preds = %3, %0
  %i = phi i3 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=4 type=i3]
  %exitcond = icmp eq i3 %i, -4, !dbg !37         ; [#uses=1 type=i1] [debug line = 98:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !37   ; [debug line = 98:7]

; <label>:3                                       ; preds = %1
  %tmp = zext i3 %i to i64, !dbg !39              ; [#uses=1 type=i64] [debug line = 99:5]
  %.sum = add i3 %i, 1, !dbg !39                  ; [#uses=1 type=i3] [debug line = 99:5]
  %.sum.cast = zext i3 %.sum to i64, !dbg !39     ; [#uses=1 type=i64] [debug line = 99:5]
  %d.addr = getelementptr inbounds i32* %d, i64 %.sum.cast, !dbg !39 ; [#uses=1 type=i32*] [debug line = 99:5]
  %d.load = load i32* %d.addr, align 4, !dbg !39  ; [#uses=1 type=i32] [debug line = 99:5]
  %acc.load = load i32* @acc, align 4, !dbg !39   ; [#uses=1 type=i32] [debug line = 99:5]
  %tmp.1 = add nsw i32 %acc.load, %d.load, !dbg !39 ; [#uses=2 type=i32] [debug line = 99:5]
  store i32 %tmp.1, i32* @acc, align 4, !dbg !39  ; [debug line = 99:5]
  %d.addr.1 = getelementptr inbounds i32* %d, i64 %tmp, !dbg !41 ; [#uses=1 type=i32*] [debug line = 100:5]
  store i32 %tmp.1, i32* %d.addr.1, align 4, !dbg !41 ; [debug line = 100:5]
  %i.1 = add i3 %i, 1, !dbg !42                   ; [#uses=1 type=i3] [debug line = 98:15]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !43), !dbg !42 ; [debug line = 98:15] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 98:15]

; <label>:4                                       ; preds = %1
  ret void, !dbg !44                              ; [debug line = 102:1]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!7}

!0 = metadata !{void (i32*)* @pointer_arith, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dio_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/pointer_arith.pragma.2.c", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !8} ; [ DW_TAG_compile_unit ]
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !10, metadata !20, metadata !23, metadata !24, metadata !25}
!10 = metadata !{i32 786484, i32 0, metadata !11, metadata !"acc", metadata !"acc", metadata !"", metadata !12, i32 95, metadata !17, i32 1, i32 1, i32* @acc} ; [ DW_TAG_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"pointer_arith", metadata !"pointer_arith", metadata !"", metadata !12, i32 94, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @pointer_arith, null, null, metadata !18, i32 94} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"pointer_arith.c", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"dio_t", metadata !12, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 315, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 316, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 317, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"d", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 4, i32 1}
!33 = metadata !{i32 786689, metadata !11, metadata !"d", metadata !12, i32 16777310, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 94, i32 28, metadata !11, null}
!35 = metadata !{i32 95, i32 1, metadata !36, null}
!36 = metadata !{i32 786443, metadata !11, i32 94, i32 31, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 98, i32 7, metadata !38, null}
!38 = metadata !{i32 786443, metadata !36, i32 98, i32 2, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 99, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 98, i32 20, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 100, i32 5, metadata !40, null}
!42 = metadata !{i32 98, i32 15, metadata !38, null}
!43 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !12, i32 96, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 102, i32 1, metadata !36, null}
