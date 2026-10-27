.class public final Lcom/abovevacant/epitaph/wire/TombstoneDecoder;
.super Ljava/lang/Object;
.source "TombstoneDecoder.java"


# static fields
.field private static final ARM_MTE_MEMORY_TAGS:I = 0x1

.field private static final CAUSE_HUMAN_READABLE:I = 0x1

.field private static final CAUSE_MEMORY_ERROR:I = 0x2

.field private static final CRASH_DETAIL_DATA:I = 0x2

.field private static final CRASH_DETAIL_NAME:I = 0x1

.field private static final FD_FD:I = 0x1

.field private static final FD_OWNER:I = 0x3

.field private static final FD_PATH:I = 0x2

.field private static final FD_TAG:I = 0x4

.field private static final FRAME_BUILD_ID:I = 0x8

.field private static final FRAME_FILE_MAP_OFFSET:I = 0x7

.field private static final FRAME_FILE_NAME:I = 0x6

.field private static final FRAME_FUNCTION_NAME:I = 0x4

.field private static final FRAME_FUNCTION_OFFSET:I = 0x5

.field private static final FRAME_PC:I = 0x2

.field private static final FRAME_REL_PC:I = 0x1

.field private static final FRAME_SP:I = 0x3

.field private static final HEAP_OBJECT_ADDRESS:I = 0x1

.field private static final HEAP_OBJECT_ALLOCATION_BACKTRACE:I = 0x4

.field private static final HEAP_OBJECT_ALLOCATION_TID:I = 0x3

.field private static final HEAP_OBJECT_DEALLOCATION_BACKTRACE:I = 0x6

.field private static final HEAP_OBJECT_DEALLOCATION_TID:I = 0x5

.field private static final HEAP_OBJECT_SIZE:I = 0x2

.field private static final LOG_BUFFER_LOGS:I = 0x2

.field private static final LOG_BUFFER_NAME:I = 0x1

.field private static final LOG_MESSAGE_MESSAGE:I = 0x6

.field private static final LOG_MESSAGE_PID:I = 0x2

.field private static final LOG_MESSAGE_PRIORITY:I = 0x4

.field private static final LOG_MESSAGE_TAG:I = 0x5

.field private static final LOG_MESSAGE_TID:I = 0x3

.field private static final LOG_MESSAGE_TIMESTAMP:I = 0x1

.field private static final MAPPING_BEGIN_ADDRESS:I = 0x1

.field private static final MAPPING_BUILD_ID:I = 0x8

.field private static final MAPPING_END_ADDRESS:I = 0x2

.field private static final MAPPING_EXECUTE:I = 0x6

.field private static final MAPPING_LOAD_BIAS:I = 0x9

.field private static final MAPPING_NAME:I = 0x7

.field private static final MAPPING_OFFSET:I = 0x3

.field private static final MAPPING_READ:I = 0x4

.field private static final MAPPING_WRITE:I = 0x5

.field private static final MAP_KEY:I = 0x1

.field private static final MAP_VALUE:I = 0x2

.field private static final MEMORY_DUMP_ARM_MTE_METADATA:I = 0x6

.field private static final MEMORY_DUMP_BEGIN_ADDRESS:I = 0x3

.field private static final MEMORY_DUMP_MAPPING_NAME:I = 0x2

.field private static final MEMORY_DUMP_MEMORY:I = 0x4

.field private static final MEMORY_DUMP_REGISTER_NAME:I = 0x1

.field private static final MEMORY_ERROR_HEAP:I = 0x3

.field private static final MEMORY_ERROR_TOOL:I = 0x1

.field private static final MEMORY_ERROR_TYPE:I = 0x2

.field private static final REGISTER_NAME:I = 0x1

.field private static final REGISTER_U64:I = 0x2

.field private static final SIGNAL_CODE:I = 0x3

.field private static final SIGNAL_CODE_NAME:I = 0x4

.field private static final SIGNAL_FAULT_ADDRESS:I = 0x9

.field private static final SIGNAL_FAULT_ADJACENT_METADATA:I = 0xa

.field private static final SIGNAL_HAS_FAULT_ADDRESS:I = 0x8

.field private static final SIGNAL_HAS_SENDER:I = 0x5

.field private static final SIGNAL_NAME:I = 0x2

.field private static final SIGNAL_NUMBER:I = 0x1

.field private static final SIGNAL_SENDER_PID:I = 0x7

.field private static final SIGNAL_SENDER_UID:I = 0x6

.field private static final STACK_HISTORY_BUFFER_ENTRIES:I = 0x2

.field private static final STACK_HISTORY_BUFFER_ENTRY_ADDR:I = 0x1

.field private static final STACK_HISTORY_BUFFER_ENTRY_FP:I = 0x2

.field private static final STACK_HISTORY_BUFFER_ENTRY_TAG:I = 0x3

.field private static final STACK_HISTORY_BUFFER_TID:I = 0x1

.field private static final THREAD_BACKTRACE_NOTE:I = 0x7

.field private static final THREAD_CURRENT_BACKTRACE:I = 0x4

.field private static final THREAD_ID:I = 0x1

.field private static final THREAD_MEMORY_DUMP:I = 0x5

.field private static final THREAD_NAME:I = 0x2

.field private static final THREAD_PAC_ENABLED_KEYS:I = 0x8

.field private static final THREAD_REGISTERS:I = 0x3

.field private static final THREAD_TAGGED_ADDR_CTRL:I = 0x6

.field private static final THREAD_UNREADABLE_ELF_FILES:I = 0x9

.field private static final TOMBSTONE_ABORT_MESSAGE:I = 0xe

.field private static final TOMBSTONE_ARCH:I = 0x1

.field private static final TOMBSTONE_BUILD_FINGERPRINT:I = 0x2

.field private static final TOMBSTONE_CAUSES:I = 0xf

.field private static final TOMBSTONE_COMMAND_LINE:I = 0x9

.field private static final TOMBSTONE_CRASH_DETAILS:I = 0x15

.field private static final TOMBSTONE_GUEST_ARCH:I = 0x18

.field private static final TOMBSTONE_GUEST_THREADS:I = 0x19

.field private static final TOMBSTONE_HAS_BEEN_16KB_MODE:I = 0x17

.field private static final TOMBSTONE_LOG_BUFFERS:I = 0x12

.field private static final TOMBSTONE_MEMORY_MAPPINGS:I = 0x11

.field private static final TOMBSTONE_OPEN_FDS:I = 0x13

.field private static final TOMBSTONE_PAGE_SIZE:I = 0x16

.field private static final TOMBSTONE_PID:I = 0x5

.field private static final TOMBSTONE_PROCESS_UPTIME:I = 0x14

.field private static final TOMBSTONE_REVISION:I = 0x3

.field private static final TOMBSTONE_SELINUX_LABEL:I = 0x8

