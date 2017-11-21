; ModuleID = '/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_FIFO.str = internal unnamed_addr constant [11 x i8] c"array_FIFO\00" ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @array_FIFO(i32* %d_o, i32* %d_i, i32* %idx) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @array_FIFO.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %d_o}, i64 0, metadata !34), !dbg !35 ; [debug line = 94:25] [debug variable = d_o]
  call void @llvm.dbg.value(metadata !{i32* %d_i}, i64 0, metadata !36), !dbg !37 ; [debug line = 94:39] [debug variable = d_i]
  call void @llvm.dbg.value(metadata !{i32* %idx}, i64 0, metadata !38), !dbg !39 ; [debug line = 94:54] [debug variable = idx]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %d_o, i32 4) nounwind, !dbg !40 ; [debug line = 94:63]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %idx, i32 4) nounwind, !dbg !42 ; [debug line = 94:93]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %d_i, i32 4) nounwind, !dbg !43 ; [debug line = 94:123]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_o, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 95:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %d_i, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 95:1]
  br label %1, !dbg !45                           ; [debug line = 98:17]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !45         ; [#uses=1 type=i1] [debug line = 98:17]
  br i1 %exitcond, label %3, label %2, !dbg !45   ; [debug line = 98:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !47 ; [debug line = 98:31]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !47 ; [#uses=1 type=i32] [debug line = 98:31]
  %tmp = sext i32 %i to i64, !dbg !49             ; [#uses=2 type=i64] [debug line = 99:3]
  %idx.addr = getelementptr inbounds i32* %idx, i64 %tmp, !dbg !49 ; [#uses=1 type=i32*] [debug line = 99:3]
  %idx.load = load i32* %idx.addr, align 4, !dbg !49 ; [#uses=2 type=i32] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %idx.load) nounwind
  %tmp.1 = sext i32 %idx.load to i64, !dbg !49    ; [#uses=1 type=i64] [debug line = 99:3]
  %d_i.addr = getelementptr inbounds i32* %d_i, i64 %tmp.1, !dbg !49 ; [#uses=1 type=i32*] [debug line = 99:3]
  %d_i.load = load i32* %d_i.addr, align 4, !dbg !49 ; [#uses=2 type=i32] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d_i.load) nounwind
  %d_o.addr = getelementptr inbounds i32* %d_o, i64 %tmp, !dbg !49 ; [#uses=1 type=i32*] [debug line = 99:3]
  store i32 %d_i.load, i32* %d_o.addr, align 4, !dbg !49 ; [debug line = 99:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !50 ; [#uses=0 type=i32] [debug line = 100:2]
  %i.1 = add nsw i32 %i, 1, !dbg !51              ; [#uses=1 type=i32] [debug line = 98:25]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !52), !dbg !51 ; [debug line = 98:25] [debug variable = i]
  br label %1, !dbg !51                           ; [debug line = 98:25]

; <label>:3                                       ; preds = %1
  ret void, !dbg !53                              ; [debug line = 102:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!27}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/array_FIFO.pragma.2.c", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"array_FIFO", metadata !"array_FIFO", metadata !"", metadata !6, i32 94, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @array_FIFO, null, null, metadata !16, i32 94} ; [ DW_TAG_subprogram ]
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
!27 = metadata !{void (i32*, i32*, i32*)* @array_FIFO, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"dout_t*", metadata !"din_t*", metadata !"didx_t*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"d_o", metadata !"d_i", metadata !"idx"}
!33 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!34 = metadata !{i32 786689, metadata !5, metadata !"d_o", metadata !6, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 94, i32 25, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"d_i", metadata !6, i32 33554526, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 94, i32 39, metadata !5, null}
!38 = metadata !{i32 786689, metadata !5, metadata !"idx", metadata !6, i32 50331742, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 94, i32 54, metadata !5, null}
!40 = metadata !{i32 94, i32 63, metadata !41, null}
!41 = metadata !{i32 786443, metadata !5, i32 94, i32 62, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 94, i32 93, metadata !41, null}
!43 = metadata !{i32 94, i32 123, metadata !41, null}
!44 = metadata !{i32 95, i32 1, metadata !41, null}
!45 = metadata !{i32 98, i32 17, metadata !46, null}
!46 = metadata !{i32 786443, metadata !41, i32 98, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 98, i32 31, metadata !48, null}
!48 = metadata !{i32 786443, metadata !46, i32 98, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 99, i32 3, metadata !48, null}
!50 = metadata !{i32 100, i32 2, metadata !48, null}
!51 = metadata !{i32 98, i32 25, metadata !46, null}
!52 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !6, i32 95, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 102, i32 1, metadata !41, null}
