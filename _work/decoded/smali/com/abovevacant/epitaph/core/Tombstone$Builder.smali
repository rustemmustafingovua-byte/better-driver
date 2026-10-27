.class public final Lcom/abovevacant/epitaph/core/Tombstone$Builder;
.super Ljava/lang/Object;
.source "Tombstone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abovevacant/epitaph/core/Tombstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private abortMessage:Ljava/lang/String;

.field private arch:Lcom/abovevacant/epitaph/core/Architecture;

.field private buildFingerprint:Ljava/lang/String;

.field private causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Cause;",
            ">;"
        }
    .end annotation
.end field

.field private commandLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private crashDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/CrashDetail;",
            ">;"
        }
    .end annotation
.end field

.field private guestArch:Lcom/abovevacant/epitaph/core/Architecture;

.field private guestThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeen16kbMode:Z

.field private logBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private memoryMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryMapping;",
            ">;"
        }
    .end annotation
.end field

.field private openFds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/FD;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private pid:I

.field private processUptime:I

.field private revision:Ljava/lang/String;

.field private selinuxLabel:Ljava/lang/String;

.field private signal:Lcom/abovevacant/epitaph/core/Signal;

.field private stackHistoryBuffer:Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

.field private threads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;"
        }
    .end annotation
.end field

.field private tid:I

