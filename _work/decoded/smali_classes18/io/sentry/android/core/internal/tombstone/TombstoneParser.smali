.class public Lio/sentry/android/core/internal/tombstone/TombstoneParser;
.super Ljava/lang/Object;
.source "TombstoneParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    }
.end annotation


# instance fields
.field private final excTypeValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeLibraryDir:Ljava/lang/String;

.field private final tombstoneStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "tombstoneStream"    # Ljava/io/InputStream;
    .param p4, "nativeLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "inAppIncludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "inAppExcludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->tombstoneStream:Ljava/io/InputStream;

    .line 60
    iput-object p2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->inAppIncludes:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->inAppExcludes:Ljava/util/List;

    .line 62
    iput-object p4, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->nativeLibraryDir:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGILL"

    const-string v2, "IllegalInstruction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGTRAP"

    const-string v2, "Trap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGABRT"

    const-string v2, "Abort"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGBUS"

    const-string v2, "BusError"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGFPE"

    const-string v2, "FloatingPointException"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    const-string v1, "SIGSEGV"

    const-string v2, "Segfault"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p3, "nativeLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "inAppIncludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "inAppExcludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;-><init>(Ljava/io/InputStream;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J

    .line 35
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->formatHex(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructMessage(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/protocol/Message;
    .locals 11
    .param p1, "tombstone"    # Lcom/abovevacant/epitaph/core/Tombstone;

    .line 232
    new-instance v0, Lio/sentry/protocol/Message;

    invoke-direct {v0}, Lio/sentry/protocol/Message;-><init>()V

    .line 233
    .local v0, "message":Lio/sentry/protocol/Message;
    iget-object v1, p1, Lcom/abovevacant/epitaph/core/Tombstone;->signal:Lcom/abovevacant/epitaph/core/Signal;

    .line 236
    .local v1, "signalInfo":Lcom/abovevacant/epitaph/core/Signal;
    const-string v2, " "

    iget-object v3, p1, Lcom/abovevacant/epitaph/core/Tombstone;->commandLine:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "command":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/abovevacant/epitaph/core/Tombstone;->hasSignal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p1, Lcom/abovevacant/epitaph/core/Tombstone;->abortMessage:Ljava/lang/String;

    .line 239
    .local v2, "abortMessage":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 243
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    iget-object v5, v1, Lcom/abovevacant/epitaph/core/Signal;->name:Ljava/lang/String;

    iget v6, v1, Lcom/abovevacant/epitaph/core/Signal;->number:I

    .line 245
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/abovevacant/epitaph/core/Signal;->codeName:Ljava/lang/String;

    iget v8, v1, Lcom/abovevacant/epitaph/core/Signal;->code:I

    .line 247
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Lcom/abovevacant/epitaph/core/Tombstone;->pid:I

    .line 248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    .line 240
    const-string v5, "%sFatal signal %s (%d), %s (%d), pid = %d (%s)"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v0, v3}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 250
    .end local v2    # "abortMessage":Ljava/lang/String;
    goto :goto_1

    .line 251
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v3, p1, Lcom/abovevacant/epitaph/core/Tombstone;->pid:I

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Fatal exit pid = %d (%s)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v0, v2}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 255
    :goto_1
    return-object v0
.end method

