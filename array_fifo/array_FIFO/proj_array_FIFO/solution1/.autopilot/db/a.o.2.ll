; ModuleID = '/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_FIFO.str = internal unnamed_addr constant [11 x i8] c"array_FIFO\00" ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_FIFO(i32* %d_o, i32* %d_i, [4 x i32]* %idx) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d_o) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %d_i) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %idx) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @array_FIFO.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %d_o}, i64 0, metadata !48), !dbg !52 ; [debug line = 94:25] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{i32* %d_i}, i64 0, metadata !53), !dbg !55 ; [debug line = 94:39] [debug variable = d_i]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %idx}, i64 0, metadata !56), !dbg !58 ; [debug line = 94:54] [debug variable = idx]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_o, [8 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_i, [8 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1)
  br label %1, !dbg !59                           ; [debug line = 98:17]

; <label>:1                                       ; preds = %3, %0
  %i = phi i3 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=2 type=i3]
  %exitcond = icmp eq i3 %i, -4, !dbg !59         ; [#uses=1 type=i1] [debug line = 98:17]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !59   ; [debug line = 98:17]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str2) nounwind, !dbg !62 ; [debug line = 98:31]
  %d_i.load = load volatile i32* %d_i, align 4, !dbg !64 ; [#uses=1 type=i32] [debug line = 99:3]
  store volatile i32 %d_i.load, i32* %d_o, align 4, !dbg !64 ; [debug line = 99:3]
  %i.1 = add i3 %i, 1, !dbg !65                   ; [#uses=1 type=i3] [debug line = 98:25]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !66), !dbg !65 ; [debug line = 98:25] [debug variable = i]
  br label %1, !dbg !65                           ; [debug line = 98:25]

; <label>:4                                       ; preds = %1
  ret void, !dbg !67                              ; [debug line = 102:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!27}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/array_FIFO.pragma.2.c", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"array_FIFO", metadata !"array_FIFO", metadata !"", metadata !6, i32 94, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !16, i32 94} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"array_FIFO.c", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !14}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dout_t", metadata !6, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786454, null, metadata !"din_t", metadata !6, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 786454, null, metadata !"didx_t", metadata !6, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !23, metadata !24, metadata !25}
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 315, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 316, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 317, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", null} ; [ DW_TAG_file_type ]
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"dout_t*", metadata !"din_t*", metadata !"didx_t*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"d_o", metadata !"d_i", metadata !"idx"}
!33 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"d_o", metadata !38, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 3, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"d_i", metadata !38, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"idx", metadata !38, metadata !"int", i32 0, i32 31}
!48 = metadata !{i32 786689, metadata !5, metadata !"d_o", null, i32 94, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !10, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 94, i32 25, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"d_i", null, i32 94, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !13, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 94, i32 39, metadata !5, null}
!56 = metadata !{i32 786689, metadata !5, metadata !"idx", null, i32 94, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !15, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{i32 94, i32 54, metadata !5, null}
!59 = metadata !{i32 98, i32 17, metadata !60, null}
!60 = metadata !{i32 786443, metadata !61, i32 98, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !5, i32 94, i32 62, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 98, i32 31, metadata !63, null}
!63 = metadata !{i32 786443, metadata !60, i32 98, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 99, i32 3, metadata !63, null}
!65 = metadata !{i32 98, i32 25, metadata !60, null}
!66 = metadata !{i32 786688, metadata !61, metadata !"i", metadata !6, i32 95, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 102, i32 1, metadata !61, null}