.field private static final TOMBSTONE_SIGNAL_INFO:I = 0xa

.field private static final TOMBSTONE_STACK_HISTORY_BUFFER:I = 0x1a

.field private static final TOMBSTONE_THREADS:I = 0x10

.field private static final TOMBSTONE_TID:I = 0x6

.field private static final TOMBSTONE_TIMESTAMP:I = 0x4

.field private static final TOMBSTONE_UID:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Tombstone;
    .locals 35
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    .line 192
    .local v0, "arch":Lcom/abovevacant/epitaph/core/Architecture;
    sget-object v1, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    .line 193
    .local v1, "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    const-string v2, ""

    .line 194
    .local v2, "buildFingerprint":Ljava/lang/String;
    const-string v3, ""

    .line 195
    .local v3, "revision":Ljava/lang/String;
    const-string v4, ""

    .line 196
    .local v4, "timestamp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 197
    .local v5, "pid":I
    const/4 v6, 0x0

    .line 198
    .local v6, "tid":I
    const/4 v7, 0x0

    .line 199
    .local v7, "uid":I
    const-string v8, ""

    .line 200
    .local v8, "selinuxLabel":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v9, "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 202
    .local v10, "processUptime":I
    const/4 v11, 0x0

    .line 203
    .local v11, "signal":Lcom/abovevacant/epitaph/core/Signal;
    const-string v12, ""

    .line 204
    .local v12, "abortMessage":Ljava/lang/String;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v24

    .line 205
    .local v13, "crashDetails":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/CrashDetail;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v25

    .line 206
    .local v14, "causes":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Cause;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v15, v26

    .line 207
    .local v15, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v27

    .line 208
    .local v16, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v28

    .line 209
    .local v17, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v29

    .line 210
    .local v18, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v30

    .line 211
    .local v19, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    const/16 v20, 0x0

    .line 212
    .local v20, "pageSize":I
    const/16 v21, 0x0

    .line 213
    .local v21, "hasBeen16kbMode":Z
    const/16 v22, 0x0

    move-object/from16 v23, v12

    move/from16 v31, v20

    move/from16 v32, v21

    move-object/from16 v33, v22

    move-object v12, v1

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object v11, v0

    .line 216
    .end local v0    # "arch":Lcom/abovevacant/epitaph/core/Architecture;
    .end local v1    # "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    .end local v10    # "processUptime":I
    .end local v20    # "pageSize":I
    .local v11, "arch":Lcom/abovevacant/epitaph/core/Architecture;
    .local v12, "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    .local v21, "processUptime":I
    .local v22, "signal":Lcom/abovevacant/epitaph/core/Signal;
    .local v23, "abortMessage":Ljava/lang/String;
    .local v31, "pageSize":I
    .local v32, "hasBeen16kbMode":Z
    .local v33, "stackHistoryBuffer":Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 217
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 218
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v10

    .line 220
    .local v10, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 314
    :pswitch_0
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .local v20, "buildFingerprint":Ljava/lang/String;
    .local v27, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v29, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .local v30, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v34, "tag":I
    move-object/from16 v1, p0

    invoke-virtual {v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto/16 :goto_1

    .line 310
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_1
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeStackHistoryBuffer(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

    move-result-object v20

    .line 312
    .end local v33    # "stackHistoryBuffer":Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    .local v20, "stackHistoryBuffer":Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    move/from16 v34, v1

    move-object/from16 v27, v16

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v33, v20

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 286
    .end local v20    # "stackHistoryBuffer":Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    .restart local v33    # "stackHistoryBuffer":Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    :pswitch_2
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 287
    move/from16 v34, v1

    .end local v1    # "tag":I
    .restart local v34    # "tag":I
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v20, "buildFingerprint":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeThreadMapEntry(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/Map;)V

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    goto/16 :goto_1

    .line 226
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    :pswitch_3
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/core/Architecture;->fromValue(I)Lcom/abovevacant/epitaph/core/Architecture;

    move-result-object v1

    .line 228
    .end local v12    # "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    .local v1, "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    move-object v12, v1

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 306
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v12    # "guestArch":Lcom/abovevacant/epitaph/core/Architecture;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    :pswitch_4
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v1

    .line 308
    .end local v32    # "hasBeen16kbMode":Z
    .local v1, "hasBeen16kbMode":Z
    move/from16 v32, v1

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 302
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v32    # "hasBeen16kbMode":Z
    :pswitch_5
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    .line 304
    .end local v31    # "pageSize":I
    .local v1, "pageSize":I
    move/from16 v31, v1

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 274
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v31    # "pageSize":I
    :pswitch_6
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeCrashDetail(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/CrashDetail;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    goto/16 :goto_1

    .line 262
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    :pswitch_7
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    .line 264
    .end local v21    # "processUptime":I
    .local v1, "processUptime":I
    move/from16 v21, v1

    move-object/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 298
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v21    # "processUptime":I
    :pswitch_8
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v2, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeFD(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/FD;

    move-result-object v1

    move-object/from16 v27, v2

    move-object/from16 v2, v19

    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    move-object/from16 v1, p0

    move-object/from16 v30, v2

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    goto/16 :goto_1

    .line 294
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_9
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeLogBuffer(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/LogBuffer;

    move-result-object v1

    move-object/from16 v30, v2

    move-object/from16 v2, v18

    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .local v2, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v1, p0

    move-object/from16 v29, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 290
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_a
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeMemoryMapping(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryMapping;

    move-result-object v1

    move-object/from16 v29, v2

    move-object/from16 v2, v17

    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 282
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_b
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeThreadMapEntry(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/Map;)V

    .line 284
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 278
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_c
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeCause(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Cause;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 270
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_d
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .end local v23    # "abortMessage":Ljava/lang/String;
    .local v1, "abortMessage":Ljava/lang/String;
    move-object/from16 v23, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 266
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v23    # "abortMessage":Ljava/lang/String;
    :pswitch_e
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeSignal(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Signal;

    move-result-object v1

    .line 268
    .end local v22    # "signal":Lcom/abovevacant/epitaph/core/Signal;
    .local v1, "signal":Lcom/abovevacant/epitaph/core/Signal;
    move-object/from16 v22, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 258
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v22    # "signal":Lcom/abovevacant/epitaph/core/Signal;
    :pswitch_f
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 254
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .restart local v1    # "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_10
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .end local v8    # "selinuxLabel":Ljava/lang/String;
    .local v1, "selinuxLabel":Ljava/lang/String;
    move-object v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 250
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v8    # "selinuxLabel":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_11
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    .line 252
    .end local v7    # "uid":I
    .local v1, "uid":I
    move v7, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 246
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_12
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    .line 248
    .end local v6    # "tid":I
    .local v1, "tid":I
    move v6, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 242
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v6    # "tid":I
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_13
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    .line 244
    .end local v5    # "pid":I
    .local v1, "pid":I
    move v5, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 238
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v5    # "pid":I
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_14
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .end local v4    # "timestamp":Ljava/lang/String;
    .local v1, "timestamp":Ljava/lang/String;
    move-object v4, v1

    move-object/from16 v1, p0

    goto :goto_1

    .line 234
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v4    # "timestamp":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_15
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .end local v3    # "revision":Ljava/lang/String;
    .local v1, "revision":Ljava/lang/String;
    move-object v3, v1

    move-object/from16 v1, p0

    goto :goto_1

    .line 230
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "revision":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_16
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .local v1, "buildFingerprint":Ljava/lang/String;
    move-object/from16 v20, v1

    move-object/from16 v1, p0

    goto :goto_1

    .line 222
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :pswitch_17
    move/from16 v34, v1

    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v1    # "tag":I
    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .restart local v34    # "tag":I
    invoke-static {v0, v10}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v1

    invoke-static {v1}, Lcom/abovevacant/epitaph/core/Architecture;->fromValue(I)Lcom/abovevacant/epitaph/core/Architecture;

    move-result-object v1

    .line 224
    .end local v11    # "arch":Lcom/abovevacant/epitaph/core/Architecture;
    .local v1, "arch":Lcom/abovevacant/epitaph/core/Architecture;
    move-object v11, v1

    move-object/from16 v1, p0

    .line 317
    .end local v0    # "fieldNumber":I
    .end local v1    # "arch":Lcom/abovevacant/epitaph/core/Architecture;
    .end local v10    # "wireType":I
    .restart local v11    # "arch":Lcom/abovevacant/epitaph/core/Architecture;
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v2, v20

    move-object/from16 v16, v27

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    goto/16 :goto_0

    .line 319
    .end local v20    # "buildFingerprint":Ljava/lang/String;
    .end local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .end local v34    # "tag":I
    .local v1, "tag":I
    .local v2, "buildFingerprint":Ljava/lang/String;
    .restart local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v27, v16

    move-object/from16 v2, v17

    move-object/from16 v29, v18

    move-object/from16 v30, v19

    .end local v16    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v17    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v18    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .end local v19    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    .local v2, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v20    # "buildFingerprint":Ljava/lang/String;
    .restart local v27    # "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .restart local v29    # "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .restart local v30    # "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    new-instance v10, Lcom/abovevacant/epitaph/core/Tombstone;

    move-object/from16 v28, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v13, v20

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v20, v9

    .end local v2    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .end local v3    # "revision":Ljava/lang/String;
    .end local v4    # "timestamp":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    .end local v7    # "uid":I
    .end local v8    # "selinuxLabel":Ljava/lang/String;
    .end local v9    # "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "buildFingerprint":Ljava/lang/String;
    .local v14, "revision":Ljava/lang/String;
    .local v15, "timestamp":Ljava/lang/String;
    .local v16, "pid":I
    .local v17, "tid":I
    .local v18, "uid":I
    .local v19, "selinuxLabel":Ljava/lang/String;
    .local v20, "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "crashDetails":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/CrashDetail;>;"
    .local v25, "causes":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Cause;>;"
    .local v26, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local v28, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    invoke-direct/range {v10 .. v33}, Lcom/abovevacant/epitaph/core/Tombstone;-><init>(Lcom/abovevacant/epitaph/core/Architecture;Lcom/abovevacant/epitaph/core/Architecture;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;ILcom/abovevacant/epitaph/core/Signal;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZLcom/abovevacant/epitaph/core/StackHistoryBuffer;)V

    .end local v28    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .restart local v2    # "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static decode(Ljava/io/InputStream;)Lcom/abovevacant/epitaph/core/Tombstone;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lcom/abovevacant/epitaph/io/WireReader;->fromInputStream(Ljava/io/InputStream;)Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v0

    invoke-static {v0}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decode(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Tombstone;

    move-result-object v0

    return-object v0
.end method

.method public static decode([B)Lcom/abovevacant/epitaph/core/Tombstone;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/abovevacant/epitaph/io/WireReader;

    invoke-direct {v0, p0}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([B)V

    invoke-static {v0}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decode(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Tombstone;

    move-result-object v0

    return-object v0
.end method

.method static decodeArmMTEMetadata(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    .locals 4
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 717
    .local v0, "memoryTags":[B
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v1

    move v2, v1

    .local v2, "tag":I
    if-eqz v1, :cond_0

    .line 718
    invoke-static {v2}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v1

    .line 719
    .local v1, "fieldNumber":I
    invoke-static {v2}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v3

    .line 722
    .local v3, "wireType":I
    packed-switch v1, :pswitch_data_0

    .line 728
    invoke-virtual {p0, v3}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 724
    :pswitch_0
    invoke-static {v1, v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 725
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v0

    .line 726
    nop

    .line 731
    .end local v1    # "fieldNumber":I
    .end local v3    # "wireType":I
    :goto_1
    goto :goto_0

    .line 733
    :cond_0
    new-instance v1, Lcom/abovevacant/epitaph/core/ArmMTEMetadata;

    invoke-direct {v1, v0}, Lcom/abovevacant/epitaph/core/ArmMTEMetadata;-><init>([B)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeBacktraceFrame(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .locals 27
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    const-wide/16 v0, 0x0

    .line 525
    .local v0, "relPc":J
    const-wide/16 v2, 0x0

    .line 526
    .local v2, "pc":J
    const-wide/16 v4, 0x0

    .line 527
    .local v4, "sp":J
    const-string v6, ""

    .line 528
    .local v6, "functionName":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 529
    .local v7, "functionOffset":J
    const-string v9, ""

    .line 530
    .local v9, "fileName":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 531
    .local v10, "fileMapOffset":J
    const-string v12, ""

    move-wide v14, v0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    .line 534
    .end local v0    # "relPc":J
    .end local v2    # "pc":J
    .end local v4    # "sp":J
    .end local v6    # "functionName":Ljava/lang/String;
    .end local v7    # "functionOffset":J
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileMapOffset":J
    .local v14, "relPc":J
    .local v16, "pc":J
    .local v18, "sp":J
    .local v20, "functionName":Ljava/lang/String;
    .local v21, "functionOffset":J
    .local v23, "fileName":Ljava/lang/String;
    .local v24, "fileMapOffset":J
    .local v26, "buildId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 535
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 536
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 538
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 572
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto/16 :goto_1

    .line 568
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 570
    .end local v26    # "buildId":Ljava/lang/String;
    .local v3, "buildId":Ljava/lang/String;
    move-object/from16 v26, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 564
    .end local v3    # "buildId":Ljava/lang/String;
    .restart local v26    # "buildId":Ljava/lang/String;
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 566
    .end local v24    # "fileMapOffset":J
    .local v3, "fileMapOffset":J
    move-wide/from16 v24, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 560
    .end local v3    # "fileMapOffset":J
    .restart local v24    # "fileMapOffset":J
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 562
    .end local v23    # "fileName":Ljava/lang/String;
    .local v3, "fileName":Ljava/lang/String;
    move-object/from16 v23, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 556
    .end local v3    # "fileName":Ljava/lang/String;
    .restart local v23    # "fileName":Ljava/lang/String;
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 558
    .end local v21    # "functionOffset":J
    .local v3, "functionOffset":J
    move-wide/from16 v21, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 552
    .end local v3    # "functionOffset":J
    .restart local v21    # "functionOffset":J
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .end local v20    # "functionName":Ljava/lang/String;
    .local v3, "functionName":Ljava/lang/String;
    move-object/from16 v20, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 548
    .end local v3    # "functionName":Ljava/lang/String;
    .restart local v20    # "functionName":Ljava/lang/String;
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 550
    .end local v18    # "sp":J
    .local v3, "sp":J
    move-wide/from16 v18, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 544
    .end local v3    # "sp":J
    .restart local v18    # "sp":J
    :pswitch_6
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 546
    .end local v16    # "pc":J
    .local v3, "pc":J
    move-wide/from16 v16, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 540
    .end local v3    # "pc":J
    .restart local v16    # "pc":J
    :pswitch_7
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 542
    .end local v14    # "relPc":J
    .local v3, "relPc":J
    move-wide v14, v3

    move-object/from16 v3, p0

    .line 575
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "relPc":J
    .restart local v14    # "relPc":J
    :goto_1
    goto :goto_0

    .line 577
    :cond_0
    move-object/from16 v3, p0

    new-instance v13, Lcom/abovevacant/epitaph/core/BacktraceFrame;

    invoke-direct/range {v13 .. v26}, Lcom/abovevacant/epitaph/core/BacktraceFrame;-><init>(JJJLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeCause(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Cause;
    .locals 6
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    const-string v0, ""

    .line 738
    .local v0, "humanReadable":Ljava/lang/String;
    const/4 v1, 0x0

    .line 741
    .local v1, "memoryError":Lcom/abovevacant/epitaph/core/MemoryError;
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v2

    move v3, v2

    .local v3, "tag":I
    if-eqz v2, :cond_0

    .line 742
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v2

    .line 743
    .local v2, "fieldNumber":I
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v4

    .line 745
    .local v4, "wireType":I
    packed-switch v2, :pswitch_data_0

    .line 755
    invoke-virtual {p0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 751
    :pswitch_0
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 752
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v5

    invoke-static {v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeMemoryError(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryError;

    move-result-object v1

    .line 753
    goto :goto_1

    .line 747
    :pswitch_1
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 748
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    nop

    .line 758
    .end local v2    # "fieldNumber":I
    .end local v4    # "wireType":I
    :goto_1
    goto :goto_0

    .line 760
    :cond_0
    new-instance v2, Lcom/abovevacant/epitaph/core/Cause;

    invoke-direct {v2, v0, v1}, Lcom/abovevacant/epitaph/core/Cause;-><init>(Ljava/lang/String;Lcom/abovevacant/epitaph/core/MemoryError;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeCrashDetail(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/CrashDetail;
    .locals 5
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 956
    .local v1, "name":[B
    new-array v0, v0, [B

    .line 959
    .local v0, "data":[B
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v2

    move v3, v2

    .local v3, "tag":I
    if-eqz v2, :cond_0

    .line 960
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v2

    .line 961
    .local v2, "fieldNumber":I
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v4

    .line 963
    .local v4, "wireType":I
    packed-switch v2, :pswitch_data_0

    .line 973
    invoke-virtual {p0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 969
    :pswitch_0
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 970
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v0

    .line 971
    goto :goto_1

    .line 965
    :pswitch_1
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 966
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v1

    .line 967
    nop

    .line 976
    .end local v2    # "fieldNumber":I
    .end local v4    # "wireType":I
    :goto_1
    goto :goto_0

    .line 978
    :cond_0
    new-instance v2, Lcom/abovevacant/epitaph/core/CrashDetail;

    invoke-direct {v2, v1, v0}, Lcom/abovevacant/epitaph/core/CrashDetail;-><init>([B[B)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeFD(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/FD;
    .locals 11
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "fd":I
    const-string v1, ""

    .line 846
    .local v1, "path":Ljava/lang/String;
    const-string v2, ""

    .line 847
    .local v2, "owner":Ljava/lang/String;
    const-wide/16 v3, 0x0

    move v6, v0

    move-object v7, v1

    move-object v8, v2

    move-wide v9, v3

    .line 850
    .end local v0    # "fd":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "owner":Ljava/lang/String;
    .local v6, "fd":I
    .local v7, "path":Ljava/lang/String;
    .local v8, "owner":Ljava/lang/String;
    .local v9, "tag":J
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "wireTag":I
    if-eqz v0, :cond_0

    .line 851
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 852
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 854
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 872
    invoke-virtual {p0, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 868
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 869
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 870
    .end local v9    # "tag":J
    .local v3, "tag":J
    move-wide v9, v3

    goto :goto_1

    .line 864
    .end local v3    # "tag":J
    .restart local v9    # "tag":J
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 865
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 866
    .end local v8    # "owner":Ljava/lang/String;
    .local v3, "owner":Ljava/lang/String;
    move-object v8, v3

    goto :goto_1

    .line 860
    .end local v3    # "owner":Ljava/lang/String;
    .restart local v8    # "owner":Ljava/lang/String;
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 861
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 862
    .end local v7    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    move-object v7, v3

    goto :goto_1

    .line 856
    .end local v3    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 857
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 858
    .end local v6    # "fd":I
    .local v3, "fd":I
    move v6, v3

    .line 875
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "fd":I
    .restart local v6    # "fd":I
    :goto_1
    goto :goto_0

    .line 877
    :cond_0
    new-instance v5, Lcom/abovevacant/epitaph/core/FD;

    invoke-direct/range {v5 .. v10}, Lcom/abovevacant/epitaph/core/FD;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeHeapObject(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/HeapObject;
    .locals 18
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    const-wide/16 v0, 0x0

    .line 797
    .local v0, "address":J
    const-wide/16 v2, 0x0

    .line 798
    .local v2, "size":J
    const-wide/16 v4, 0x0

    .line 799
    .local v4, "allocationTid":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    .line 800
    .local v14, "allocationBacktrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    const-wide/16 v6, 0x0

    .line 801
    .local v6, "deallocationTid":J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v17

    move-wide v10, v2

    move-wide v12, v4

    move-wide v15, v6

    .line 804
    .end local v2    # "size":J
    .end local v4    # "allocationTid":J
    .end local v6    # "deallocationTid":J
    .local v8, "deallocationBacktrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    .local v10, "size":J
    .local v12, "allocationTid":J
    .local v15, "deallocationTid":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v2

    move v3, v2

    .local v3, "tag":I
    if-eqz v2, :cond_0

    .line 805
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v2

    .line 806
    .local v2, "fieldNumber":I
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v4

    .line 808
    .local v4, "wireType":I
    packed-switch v2, :pswitch_data_0

    .line 834
    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 830
    :pswitch_0
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v5

    invoke-static {v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeBacktraceFrame(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    move-object/from16 v5, p0

    goto :goto_1

    .line 826
    :pswitch_1
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v5

    .line 828
    .end local v15    # "deallocationTid":J
    .local v5, "deallocationTid":J
    move-wide v15, v5

    move-object/from16 v5, p0

    goto :goto_1

    .line 822
    .end local v5    # "deallocationTid":J
    .restart local v15    # "deallocationTid":J
    :pswitch_2
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v5

    invoke-static {v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeBacktraceFrame(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    move-object/from16 v5, p0

    goto :goto_1

    .line 818
    :pswitch_3
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v5

    .line 820
    .end local v12    # "allocationTid":J
    .local v5, "allocationTid":J
    move-wide v12, v5

    move-object/from16 v5, p0

    goto :goto_1

    .line 814
    .end local v5    # "allocationTid":J
    .restart local v12    # "allocationTid":J
    :pswitch_4
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v5

    .line 816
    .end local v10    # "size":J
    .local v5, "size":J
    move-wide v10, v5

    move-object/from16 v5, p0

    goto :goto_1

    .line 810
    .end local v5    # "size":J
    .restart local v10    # "size":J
    :pswitch_5
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v0

    .line 812
    move-object/from16 v5, p0

    .line 837
    .end local v2    # "fieldNumber":I
    .end local v4    # "wireType":I
    :goto_1
    goto :goto_0

    .line 839
    :cond_0
    move-object/from16 v5, p0

    new-instance v7, Lcom/abovevacant/epitaph/core/HeapObject;

    move-object/from16 v17, v8

    move-wide v8, v0

    .end local v0    # "address":J
    .local v8, "address":J
    .local v17, "deallocationBacktrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    invoke-direct/range {v7 .. v17}, Lcom/abovevacant/epitaph/core/HeapObject;-><init>(JJJLjava/util/List;JLjava/util/List;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeLogBuffer(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/LogBuffer;
    .locals 6
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    const-string v0, ""

    .line 882
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogMessage;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v2

    move v3, v2

    .local v3, "tag":I
    if-eqz v2, :cond_0

    .line 886
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v2

    .line 887
    .local v2, "fieldNumber":I
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v4

    .line 889
    .local v4, "wireType":I
    packed-switch v2, :pswitch_data_0

    .line 899
    invoke-virtual {p0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 895
    :pswitch_0
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 896
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v5

    invoke-static {v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeLogMessage(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/LogMessage;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    goto :goto_1

    .line 891
    :pswitch_1
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 892
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 893
    nop

    .line 902
    .end local v2    # "fieldNumber":I
    .end local v4    # "wireType":I
    :goto_1
    goto :goto_0

    .line 904
    :cond_0
    new-instance v2, Lcom/abovevacant/epitaph/core/LogBuffer;

    invoke-direct {v2, v0, v1}, Lcom/abovevacant/epitaph/core/LogBuffer;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeLogMessage(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/LogMessage;
    .locals 13
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    const-string v0, ""

    .line 909
    .local v0, "timestamp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 910
    .local v1, "pid":I
    const/4 v2, 0x0

    .line 911
    .local v2, "tid":I
    const/4 v3, 0x0

    .line 912
    .local v3, "priority":I
    const-string v4, ""

    .line 913
    .local v4, "tag":Ljava/lang/String;
    const-string v5, ""

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    .line 916
    .end local v0    # "timestamp":Ljava/lang/String;
    .end local v1    # "pid":I
    .end local v2    # "tid":I
    .end local v3    # "priority":I
    .end local v4    # "tag":Ljava/lang/String;
    .local v7, "timestamp":Ljava/lang/String;
    .local v8, "pid":I
    .local v9, "tid":I
    .local v10, "priority":I
    .local v11, "tag":Ljava/lang/String;
    .local v12, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "wireTag":I
    if-eqz v0, :cond_0

    .line 917
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 918
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 920
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 946
    invoke-virtual {p0, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 942
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 943
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 944
    .end local v12    # "message":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    move-object v12, v3

    goto :goto_1

    .line 938
    .end local v3    # "message":Ljava/lang/String;
    .restart local v12    # "message":Ljava/lang/String;
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 939
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 940
    .end local v11    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    move-object v11, v3

    goto :goto_1

    .line 934
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 935
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 936
    .end local v10    # "priority":I
    .local v3, "priority":I
    move v10, v3

    goto :goto_1

    .line 930
    .end local v3    # "priority":I
    .restart local v10    # "priority":I
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 931
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 932
    .end local v9    # "tid":I
    .local v3, "tid":I
    move v9, v3

    goto :goto_1

    .line 926
    .end local v3    # "tid":I
    .restart local v9    # "tid":I
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 927
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 928
    .end local v8    # "pid":I
    .local v3, "pid":I
    move v8, v3

    goto :goto_1

    .line 922
    .end local v3    # "pid":I
    .restart local v8    # "pid":I
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 923
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 924
    .end local v7    # "timestamp":Ljava/lang/String;
    .local v3, "timestamp":Ljava/lang/String;
    move-object v7, v3

    .line 949
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "timestamp":Ljava/lang/String;
    .restart local v7    # "timestamp":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 951
    :cond_0
    new-instance v6, Lcom/abovevacant/epitaph/core/LogMessage;

    invoke-direct/range {v6 .. v12}, Lcom/abovevacant/epitaph/core/LogMessage;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeMemoryDump(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;
    .locals 13
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    const-string v0, ""

    .line 673
    .local v0, "registerName":Ljava/lang/String;
    const-string v1, ""

    .line 674
    .local v1, "mappingName":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 675
    .local v2, "beginAddress":J
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 676
    .local v4, "memory":[B
    const/4 v5, 0x0

    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-object v11, v4

    move-object v12, v5

    .line 679
    .end local v0    # "registerName":Ljava/lang/String;
    .end local v1    # "mappingName":Ljava/lang/String;
    .end local v2    # "beginAddress":J
    .end local v4    # "memory":[B
    .local v7, "registerName":Ljava/lang/String;
    .local v8, "mappingName":Ljava/lang/String;
    .local v9, "beginAddress":J
    .local v11, "memory":[B
    .local v12, "armMteMetadata":Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 680
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 681
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 683
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 705
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 701
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 702
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeArmMTEMetadata(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/ArmMTEMetadata;

    move-result-object v3

    .line 703
    .end local v12    # "armMteMetadata":Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    .local v3, "armMteMetadata":Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    move-object v12, v3

    goto :goto_1

    .line 697
    .end local v3    # "armMteMetadata":Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    .restart local v12    # "armMteMetadata":Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 698
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v3

    .line 699
    .end local v11    # "memory":[B
    .local v3, "memory":[B
    move-object v11, v3

    goto :goto_1

    .line 693
    .end local v3    # "memory":[B
    .restart local v11    # "memory":[B
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 694
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 695
    .end local v9    # "beginAddress":J
    .local v3, "beginAddress":J
    move-wide v9, v3

    goto :goto_1

    .line 689
    .end local v3    # "beginAddress":J
    .restart local v9    # "beginAddress":J
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 690
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .end local v8    # "mappingName":Ljava/lang/String;
    .local v3, "mappingName":Ljava/lang/String;
    move-object v8, v3

    goto :goto_1

    .line 685
    .end local v3    # "mappingName":Ljava/lang/String;
    .restart local v8    # "mappingName":Ljava/lang/String;
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 686
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .end local v7    # "registerName":Ljava/lang/String;
    .local v3, "registerName":Ljava/lang/String;
    move-object v7, v3

    .line 708
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "registerName":Ljava/lang/String;
    .restart local v7    # "registerName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 710
    :cond_0
    new-instance v6, Lcom/abovevacant/epitaph/core/MemoryDump;

    invoke-direct/range {v6 .. v12}, Lcom/abovevacant/epitaph/core/MemoryDump;-><init>(Ljava/lang/String;Ljava/lang/String;J[BLcom/abovevacant/epitaph/core/ArmMTEMetadata;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static decodeMemoryError(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryError;
    .locals 7
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->GWP_ASAN:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 765
    .local v0, "tool":Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    sget-object v1, Lcom/abovevacant/epitaph/core/MemoryError$Type;->UNKNOWN:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 766
    .local v1, "type":Lcom/abovevacant/epitaph/core/MemoryError$Type;
    const/4 v2, 0x0

    .line 769
    .local v2, "heap":Lcom/abovevacant/epitaph/core/HeapObject;
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v3

    move v4, v3

    .local v4, "tag":I
    if-eqz v3, :cond_0

    .line 770
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v3

    .line 771
    .local v3, "fieldNumber":I
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v5

    .line 773
    .local v5, "wireType":I
    packed-switch v3, :pswitch_data_0

    .line 787
    invoke-virtual {p0, v5}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 783
    :pswitch_0
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 784
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v6

    invoke-static {v6}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeHeapObject(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/HeapObject;

    move-result-object v2

    .line 785
    goto :goto_1

    .line 779
    :pswitch_1
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 780
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v6

    invoke-static {v6}, Lcom/abovevacant/epitaph/core/MemoryError$Type;->fromValue(I)Lcom/abovevacant/epitaph/core/MemoryError$Type;

    move-result-object v1

    .line 781
    goto :goto_1

    .line 775
    :pswitch_2
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 776
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v6

    invoke-static {v6}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->fromValue(I)Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    move-result-object v0

    .line 777
    nop

    .line 790
    .end local v3    # "fieldNumber":I
    .end local v5    # "wireType":I
    :goto_1
    goto :goto_0

    .line 792
    :cond_0
    new-instance v3, Lcom/abovevacant/epitaph/core/MemoryError;

    invoke-direct {v3, v0, v1, v2}, Lcom/abovevacant/epitaph/core/MemoryError;-><init>(Lcom/abovevacant/epitaph/core/MemoryError$Tool;Lcom/abovevacant/epitaph/core/MemoryError$Type;Lcom/abovevacant/epitaph/core/HeapObject;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeMemoryMapping(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryMapping;
    .locals 27
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    const-wide/16 v0, 0x0

    .line 610
    .local v0, "beginAddress":J
    const-wide/16 v2, 0x0

    .line 611
    .local v2, "endAddress":J
    const-wide/16 v4, 0x0

    .line 612
    .local v4, "offset":J
    const/4 v6, 0x0

    .line 613
    .local v6, "read":Z
    const/4 v7, 0x0

    .line 614
    .local v7, "write":Z
    const/4 v8, 0x0

    .line 615
    .local v8, "execute":Z
    const-string v9, ""

    .line 616
    .local v9, "mappingName":Ljava/lang/String;
    const-string v10, ""

    .line 617
    .local v10, "buildId":Ljava/lang/String;
    const-wide/16 v11, 0x0

    move-wide v14, v0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v25, v11

    .line 620
    .end local v0    # "beginAddress":J
    .end local v2    # "endAddress":J
    .end local v4    # "offset":J
    .end local v6    # "read":Z
    .end local v7    # "write":Z
    .end local v8    # "execute":Z
    .end local v9    # "mappingName":Ljava/lang/String;
    .end local v10    # "buildId":Ljava/lang/String;
    .local v14, "beginAddress":J
    .local v16, "endAddress":J
    .local v18, "offset":J
    .local v20, "read":Z
    .local v21, "write":Z
    .local v22, "execute":Z
    .local v23, "mappingName":Ljava/lang/String;
    .local v24, "buildId":Ljava/lang/String;
    .local v25, "loadBias":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 621
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 622
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 624
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 662
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto/16 :goto_1

    .line 658
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 660
    .end local v25    # "loadBias":J
    .local v3, "loadBias":J
    move-wide/from16 v25, v3

    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 654
    .end local v3    # "loadBias":J
    .restart local v25    # "loadBias":J
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 656
    .end local v24    # "buildId":Ljava/lang/String;
    .local v3, "buildId":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 650
    .end local v3    # "buildId":Ljava/lang/String;
    .restart local v24    # "buildId":Ljava/lang/String;
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 652
    .end local v23    # "mappingName":Ljava/lang/String;
    .local v3, "mappingName":Ljava/lang/String;
    move-object/from16 v23, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 646
    .end local v3    # "mappingName":Ljava/lang/String;
    .restart local v23    # "mappingName":Ljava/lang/String;
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v3

    .line 648
    .end local v22    # "execute":Z
    .local v3, "execute":Z
    move/from16 v22, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 642
    .end local v3    # "execute":Z
    .restart local v22    # "execute":Z
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v3

    .line 644
    .end local v21    # "write":Z
    .local v3, "write":Z
    move/from16 v21, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 638
    .end local v3    # "write":Z
    .restart local v21    # "write":Z
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v3

    .line 640
    .end local v20    # "read":Z
    .local v3, "read":Z
    move/from16 v20, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 634
    .end local v3    # "read":Z
    .restart local v20    # "read":Z
    :pswitch_6
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 636
    .end local v18    # "offset":J
    .local v3, "offset":J
    move-wide/from16 v18, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 630
    .end local v3    # "offset":J
    .restart local v18    # "offset":J
    :pswitch_7
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 632
    .end local v16    # "endAddress":J
    .local v3, "endAddress":J
    move-wide/from16 v16, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 626
    .end local v3    # "endAddress":J
    .restart local v16    # "endAddress":J
    :pswitch_8
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 628
    .end local v14    # "beginAddress":J
    .local v3, "beginAddress":J
    move-wide v14, v3

    move-object/from16 v3, p0

    .line 665
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "beginAddress":J
    .restart local v14    # "beginAddress":J
    :goto_1
    goto/16 :goto_0

    .line 667
    :cond_0
    move-object/from16 v3, p0

    new-instance v13, Lcom/abovevacant/epitaph/core/MemoryMapping;

    invoke-direct/range {v13 .. v26}, Lcom/abovevacant/epitaph/core/MemoryMapping;-><init>(JJJZZZLjava/lang/String;Ljava/lang/String;J)V

    return-object v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeRegister(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Register;
    .locals 6
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    const-string v0, ""

    .line 583
    .local v0, "name":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 586
    .local v1, "value":J
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v3

    move v4, v3

    .local v4, "tag":I
    if-eqz v3, :cond_0

    .line 587
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v3

    .line 588
    .local v3, "fieldNumber":I
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v5

    .line 590
    .local v5, "wireType":I
    packed-switch v3, :pswitch_data_0

    .line 600
    invoke-virtual {p0, v5}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 596
    :pswitch_0
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 597
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v1

    .line 598
    goto :goto_1

    .line 592
    :pswitch_1
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 593
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 594
    nop

    .line 603
    .end local v3    # "fieldNumber":I
    .end local v5    # "wireType":I
    :goto_1
    goto :goto_0

    .line 605
    :cond_0
    new-instance v3, Lcom/abovevacant/epitaph/core/Register;

    invoke-direct {v3, v0, v1, v2}, Lcom/abovevacant/epitaph/core/Register;-><init>(Ljava/lang/String;J)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeSignal(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Signal;
    .locals 23
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "number":I
    const-string v1, ""

    .line 348
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 349
    .local v2, "code":I
    const-string v3, ""

    .line 350
    .local v3, "codeName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 351
    .local v4, "hasSender":Z
    const/4 v5, 0x0

    .line 352
    .local v5, "senderUid":I
    const/4 v6, 0x0

    .line 353
    .local v6, "senderPid":I
    const/4 v7, 0x0

    .line 354
    .local v7, "hasFaultAddress":Z
    const-wide/16 v8, 0x0

    .line 355
    .local v8, "faultAddress":J
    const/4 v10, 0x0

    move v12, v0

    move-object v13, v1

    move v14, v2

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-wide/from16 v20, v8

    move-object/from16 v22, v10

    .line 358
    .end local v0    # "number":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v3    # "codeName":Ljava/lang/String;
    .end local v4    # "hasSender":Z
    .end local v5    # "senderUid":I
    .end local v6    # "senderPid":I
    .end local v7    # "hasFaultAddress":Z
    .end local v8    # "faultAddress":J
    .local v12, "number":I
    .local v13, "name":Ljava/lang/String;
    .local v14, "code":I
    .local v15, "codeName":Ljava/lang/String;
    .local v16, "hasSender":Z
    .local v17, "senderUid":I
    .local v18, "senderPid":I
    .local v19, "hasFaultAddress":Z
    .local v20, "faultAddress":J
    .local v22, "faultAdjacentMetadata":Lcom/abovevacant/epitaph/core/MemoryDump;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 359
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 360
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 362
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 404
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto/16 :goto_1

    .line 400
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeMemoryDump(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;

    move-result-object v3

    .line 402
    .end local v22    # "faultAdjacentMetadata":Lcom/abovevacant/epitaph/core/MemoryDump;
    .local v3, "faultAdjacentMetadata":Lcom/abovevacant/epitaph/core/MemoryDump;
    move-object/from16 v22, v3

    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 396
    .end local v3    # "faultAdjacentMetadata":Lcom/abovevacant/epitaph/core/MemoryDump;
    .restart local v22    # "faultAdjacentMetadata":Lcom/abovevacant/epitaph/core/MemoryDump;
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 398
    .end local v20    # "faultAddress":J
    .local v3, "faultAddress":J
    move-wide/from16 v20, v3

    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 392
    .end local v3    # "faultAddress":J
    .restart local v20    # "faultAddress":J
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v3

    .line 394
    .end local v19    # "hasFaultAddress":Z
    .local v3, "hasFaultAddress":Z
    move/from16 v19, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 388
    .end local v3    # "hasFaultAddress":Z
    .restart local v19    # "hasFaultAddress":Z
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 390
    .end local v18    # "senderPid":I
    .local v3, "senderPid":I
    move/from16 v18, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 384
    .end local v3    # "senderPid":I
    .restart local v18    # "senderPid":I
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 386
    .end local v17    # "senderUid":I
    .local v3, "senderUid":I
    move/from16 v17, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 380
    .end local v3    # "senderUid":I
    .restart local v17    # "senderUid":I
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBool()Z

    move-result v3

    .line 382
    .end local v16    # "hasSender":Z
    .local v3, "hasSender":Z
    move/from16 v16, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 376
    .end local v3    # "hasSender":Z
    .restart local v16    # "hasSender":Z
    :pswitch_6
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .end local v15    # "codeName":Ljava/lang/String;
    .local v3, "codeName":Ljava/lang/String;
    move-object v15, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 372
    .end local v3    # "codeName":Ljava/lang/String;
    .restart local v15    # "codeName":Ljava/lang/String;
    :pswitch_7
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 374
    .end local v14    # "code":I
    .local v3, "code":I
    move v14, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 368
    .end local v3    # "code":I
    .restart local v14    # "code":I
    :pswitch_8
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 370
    .end local v13    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    move-object v13, v3

    move-object/from16 v3, p0

    goto :goto_1

    .line 364
    .end local v3    # "name":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :pswitch_9
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 366
    .end local v12    # "number":I
    .local v3, "number":I
    move v12, v3

    move-object/from16 v3, p0

    .line 407
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "number":I
    .restart local v12    # "number":I
    :goto_1
    goto/16 :goto_0

    .line 409
    :cond_0
    move-object/from16 v3, p0

    new-instance v11, Lcom/abovevacant/epitaph/core/Signal;

    invoke-direct/range {v11 .. v22}, Lcom/abovevacant/epitaph/core/Signal;-><init>(ILjava/lang/String;ILjava/lang/String;ZIIZJLcom/abovevacant/epitaph/core/MemoryDump;)V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeStackHistoryBuffer(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    .locals 7
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    const-wide/16 v0, 0x0

    .line 983
    .local v0, "tid":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v3

    move v4, v3

    .local v4, "tag":I
    if-eqz v3, :cond_0

    .line 987
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v3

    .line 988
    .local v3, "fieldNumber":I
    invoke-static {v4}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v5

    .line 990
    .local v5, "wireType":I
    packed-switch v3, :pswitch_data_0

    .line 1000
    invoke-virtual {p0, v5}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 996
    :pswitch_0
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 997
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v6

    invoke-static {v6}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeStackHistoryBufferEntry(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    goto :goto_1

    .line 992
    :pswitch_1
    invoke-static {v3, v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 993
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v0

    .line 994
    nop

    .line 1003
    .end local v3    # "fieldNumber":I
    .end local v5    # "wireType":I
    :goto_1
    goto :goto_0

    .line 1005
    :cond_0
    new-instance v3, Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

    invoke-direct {v3, v0, v1, v2}, Lcom/abovevacant/epitaph/core/StackHistoryBuffer;-><init>(JLjava/util/List;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeStackHistoryBufferEntry(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;
    .locals 11
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    const-wide/16 v1, 0x0

    .line 1012
    .local v1, "fp":J
    const-wide/16 v3, 0x0

    move-object v6, v0

    move-wide v7, v1

    move-wide v9, v3

    .line 1015
    .end local v0    # "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .end local v1    # "fp":J
    .local v6, "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .local v7, "fp":J
    .local v9, "tag":J
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "wireTag":I
    if-eqz v0, :cond_0

    .line 1016
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 1017
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 1019
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 1033
    invoke-virtual {p0, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 1029
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 1030
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 1031
    .end local v9    # "tag":J
    .local v3, "tag":J
    move-wide v9, v3

    goto :goto_1

    .line 1025
    .end local v3    # "tag":J
    .restart local v9    # "tag":J
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 1026
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v3

    .line 1027
    .end local v7    # "fp":J
    .local v3, "fp":J
    move-wide v7, v3

    goto :goto_1

    .line 1021
    .end local v3    # "fp":J
    .restart local v7    # "fp":J
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 1022
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeBacktraceFrame(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    move-result-object v3

    .line 1023
    .end local v6    # "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .local v3, "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    move-object v6, v3

    .line 1036
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .restart local v6    # "addr":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    :goto_1
    goto :goto_0

    .line 1038
    :cond_0
    new-instance v5, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;

    invoke-direct/range {v5 .. v10}, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;-><init>(Lcom/abovevacant/epitaph/core/BacktraceFrame;JJ)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeThread(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/TombstoneThread;
    .locals 15
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "id":I
    const-string v1, ""

    .line 455
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 456
    .local v6, "registers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Register;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v7, "backtraceNote":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v8, "unreadableElfFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v9, "backtrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v10, "memoryDump":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryDump;>;"
    const-wide/16 v2, 0x0

    .line 461
    .local v2, "taggedAddrCtrl":J
    const-wide/16 v4, 0x0

    move-wide v11, v2

    move-wide v13, v4

    move v4, v0

    move-object v5, v1

    .line 464
    .end local v0    # "id":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "taggedAddrCtrl":J
    .local v4, "id":I
    .local v5, "name":Ljava/lang/String;
    .local v11, "taggedAddrCtrl":J
    .local v13, "pacEnabledKeys":J
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v0

    move v1, v0

    .local v1, "tag":I
    if-eqz v0, :cond_0

    .line 465
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v0

    .line 466
    .local v0, "fieldNumber":I
    invoke-static {v1}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v2

    .line 468
    .local v2, "wireType":I
    packed-switch v0, :pswitch_data_0

    .line 506
    invoke-virtual {p0, v2}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 486
    :pswitch_0
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 487
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    goto :goto_1

    .line 502
    :pswitch_1
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 503
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v13

    .line 504
    goto :goto_1

    .line 482
    :pswitch_2
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 483
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    goto :goto_1

    .line 498
    :pswitch_3
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 499
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v11

    .line 500
    goto :goto_1

    .line 494
    :pswitch_4
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 495
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeMemoryDump(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    goto :goto_1

    .line 490
    :pswitch_5
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 491
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeBacktraceFrame(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    goto :goto_1

    .line 478
    :pswitch_6
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 479
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v3

    invoke-static {v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeRegister(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/Register;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    goto :goto_1

    .line 474
    :pswitch_7
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 475
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 476
    .end local v5    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    move-object v5, v3

    goto :goto_1

    .line 470
    .end local v3    # "name":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :pswitch_8
    invoke-static {v0, v2}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 471
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v3

    .line 472
    .end local v4    # "id":I
    .local v3, "id":I
    move v4, v3

    .line 509
    .end local v0    # "fieldNumber":I
    .end local v2    # "wireType":I
    .end local v3    # "id":I
    .restart local v4    # "id":I
    :goto_1
    goto :goto_0

    .line 511
    :cond_0
    new-instance v3, Lcom/abovevacant/epitaph/core/TombstoneThread;

    invoke-direct/range {v3 .. v14}, Lcom/abovevacant/epitaph/core/TombstoneThread;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJ)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeThreadMapEntry(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/Map;)V
    .locals 6
    .param p0, "reader"    # Lcom/abovevacant/epitaph/io/WireReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "threads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abovevacant/epitaph/io/WireReader;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    .local p1, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    const/4 v0, 0x0

    .line 425
    .local v0, "key":I
    const/4 v1, 0x0

    .line 428
    .local v1, "value":Lcom/abovevacant/epitaph/core/TombstoneThread;
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readTag()I

    move-result v2

    move v3, v2

    .local v3, "tag":I
    if-eqz v2, :cond_0

    .line 429
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getFieldNumber(I)I

    move-result v2

    .line 430
    .local v2, "fieldNumber":I
    invoke-static {v3}, Lcom/abovevacant/epitaph/io/WireReader;->getWireType(I)I

    move-result v4

    .line 432
    .local v4, "wireType":I
    packed-switch v2, :pswitch_data_0

    .line 442
    invoke-virtual {p0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->skipField(I)V

    goto :goto_1

    .line 438
    :pswitch_0
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectBytes(II)V

    .line 439
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readMessage()Lcom/abovevacant/epitaph/io/WireReader;

    move-result-object v5

    invoke-static {v5}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decodeThread(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/TombstoneThread;

    move-result-object v1

    .line 440
    goto :goto_1

    .line 434
    :pswitch_1
    invoke-static {v2, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->expectVarint(II)V

    .line 435
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v0

    .line 436
    nop

    .line 445
    .end local v2    # "fieldNumber":I
    .end local v4    # "wireType":I
    :goto_1
    goto :goto_0

    .line 447
    :cond_0
    if-eqz v1, :cond_1

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static expectBytes(II)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/abovevacant/epitaph/io/WireReader;->expectWireType(III)V

    .line 166
    return-void
.end method

.method private static expectVarint(II)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/abovevacant/epitaph/io/WireReader;->expectWireType(III)V

    .line 162
    return-void
.end method