.method private createDebugMeta(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/protocol/DebugMeta;
    .locals 8
    .param p1, "tombstone"    # Lcom/abovevacant/epitaph/core/Tombstone;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    const/4 v1, 0x0

    .line 347
    .local v1, "currentModule":Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    iget-object v2, p1, Lcom/abovevacant/epitaph/core/Tombstone;->memoryMappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 349
    .local v3, "mapping":Lcom/abovevacant/epitaph/core/MemoryMapping;
    iget-boolean v4, v3, Lcom/abovevacant/epitaph/core/MemoryMapping;->read:Z

    if-nez v4, :cond_1

    .line 350
    goto :goto_0

    .line 354
    :cond_1
    iget-object v4, v3, Lcom/abovevacant/epitaph/core/MemoryMapping;->mappingName:Ljava/lang/String;

    .line 355
    .local v4, "mappingName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/dev/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    goto :goto_0

    .line 359
    :cond_2
    iget-object v5, v3, Lcom/abovevacant/epitaph/core/MemoryMapping;->buildId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 361
    .local v5, "hasBuildId":Z
    if-eqz v5, :cond_5

    .line 364
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->isSameModule(Lcom/abovevacant/epitaph/core/MemoryMapping;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 365
    invoke-virtual {v1, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->extendTo(Lcom/abovevacant/epitaph/core/MemoryMapping;)V

    .line 366
    goto :goto_0

    .line 370
    :cond_3
    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {v1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->toDebugImage()Lio/sentry/protocol/DebugImage;

    move-result-object v6

    .line 372
    .local v6, "image":Lio/sentry/protocol/DebugImage;
    if-eqz v6, :cond_4

    .line 373
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v6    # "image":Lio/sentry/protocol/DebugImage;
    :cond_4
    new-instance v6, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;

    invoke-direct {v6, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;-><init>(Lcom/abovevacant/epitaph/core/MemoryMapping;)V

    move-object v1, v6

    .end local v1    # "currentModule":Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    .local v6, "currentModule":Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    goto :goto_1

    .line 379
    .end local v6    # "currentModule":Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    .restart local v1    # "currentModule":Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    :cond_5
    if-eqz v1, :cond_6

    iget v6, p1, Lcom/abovevacant/epitaph/core/Tombstone;->pageSize:I

    int-to-long v6, v6

    invoke-virtual {v1, v3, v6, v7}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->canExtendTo(Lcom/abovevacant/epitaph/core/MemoryMapping;J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 381
    invoke-virtual {v1, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->extendTo(Lcom/abovevacant/epitaph/core/MemoryMapping;)V

    .line 383
    .end local v3    # "mapping":Lcom/abovevacant/epitaph/core/MemoryMapping;
    .end local v4    # "mappingName":Ljava/lang/String;
    .end local v5    # "hasBuildId":Z
    :cond_6
    :goto_1
    goto :goto_0

    .line 386
    :cond_7
    if-eqz v1, :cond_8

    .line 387
    invoke-virtual {v1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->toDebugImage()Lio/sentry/protocol/DebugImage;

    move-result-object v2

    .line 388
    .local v2, "image":Lio/sentry/protocol/DebugImage;
    if-eqz v2, :cond_8

    .line 389
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v2    # "image":Lio/sentry/protocol/DebugImage;
    :cond_8
    new-instance v2, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v2}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 394
    .local v2, "debugMeta":Lio/sentry/protocol/DebugMeta;
    invoke-virtual {v2, v0}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 396
    return-object v2
.end method

.method private createException(Lcom/abovevacant/epitaph/core/Tombstone;)Ljava/util/List;
    .locals 4
    .param p1, "tombstone"    # Lcom/abovevacant/epitaph/core/Tombstone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abovevacant/epitaph/core/Tombstone;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lio/sentry/protocol/SentryException;

    invoke-direct {v0}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 198
    .local v0, "exception":Lio/sentry/protocol/SentryException;
    invoke-virtual {p1}, Lcom/abovevacant/epitaph/core/Tombstone;->hasSignal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p1, Lcom/abovevacant/epitaph/core/Tombstone;->signal:Lcom/abovevacant/epitaph/core/Signal;

    .line 200
    .local v1, "signalInfo":Lcom/abovevacant/epitaph/core/Signal;
    iget-object v2, v1, Lcom/abovevacant/epitaph/core/Signal;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryException;->setType(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->excTypeValueMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/abovevacant/epitaph/core/Signal;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryException;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-static {v1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->createMechanismFromSignalInfo(Lcom/abovevacant/epitaph/core/Signal;)Lio/sentry/protocol/Mechanism;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryException;->setMechanism(Lio/sentry/protocol/Mechanism;)V

    .line 205
    .end local v1    # "signalInfo":Lcom/abovevacant/epitaph/core/Signal;
    :cond_0
    iget v1, p1, Lcom/abovevacant/epitaph/core/Tombstone;->tid:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryException;->setThreadId(Ljava/lang/Long;)V

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v1, "exceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-object v1
.end method

.method private static createMechanismFromSignalInfo(Lcom/abovevacant/epitaph/core/Signal;)Lio/sentry/protocol/Mechanism;
    .locals 4
    .param p0, "signalInfo"    # Lcom/abovevacant/epitaph/core/Signal;

    .line 215
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 216
    .local v0, "mechanism":Lio/sentry/protocol/Mechanism;
    sget-object v1, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setHandled(Ljava/lang/Boolean;)V

    .line 218
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setSynthetic(Ljava/lang/Boolean;)V

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v1, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/abovevacant/epitaph/core/Signal;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "number"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v2, "name"

    iget-object v3, p0, Lcom/abovevacant/epitaph/core/Signal;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget v2, p0, Lcom/abovevacant/epitaph/core/Signal;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "code"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "code_name"

    iget-object v3, p0, Lcom/abovevacant/epitaph/core/Signal;->codeName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setMeta(Ljava/util/Map;)V

    .line 227
    return-object v0
.end method

.method private createStackTrace(Lcom/abovevacant/epitaph/core/TombstoneThread;)Lio/sentry/protocol/SentryStackTrace;
    .locals 10
    .param p1, "thread"    # Lcom/abovevacant/epitaph/core/TombstoneThread;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    iget-object v1, p1, Lcom/abovevacant/epitaph/core/TombstoneThread;->backtrace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 137
    .local v2, "frame":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    iget-object v3, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->fileName:Ljava/lang/String;

    const-string v4, "libart.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    goto :goto_0

    .line 141
    :cond_0
    iget-object v3, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->fileName:Ljava/lang/String;

    const-string v4, "<anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->functionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    goto :goto_0

    .line 146
    :cond_1
    new-instance v3, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v3}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 147
    .local v3, "stackFrame":Lio/sentry/protocol/SentryStackFrame;
    iget-object v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryStackFrame;->setPackage(Ljava/lang/String;)V

    .line 148
    iget-object v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->functionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 149
    iget-wide v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->pc:J

    invoke-static {v4, v5}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->formatHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryStackFrame;->setInstructionAddr(Ljava/lang/String;)V

    .line 150
    iget-object v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->buildId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->pc:J

    iget-wide v6, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->relPc:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 154
    iget-wide v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->pc:J

    iget-wide v6, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->relPc:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->formatHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryStackFrame;->setImageAddr(Ljava/lang/String;)V

    .line 162
    :cond_2
    iget-object v4, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->functionName:Ljava/lang/String;

    .line 165
    .local v4, "functionName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 167
    :cond_3
    iget-object v5, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->inAppIncludes:Ljava/util/List;

    iget-object v6, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->inAppExcludes:Ljava/util/List;

    invoke-static {v4, v5, v6}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1
    nop

    .line 169
    .local v5, "inApp":Ljava/lang/Boolean;
    iget-object v6, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->nativeLibraryDir:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/abovevacant/epitaph/core/BacktraceFrame;->fileName:Ljava/lang/String;

    iget-object v9, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->nativeLibraryDir:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v8

    .line 171
    .local v6, "isInNativeLibraryDir":Z
    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    if-eqz v6, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v7, v8

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 173
    invoke-virtual {v3, v5}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 174
    invoke-interface {v0, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 175
    .end local v2    # "frame":Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .end local v3    # "stackFrame":Lio/sentry/protocol/SentryStackFrame;
    .end local v4    # "functionName":Ljava/lang/String;
    .end local v5    # "inApp":Ljava/lang/Boolean;
    .end local v6    # "isInNativeLibraryDir":Z
    goto/16 :goto_0

    .line 177
    :cond_8
    new-instance v1, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v1}, Lio/sentry/protocol/SentryStackTrace;-><init>()V

    .line 178
    .local v1, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryStackTrace;->setFrames(Ljava/util/List;)V

    .line 183
    sget-object v2, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->NONE:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryStackTrace;->setInstructionAddressAdjustment(Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;)V

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v2, "registers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/abovevacant/epitaph/core/TombstoneThread;->registers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abovevacant/epitaph/core/Register;

    .line 187
    .local v4, "register":Lcom/abovevacant/epitaph/core/Register;
    iget-object v5, v4, Lcom/abovevacant/epitaph/core/Register;->name:Ljava/lang/String;

    iget-wide v6, v4, Lcom/abovevacant/epitaph/core/Register;->value:J

    invoke-static {v6, v7}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->formatHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v4    # "register":Lcom/abovevacant/epitaph/core/Register;
    goto :goto_4

    .line 189
    :cond_9
    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryStackTrace;->setRegisters(Ljava/util/Map;)V

    .line 191
    return-object v1
.end method

.method private createThreads(Lcom/abovevacant/epitaph/core/Tombstone;Lio/sentry/protocol/SentryException;)Ljava/util/List;
    .locals 9
    .param p1, "tombstone"    # Lcom/abovevacant/epitaph/core/Tombstone;
    .param p2, "exc"    # Lio/sentry/protocol/SentryException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abovevacant/epitaph/core/Tombstone;",
            "Lio/sentry/protocol/SentryException;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    iget-object v1, p1, Lcom/abovevacant/epitaph/core/Tombstone;->threads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    .local v2, "threadEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abovevacant/epitaph/core/TombstoneThread;

    .line 105
    .local v3, "threadEntryValue":Lcom/abovevacant/epitaph/core/TombstoneThread;
    new-instance v4, Lio/sentry/protocol/SentryThread;

    invoke-direct {v4}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 106
    .local v4, "thread":Lio/sentry/protocol/SentryThread;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 107
    iget-object v5, v3, Lcom/abovevacant/epitaph/core/TombstoneThread;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->createStackTrace(Lcom/abovevacant/epitaph/core/TombstoneThread;)Lio/sentry/protocol/SentryStackTrace;

    move-result-object v5

    .line 110
    .local v5, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 111
    iget v6, p1, Lcom/abovevacant/epitaph/core/Tombstone;->tid:I

    iget v7, v3, Lcom/abovevacant/epitaph/core/TombstoneThread;->id:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    .line 112
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {p2, v5}, Lio/sentry/protocol/SentryException;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 120
    :cond_0
    iget v6, p1, Lcom/abovevacant/epitaph/core/Tombstone;->pid:I

    iget v7, v3, Lcom/abovevacant/epitaph/core/TombstoneThread;->id:I

    if-ne v6, v7, :cond_1

    .line 123
    const-string v6, "main"

    invoke-virtual {v4, v6}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 124
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    .line 126
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "threadEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/abovevacant/epitaph/core/TombstoneThread;>;"
    .end local v3    # "threadEntryValue":Lcom/abovevacant/epitaph/core/TombstoneThread;
    .end local v4    # "thread":Lio/sentry/protocol/SentryThread;
    .end local v5    # "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    goto :goto_0

    .line 129
    :cond_2
    return-object v0
.end method

.method private static formatHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->tombstoneStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->tombstoneStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 404
    :cond_0
    return-void
.end method

.method public parse()Lio/sentry/SentryEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->tombstoneStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->tombstoneStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->decode(Ljava/io/InputStream;)Lcom/abovevacant/epitaph/core/Tombstone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->parse(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/SentryEvent;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream provided; use parse(Tombstone) instead."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/SentryEvent;
    .locals 3
    .param p1, "tombstone"    # Lcom/abovevacant/epitaph/core/Tombstone;

    .line 83
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 84
    .local v0, "event":Lio/sentry/SentryEvent;
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 87
    const-string v1, "native"

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setPlatform(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->constructMessage(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/protocol/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .line 90
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->createDebugMeta(Lcom/abovevacant/epitaph/core/Tombstone;)Lio/sentry/protocol/DebugMeta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 91
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->createException(Lcom/abovevacant/epitaph/core/Tombstone;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 92
    nop

    .line 93
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryException;

    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->createThreads(Lcom/abovevacant/epitaph/core/Tombstone;Lio/sentry/protocol/SentryException;)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    .line 95
    return-object v0
.end method
