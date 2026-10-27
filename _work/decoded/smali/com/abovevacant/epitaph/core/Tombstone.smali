.class public final Lcom/abovevacant/epitaph/core/Tombstone;
.super Ljava/lang/Object;
.source "Tombstone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    }
.end annotation


# instance fields
.field public final abortMessage:Ljava/lang/String;

.field public final arch:Lcom/abovevacant/epitaph/core/Architecture;

.field public final buildFingerprint:Ljava/lang/String;

.field public final causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Cause;",
            ">;"
        }
    .end annotation
.end field

.field public final commandLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final crashDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/CrashDetail;",
            ">;"
        }
    .end annotation
.end field

.field public final guestArch:Lcom/abovevacant/epitaph/core/Architecture;

.field public final guestThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;"
        }
    .end annotation
.end field

.field public final hasBeen16kbMode:Z

.field public final logBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final memoryMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryMapping;",
            ">;"
        }
    .end annotation
.end field

.field public final openFds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/FD;",
            ">;"
        }
    .end annotation
.end field

.field public final pageSize:I

.field public final pid:I

.field public final processUptime:I

.field public final revision:Ljava/lang/String;

.field public final selinuxLabel:Ljava/lang/String;

.field public final signal:Lcom/abovevacant/epitaph/core/Signal;

.field public final stackHistoryBuffer:Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

.field public final threads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;"
        }
    .end annotation
.end field

.field public final tid:I

.field public final timestamp:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/abovevacant/epitaph/core/Architecture;Lcom/abovevacant/epitaph/core/Architecture;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;ILcom/abovevacant/epitaph/core/Signal;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZLcom/abovevacant/epitaph/core/StackHistoryBuffer;)V
    .locals 16
    .param p1, "arch"    # Lcom/abovevacant/epitaph/core/Architecture;
    .param p2, "guestArch"    # Lcom/abovevacant/epitaph/core/Architecture;
    .param p3, "buildFingerprint"    # Ljava/lang/String;
    .param p4, "revision"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "pid"    # I
    .param p7, "tid"    # I
    .param p8, "uid"    # I
    .param p9, "selinuxLabel"    # Ljava/lang/String;
    .param p11, "processUptime"    # I
    .param p12, "signal"    # Lcom/abovevacant/epitaph/core/Signal;
    .param p13, "abortMessage"    # Ljava/lang/String;
    .param p21, "pageSize"    # I
    .param p22, "hasBeen16kbMode"    # Z
    .param p23, "stackHistoryBuffer"    # Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "arch",
            "guestArch",
            "buildFingerprint",
            "revision",
            "timestamp",
            "pid",
            "tid",
            "uid",
            "selinuxLabel",
            "commandLine",
            "processUptime",
            "signal",
            "abortMessage",
            "crashDetails",
            "causes",
            "threads",
            "guestThreads",
            "memoryMappings",
            "logBuffers",
            "openFds",
            "pageSize",
            "hasBeen16kbMode",
            "stackHistoryBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abovevacant/epitaph/core/Architecture;",
            "Lcom/abovevacant/epitaph/core/Architecture;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/abovevacant/epitaph/core/Signal;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/CrashDetail;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Cause;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryMapping;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/FD;",
            ">;IZ",
            "Lcom/abovevacant/epitaph/core/StackHistoryBuffer;",
            ")V"
        }
    .end annotation

    .line 104
    .local p10, "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p14, "crashDetails":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/CrashDetail;>;"
    .local p15, "causes":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Cause;>;"
    .local p16, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local p17, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .local p18, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    .local p19, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    .local p20, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone;->arch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 106
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/abovevacant/epitaph/core/Tombstone;->guestArch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 107
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/abovevacant/epitaph/core/Tombstone;->buildFingerprint:Ljava/lang/String;

    .line 108
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/abovevacant/epitaph/core/Tombstone;->revision:Ljava/lang/String;

    .line 109
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/abovevacant/epitaph/core/Tombstone;->timestamp:Ljava/lang/String;

    .line 110
    move/from16 v6, p6

    iput v6, v0, Lcom/abovevacant/epitaph/core/Tombstone;->pid:I

    .line 111
    move/from16 v7, p7

    iput v7, v0, Lcom/abovevacant/epitaph/core/Tombstone;->tid:I

    .line 112
    move/from16 v8, p8

    iput v8, v0, Lcom/abovevacant/epitaph/core/Tombstone;->uid:I

    .line 113
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/abovevacant/epitaph/core/Tombstone;->selinuxLabel:Ljava/lang/String;

    .line 114
    invoke-static/range {p10 .. p10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v0, Lcom/abovevacant/epitaph/core/Tombstone;->commandLine:Ljava/util/List;

    .line 115
    move/from16 v10, p11

    iput v10, v0, Lcom/abovevacant/epitaph/core/Tombstone;->processUptime:I

    .line 116
    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/abovevacant/epitaph/core/Tombstone;->signal:Lcom/abovevacant/epitaph/core/Signal;

    .line 117
    move-object/from16 v12, p13

    iput-object v12, v0, Lcom/abovevacant/epitaph/core/Tombstone;->abortMessage:Ljava/lang/String;

    .line 118
    invoke-static/range {p14 .. p14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->crashDetails:Ljava/util/List;

    .line 119
    invoke-static/range {p15 .. p15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->causes:Ljava/util/List;

    .line 120
    invoke-static/range {p16 .. p16}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->threads:Ljava/util/Map;

    .line 121
    invoke-static/range {p17 .. p17}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->guestThreads:Ljava/util/Map;

    .line 122
    invoke-static/range {p18 .. p18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->memoryMappings:Ljava/util/List;

    .line 123
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->logBuffers:Ljava/util/List;

    .line 124
    invoke-static/range {p20 .. p20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->openFds:Ljava/util/List;

    .line 125
    move/from16 v13, p21

    iput v13, v0, Lcom/abovevacant/epitaph/core/Tombstone;->pageSize:I

    .line 126
    move/from16 v14, p22

    iput-boolean v14, v0, Lcom/abovevacant/epitaph/core/Tombstone;->hasBeen16kbMode:Z

    .line 127
    move-object/from16 v15, p23

    iput-object v15, v0, Lcom/abovevacant/epitaph/core/Tombstone;->stackHistoryBuffer:Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

    .line 128
    return-void
.end method


# virtual methods
.method public hasSignal()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone;->signal:Lcom/abovevacant/epitaph/core/Signal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
