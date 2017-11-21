; ModuleID = '/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@pointer_arith.acc = internal global i32 0, align 4 ; [#uses=3 type=i32*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define void @pointer_arith(i32* %d) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i32* %d, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !31), !dbg !32 ; [debug line = 94:28] [debug variable = d]
  %2 = load i32** %1, align 8, !dbg !33           ; [#uses=1 type=i32*] [debug line = 95:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !33 ; [debug line = 95:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !35), !dbg !36 ; [debug line = 96:7] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !37         ; [debug line = 98:7]
  br label %3, !dbg !37                           ; [debug line = 98:7]

; <label>:3                                       ; preds = %20, %0
  %4 = load i32* %i, align 4, !dbg !37            ; [#uses=1 type=i32] [debug line = 98:7]
  %5 = icmp slt i32 %4, 4, !dbg !37               ; [#uses=1 type=i1] [debug line = 98:7]
  br i1 %5, label %6, label %23, !dbg !37         ; [debug line = 98:7]

; <label>:6                                       ; preds = %3
  %7 = load i32** %1, align 8, !dbg !39           ; [#uses=1 type=i32*] [debug line = 99:5]
  %8 = load i32* %i, align 4, !dbg !39            ; [#uses=1 type=i32] [debug line = 99:5]
  %9 = sext i32 %8 to i64, !dbg !39               ; [#uses=1 type=i64] [debug line = 99:5]
  %10 = getelementptr inbounds i32* %7, i64 %9, !dbg !39 ; [#uses=1 type=i32*] [debug line = 99:5]
  %11 = getelementptr inbounds i32* %10, i64 1, !dbg !39 ; [#uses=1 type=i32*] [debug line = 99:5]
  %12 = load i32* %11, align 4, !dbg !39          ; [#uses=1 type=i32] [debug line = 99:5]
  %13 = load i32* @pointer_arith.acc, align 4, !dbg !39 ; [#uses=1 type=i32] [debug line = 99:5]
  %14 = add nsw i32 %13, %12, !dbg !39            ; [#uses=1 type=i32] [debug line = 99:5]
  store i32 %14, i32* @pointer_arith.acc, align 4, !dbg !39 ; [debug line = 99:5]
  %15 = load i32* @pointer_arith.acc, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 100:5]
  %16 = load i32** %1, align 8, !dbg !41          ; [#uses=1 type=i32*] [debug line = 100:5]
  %17 = load i32* %i, align 4, !dbg !41           ; [#uses=1 type=i32] [debug line = 100:5]
  %18 = sext i32 %17 to i64, !dbg !41             ; [#uses=1 type=i64] [debug line = 100:5]
  %19 = getelementptr inbounds i32* %16, i64 %18, !dbg !41 ; [#uses=1 type=i32*] [debug line = 100:5]
  store i32 %15, i32* %19, align 4, !dbg !41      ; [debug line = 100:5]
  br label %20, !dbg !42                          ; [debug line = 101:3]

; <label>:20                                      ; preds = %6
  %21 = load i32* %i, align 4, !dbg !43           ; [#uses=1 type=i32] [debug line = 98:15]
  %22 = add nsw i32 %21, 1, !dbg !43              ; [#uses=1 type=i32] [debug line = 98:15]
  store i32 %22, i32* %i, align 4, !dbg !43       ; [debug line = 98:15]
  br label %3, !dbg !43                           ; [debug line = 98:15]

; <label>:23                                      ; preds = %3
  ret void, !dbg !44                              ; [debug line = 102:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/pointer_arith.pragma.2.c", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !14} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"pointer_arith", metadata !"pointer_arith", metadata !"", metadata !6, i32 94, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @pointer_arith, null, null, metadata !12, i32 94} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"pointer_arith.c", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dio_t", metadata !6, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16, metadata !17, metadata !20, metadata !21, metadata !22}
!16 = metadata !{i32 786484, i32 0, metadata !5, metadata !"acc", metadata !"acc", metadata !"", metadata !6, i32 95, metadata !11, i32 1, i32 1, i32* @pointer_arith.acc} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !18, i32 315, metadata !19, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!18 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !18, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !18, i32 316, metadata !19, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !18, i32 317, metadata !19, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !23, i32 26, metadata !11, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith", null} ; [ DW_TAG_file_type ]
!24 = metadata !{void (i32*)* @pointer_arith, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"dio_t*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{i32 786689, metadata !5, metadata !"d", metadata !6, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 94, i32 28, metadata !5, null}
!33 = metadata !{i32 95, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 94, i32 31, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !6, i32 96, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 96, i32 7, metadata !34, null}
!37 = metadata !{i32 98, i32 7, metadata !38, null}
!38 = metadata !{i32 786443, metadata !34, i32 98, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 99, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 98, i32 20, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 100, i32 5, metadata !40, null}
!42 = metadata !{i32 101, i32 3, metadata !40, null}
!43 = metadata !{i32 98, i32 15, metadata !38, null}
!44 = metadata !{i32 102, i32 1, metadata !34, null}