.field private timestamp:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->arch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 138
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestArch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->buildFingerprint:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->revision:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->timestamp:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->selinuxLabel:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->commandLine:Ljava/util/List;

    .line 149
    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->abortMessage:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->crashDetails:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->causes:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->threads:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestThreads:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->memoryMappings:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->logBuffers:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->openFds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abortMessage(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "abortMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "abortMessage"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->abortMessage:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public addMemoryMapping(Lcom/abovevacant/epitaph/core/MemoryMapping;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 1
    .param p1, "mapping"    # Lcom/abovevacant/epitaph/core/MemoryMapping;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapping"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->memoryMappings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-object p0
.end method

.method public addThread(Lcom/abovevacant/epitaph/core/TombstoneThread;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 2
    .param p1, "thread"    # Lcom/abovevacant/epitaph/core/TombstoneThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->threads:Ljava/util/Map;

    iget v1, p1, Lcom/abovevacant/epitaph/core/TombstoneThread;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object p0
.end method

.method public arch(Lcom/abovevacant/epitaph/core/Architecture;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "arch"    # Lcom/abovevacant/epitaph/core/Architecture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arch"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->arch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 178
    return-object p0
.end method

.method public build()Lcom/abovevacant/epitaph/core/Tombstone;
    .locals 26

    .line 289
    move-object/from16 v0, p0

    new-instance v1, Lcom/abovevacant/epitaph/core/Tombstone;

    iget-object v2, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->arch:Lcom/abovevacant/epitaph/core/Architecture;

    iget-object v3, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestArch:Lcom/abovevacant/epitaph/core/Architecture;

    iget-object v4, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->buildFingerprint:Ljava/lang/String;

    iget-object v5, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->revision:Ljava/lang/String;

    iget-object v6, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->timestamp:Ljava/lang/String;

    iget v7, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->pid:I

    iget v8, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->tid:I

    iget v9, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->uid:I

    iget-object v10, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->selinuxLabel:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->commandLine:Ljava/util/List;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v12, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->processUptime:I

    iget-object v13, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->signal:Lcom/abovevacant/epitaph/core/Signal;

    iget-object v14, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->abortMessage:Ljava/lang/String;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->crashDetails:Ljava/util/List;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->causes:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->threads:Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestThreads:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->memoryMappings:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->logBuffers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->openFds:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->pageSize:I

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->hasBeen16kbMode:Z

    move/from16 v24, v1

    iget-object v1, v0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->stackHistoryBuffer:Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

    move/from16 v25, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v25

    invoke-direct/range {v1 .. v24}, Lcom/abovevacant/epitaph/core/Tombstone;-><init>(Lcom/abovevacant/epitaph/core/Architecture;Lcom/abovevacant/epitaph/core/Architecture;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;ILcom/abovevacant/epitaph/core/Signal;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZLcom/abovevacant/epitaph/core/StackHistoryBuffer;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public buildFingerprint(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "buildFingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buildFingerprint"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->buildFingerprint:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public causes(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "causes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Cause;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 232
    .local p1, "causes":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Cause;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->causes:Ljava/util/List;

    .line 233
    return-object p0
.end method

.method public commandLine(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandLine"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 207
    .local p1, "commandLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->commandLine:Ljava/util/List;

    .line 208
    return-object p0
.end method

.method public crashDetails(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crashDetails"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/CrashDetail;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 227
    .local p1, "crashDetails":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/CrashDetail;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->crashDetails:Ljava/util/List;

    .line 228
    return-object p0
.end method

.method public guestArch(Lcom/abovevacant/epitaph/core/Architecture;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "guestArch"    # Lcom/abovevacant/epitaph/core/Architecture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guestArch"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestArch:Lcom/abovevacant/epitaph/core/Architecture;

    .line 183
    return-object p0
.end method

.method public guestThreads(Ljava/util/Map;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guestThreads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 242
    .local p1, "guestThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->guestThreads:Ljava/util/Map;

    .line 243
    return-object p0
.end method

.method public hasBeen16kbMode(Z)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "hasBeen16kbMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasBeen16kbMode"
        }
    .end annotation

    .line 267
    iput-boolean p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->hasBeen16kbMode:Z

    .line 268
    return-object p0
.end method

.method public logBuffers(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/LogBuffer;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 252
    .local p1, "logBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/LogBuffer;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->logBuffers:Ljava/util/List;

    .line 253
    return-object p0
.end method

.method public memoryMappings(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryMappings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryMapping;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 247
    .local p1, "memoryMappings":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryMapping;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->memoryMappings:Ljava/util/List;

    .line 248
    return-object p0
.end method

.method public openFds(Ljava/util/List;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/FD;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 257
    .local p1, "openFds":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/FD;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->openFds:Ljava/util/List;

    .line 258
    return-object p0
.end method

.method public pageSize(I)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageSize"
        }
    .end annotation

    .line 262
    iput p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->pageSize:I

    .line 263
    return-object p0
.end method

.method public pid(I)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 162
    iput p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->pid:I

    .line 163
    return-object p0
.end method

.method public processUptime(I)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "processUptime"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processUptime"
        }
    .end annotation

    .line 212
    iput p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->processUptime:I

    .line 213
    return-object p0
.end method

.method public revision(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "revision"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revision"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->revision:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public selinuxLabel(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "selinuxLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selinuxLabel"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->selinuxLabel:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public signal(Lcom/abovevacant/epitaph/core/Signal;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "signal"    # Lcom/abovevacant/epitaph/core/Signal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signal"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->signal:Lcom/abovevacant/epitaph/core/Signal;

    .line 218
    return-object p0
.end method

.method public stackHistoryBuffer(Lcom/abovevacant/epitaph/core/StackHistoryBuffer;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "stackHistoryBuffer"    # Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackHistoryBuffer"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->stackHistoryBuffer:Lcom/abovevacant/epitaph/core/StackHistoryBuffer;

    .line 273
    return-object p0
.end method

.method public threads(Ljava/util/Map;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/abovevacant/epitaph/core/TombstoneThread;",
            ">;)",
            "Lcom/abovevacant/epitaph/core/Tombstone$Builder;"
        }
    .end annotation

    .line 237
    .local p1, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->threads:Ljava/util/Map;

    .line 238
    return-object p0
.end method

.method public tid(I)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "tid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 167
    iput p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->tid:I

    .line 168
    return-object p0
.end method

.method public timestamp(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->timestamp:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public uid(I)Lcom/abovevacant/epitaph/core/Tombstone$Builder;
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 172
    iput p1, p0, Lcom/abovevacant/epitaph/core/Tombstone$Builder;->uid:I

    .line 173
    return-object p0
.end method
