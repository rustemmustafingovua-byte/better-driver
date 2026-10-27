.class Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
.super Ljava/lang/Object;
.source "TombstoneParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/tombstone/TombstoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleAccumulator"
.end annotation


# static fields
.field private static final PAGE_SIZE_16KIB:J = 0x4000L

.field private static final PAGE_SIZE_4KIB:J = 0x1000L


# instance fields
.field beginAddress:J

.field buildId:Ljava/lang/String;

.field endAddress:J

.field mappingName:Ljava/lang/String;

.field previousBeginAddress:J

.field previousEndAddress:J

.field previousOffset:J


# direct methods
.method constructor <init>(Lcom/abovevacant/epitaph/core/MemoryMapping;)V
    .locals 2
    .param p1, "mapping"    # Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iget-object v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->mappingName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->mappingName:Ljava/lang/String;

    .line 278
    iget-object v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->buildId:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    .line 279
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->beginAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->beginAddress:J

    .line 280
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->endAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->endAddress:J

    .line 281
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->beginAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousBeginAddress:J

    .line 282
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->endAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousEndAddress:J

    .line 283
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->offset:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousOffset:J

    .line 284
    return-void
.end method


# virtual methods
.method canExtendTo(Lcom/abovevacant/epitaph/core/MemoryMapping;J)Z
    .locals 18
    .param p1, "mapping"    # Lcom/abovevacant/epitaph/core/MemoryMapping;
    .param p2, "pageSize"    # J

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->mappingName:Ljava/lang/String;

    iget-object v3, v1, Lcom/abovevacant/epitaph/core/MemoryMapping;->mappingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v4, v1, Lcom/abovevacant/epitaph/core/MemoryMapping;->beginAddress:J

    iget-wide v6, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousEndAddress:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    iget-wide v4, v1, Lcom/abovevacant/epitaph/core/MemoryMapping;->offset:J

    iget-wide v6, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousOffset:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    .line 300
    :cond_0
    iget-wide v4, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousEndAddress:J

    iget-wide v6, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousBeginAddress:J

    sub-long/2addr v4, v6

    .line 301
    .local v4, "previousSize":J
    iget-wide v6, v1, Lcom/abovevacant/epitaph/core/MemoryMapping;->beginAddress:J

    iget-wide v8, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousEndAddress:J

    sub-long/2addr v6, v8

    .line 302
    .local v6, "addressGap":J
    iget-wide v8, v1, Lcom/abovevacant/epitaph/core/MemoryMapping;->offset:J

    iget-wide v10, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousOffset:J

    add-long/2addr v10, v4

    sub-long/2addr v8, v10

    .line 303
    .local v8, "fileOffsetGap":J
    sub-long v10, v6, v8

    .line 307
    .local v10, "delta":J
    const-wide/16 v12, 0x0

    cmp-long v2, p2, v12

    if-lez v2, :cond_1

    move-wide/from16 v12, p2

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x1000

    .line 308
    .local v12, "runtimePageSize":J
    :goto_0
    const-wide/16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 309
    .local v14, "alignmentTolerance":J
    move-wide/from16 v16, v4

    const/4 v2, 0x0

    .end local v4    # "previousSize":J
    .local v16, "previousSize":J
    neg-long v3, v14

    cmp-long v3, v10, v3

    if-ltz v3, :cond_2

    cmp-long v3, v10, v14

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    return v3

    .line 292
    .end local v6    # "addressGap":J
    .end local v8    # "fileOffsetGap":J
    .end local v10    # "delta":J
    .end local v12    # "runtimePageSize":J
    .end local v14    # "alignmentTolerance":J
    .end local v16    # "previousSize":J
    :cond_3
    const/4 v2, 0x0

    .line 295
    :goto_2
    return v2
.end method

.method extendTo(Lcom/abovevacant/epitaph/core/MemoryMapping;)V
    .locals 4
    .param p1, "mapping"    # Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 313
    iget-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->endAddress:J

    iget-wide v2, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->endAddress:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->endAddress:J

    .line 314
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->beginAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousBeginAddress:J

    .line 315
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->endAddress:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousEndAddress:J

    .line 316
    iget-wide v0, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->offset:J

    iput-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->previousOffset:J

    .line 317
    return-void
.end method

.method isSameModule(Lcom/abovevacant/epitaph/core/MemoryMapping;)Z
    .locals 2
    .param p1, "mapping"    # Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 287
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->mappingName:Ljava/lang/String;

    iget-object v1, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->mappingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    iget-object v1, p1, Lcom/abovevacant/epitaph/core/MemoryMapping;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method toDebugImage()Lio/sentry/protocol/DebugImage;
    .locals 6

    .line 320
    iget-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Lio/sentry/protocol/DebugImage;

    invoke-direct {v0}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 324
    .local v0, "image":Lio/sentry/protocol/DebugImage;
    iget-object v1, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugImage;->setCodeId(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->mappingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugImage;->setCodeFile(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    invoke-static {v1}, Lio/sentry/android/core/internal/util/NativeEventUtils;->buildIdToDebugId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "debugId":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->buildId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 330
    iget-wide v2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->beginAddress:J

    invoke-static {v2, v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->access$000(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/DebugImage;->setImageAddr(Ljava/lang/String;)V

    .line 331
    iget-wide v2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->endAddress:J

    iget-wide v4, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->beginAddress:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lio/sentry/protocol/DebugImage;->setImageSize(J)V

    .line 332
    const-string v2, "elf"

    invoke-virtual {v0, v2}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 334
    return-object v0
.end method
