; ModuleID = '/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"For_Loop\00", align 1 ; [#uses=1 type=[9 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define void @array_FIFO(i32* %d_o, i32* %d_i, i32* %idx) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %3 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32* %d_o, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !34), !dbg !35 ; [debug line = 94:25] [debug variable = d_o]
  store i32* %d_i, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !36), !dbg !37 ; [debug line = 94:39] [debug variable = d_i]
  store i32* %idx, i32** %3, align 8
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !38), !dbg !39 ; [debug line = 94:54] [debug variable = idx]
  %4 = load i32** %1, align 8, !dbg !40           ; [#uses=1 type=i32*] [debug line = 94:63]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %4, i32 4) nounwind, !dbg !40 ; [debug line = 94:63]
  %5 = load i32** %3, align 8, !dbg !42           ; [#uses=1 type=i32*] [debug line = 94:93]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %5, i32 4) nounwind, !dbg !42 ; [debug line = 94:93]
  %6 = load i32** %2, align 8, !dbg !43           ; [#uses=1 type=i32*] [debug line = 94:123]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %6, i32 4) nounwind, !dbg !43 ; [debug line = 94:123]
  %7 = load i32** %1, align 8, !dbg !44           ; [#uses=1 type=i32*] [debug line = 95:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %7, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !44 ; [debug line = 95:1]
  %8 = load i32** %2, align 8, !dbg !44           ; [#uses=1 type=i32*] [debug line = 95:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %8, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !44 ; [debug line = 95:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !45), !dbg !46 ; [debug line = 95:6] [debug variable = i]
  br label %9, !dbg !47                           ; [debug line = 95:7]

; <label>:9                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !48         ; [debug line = 98:17]
  br label %10, !dbg !48                          ; [debug line = 98:17]

; <label>:10                                      ; preds = %27, %9
  %11 = load i32* %i, align 4, !dbg !48           ; [#uses=1 type=i32] [debug line = 98:17]
  %12 = icmp slt i32 %11, 4, !dbg !48             ; [#uses=1 type=i1] [debug line = 98:17]
  br i1 %12, label %13, label %30, !dbg !48       ; [debug line = 98:17]

; <label>:13                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !50 ; [debug line = 98:31]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !50 ; [debug line = 98:31]
  %14 = load i32* %i, align 4, !dbg !52           ; [#uses=1 type=i32] [debug line = 99:3]
  %15 = sext i32 %14 to i64, !dbg !52             ; [#uses=1 type=i64] [debug line = 99:3]
  %16 = load i32** %3, align 8, !dbg !52          ; [#uses=1 type=i32*] [debug line = 99:3]
  %17 = getelementptr inbounds i32* %16, i64 %15, !dbg !52 ; [#uses=1 type=i32*] [debug line = 99:3]
  %18 = load i32* %17, align 4, !dbg !52          ; [#uses=1 type=i32] [debug line = 99:3]
  %19 = sext i32 %18 to i64, !dbg !52             ; [#uses=1 type=i64] [debug line = 99:3]
  %20 = load i32** %2, align 8, !dbg !52          ; [#uses=1 type=i32*] [debug line = 99:3]
  %21 = getelementptr inbounds i32* %20, i64 %19, !dbg !52 ; [#uses=1 type=i32*] [debug line = 99:3]
  %22 = load i32* %21, align 4, !dbg !52          ; [#uses=1 type=i32] [debug line = 99:3]
  %23 = load i32* %i, align 4, !dbg !52           ; [#uses=1 type=i32] [debug line = 99:3]
  %24 = sext i32 %23 to i64, !dbg !52             ; [#uses=1 type=i64] [debug line = 99:3]
  %25 = load i32** %1, align 8, !dbg !52          ; [#uses=1 type=i32*] [debug line = 99:3]
  %26 = getelementptr inbounds i32* %25, i64 %24, !dbg !52 ; [#uses=1 type=i32*] [debug line = 99:3]
  store i32 %22, i32* %26, align 4, !dbg !52      ; [debug line = 99:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 100:2]
  br label %27, !dbg !53                          ; [debug line = 100:2]

; <label>:27                                      ; preds = %13
  %28 = load i32* %i, align 4, !dbg !54           ; [#uses=1 type=i32] [debug line = 98:25]
  %29 = add nsw i32 %28, 1, !dbg !54              ; [#uses=1 type=i32] [debug line = 98:25]
  store i32 %29, i32* %i, align 4, !dbg !54       ; [debug line = 98:25]
  br label %10, !dbg !54                          ; [debug line = 98:25]

; <label>:30                                      ; preds = %10
  ret void, !dbg !55                              ; [debug line = 102:1]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

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
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 315, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 316, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 317, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !11, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
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
!45 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !6, i32 95, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 95, i32 6, metadata !41, null}
!47 = metadata !{i32 95, i32 7, metadata !41, null}
!48 = metadata !{i32 98, i32 17, metadata !49, null}
!49 = metadata !{i32 786443, metadata !41, i32 98, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 98, i32 31, metadata !51, null}
!51 = metadata !{i32 786443, metadata !49, i32 98, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 99, i32 3, metadata !51, null}
!53 = metadata !{i32 100, i32 2, metadata !51, null}
!54 = metadata !{i32 98, i32 25, metadata !49, null}
!55 = metadata !{i32 102, i32 1, metadata !41, null}
