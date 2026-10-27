.class public final Lio/sentry/android/core/anr/StackTraceConverter;
.super Ljava/lang/Object;
.source "StackTraceConverter.java"


# static fields
.field private static final MAIN_THREAD_ID:Ljava/lang/String; = "0"

.field private static final MAIN_THREAD_NAME:Ljava/lang/String; = "main"

.field private static final SYNTHETIC_SAMPLE_OFFSET_SECONDS:D = 0.033


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lio/sentry/android/core/anr/AnrProfile;)Lio/sentry/protocol/profiling/SentryProfile;
    .locals 18
    .param p0, "anrProfile"    # Lio/sentry/android/core/anr/AnrProfile;

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/core/anr/AnrProfile;->stacks:Ljava/util/List;

    .line 54
    .local v1, "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    new-instance v2, Lio/sentry/protocol/profiling/SentryProfile;

    invoke-direct {v2}, Lio/sentry/protocol/profiling/SentryProfile;-><init>()V

    .line 55
    .local v2, "profile":Lio/sentry/protocol/profiling/SentryProfile;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v4, "frameSignatureToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v5, "stacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v6, "stackSignatureToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "0"

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 61
    .local v8, "anrStackTrace":Lio/sentry/android/core/anr/AnrStackTrace;
    iget-object v11, v8, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    .line 62
    .local v11, "stackElements":[Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v12, "frameIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v13, v11

    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v11, v10

    .line 64
    .local v14, "element":Ljava/lang/StackTraceElement;
    invoke-static {v14}, Lio/sentry/android/core/anr/StackTraceConverter;->createFrameSignature(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v15

    .line 65
    .local v15, "frameSignature":Ljava/lang/String;
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 66
    .local v16, "frameIndex":Ljava/lang/Integer;
    if-nez v16, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    .end local v16    # "frameIndex":Ljava/lang/Integer;
    .local v0, "frameIndex":Ljava/lang/Integer;
    move-object/from16 v17, v1

    .end local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .local v17, "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    invoke-static {v14}, Lio/sentry/android/core/anr/StackTraceConverter;->createSentryStackFrame(Ljava/lang/StackTraceElement;)Lio/sentry/protocol/SentryStackFrame;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 66
    .end local v0    # "frameIndex":Ljava/lang/Integer;
    .end local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v16    # "frameIndex":Ljava/lang/Integer;
    :cond_0
    move-object/from16 v17, v1

    .end local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    move-object/from16 v0, v16

    .line 71
    .end local v16    # "frameIndex":Ljava/lang/Integer;
    .restart local v0    # "frameIndex":Ljava/lang/Integer;
    :goto_2
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v0    # "frameIndex":Ljava/lang/Integer;
    .end local v14    # "element":Ljava/lang/StackTraceElement;
    .end local v15    # "frameSignature":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_1

    .line 74
    .end local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    invoke-static {v12}, Lio/sentry/android/core/anr/StackTraceConverter;->createStackSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "stackSignature":Ljava/lang/String;
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 77
    .local v1, "stackIndex":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 78
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 79
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_2
    new-instance v10, Lio/sentry/protocol/profiling/SentrySample;

    invoke-direct {v10}, Lio/sentry/protocol/profiling/SentrySample;-><init>()V

    .line 84
    .local v10, "sample":Lio/sentry/protocol/profiling/SentrySample;
    iget-wide v13, v8, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    invoke-virtual {v10, v13, v14}, Lio/sentry/protocol/profiling/SentrySample;->setTimestamp(D)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lio/sentry/protocol/profiling/SentrySample;->setStackId(I)V

    .line 86
    invoke-virtual {v10, v9}, Lio/sentry/protocol/profiling/SentrySample;->setThreadId(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lio/sentry/protocol/profiling/SentryProfile;->getSamples()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v0    # "stackSignature":Ljava/lang/String;
    .end local v1    # "stackIndex":Ljava/lang/Integer;
    .end local v8    # "anrStackTrace":Lio/sentry/android/core/anr/AnrStackTrace;
    .end local v10    # "sample":Lio/sentry/protocol/profiling/SentrySample;
    .end local v11    # "stackElements":[Ljava/lang/StackTraceElement;
    .end local v12    # "frameIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 94
    .end local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .local v1, "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    .restart local v17    # "anrStackTraces":Ljava/util/List;, "Ljava/util/List<Lio/sentry/android/core/anr/AnrStackTrace;>;"
    invoke-virtual {v2}, Lio/sentry/protocol/profiling/SentryProfile;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 95
    invoke-virtual {v2}, Lio/sentry/protocol/profiling/SentryProfile;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/profiling/SentrySample;

    .line 96
    .local v0, "originalSample":Lio/sentry/protocol/profiling/SentrySample;
    invoke-static {v0}, Lio/sentry/android/core/anr/StackTraceConverter;->createSyntheticSample(Lio/sentry/protocol/profiling/SentrySample;)Lio/sentry/protocol/profiling/SentrySample;

    move-result-object v1

    .line 97
    .local v1, "syntheticSample":Lio/sentry/protocol/profiling/SentrySample;
    invoke-virtual {v2}, Lio/sentry/protocol/profiling/SentryProfile;->getSamples()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v0    # "originalSample":Lio/sentry/protocol/profiling/SentrySample;
    .end local v1    # "syntheticSample":Lio/sentry/protocol/profiling/SentrySample;
    :cond_4
    invoke-virtual {v2, v3}, Lio/sentry/protocol/profiling/SentryProfile;->setFrames(Ljava/util/List;)V

    .line 101
    invoke-virtual {v2, v5}, Lio/sentry/protocol/profiling/SentryProfile;->setStacks(Ljava/util/List;)V

    .line 103
    new-instance v0, Lio/sentry/protocol/profiling/SentryThreadMetadata;

    invoke-direct {v0}, Lio/sentry/protocol/profiling/SentryThreadMetadata;-><init>()V

    .line 104
    .local v0, "threadMetadata":Lio/sentry/protocol/profiling/SentryThreadMetadata;
    const-string v1, "main"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/profiling/SentryThreadMetadata;->setName(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/sentry/protocol/profiling/SentryThreadMetadata;->setPriority(I)V

    .line 107
    nop

    .line 108
    invoke-static {v9, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 109
    .local v1, "threadMetadataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/profiling/SentryThreadMetadata;>;"
    invoke-virtual {v2, v1}, Lio/sentry/protocol/profiling/SentryProfile;->setThreadMetadata(Ljava/util/Map;)V

    .line 111
    return-object v2
.end method

.method private static createFrameSignature(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private static createSentryStackFrame(Ljava/lang/StackTraceElement;)Lio/sentry/protocol/SentryStackFrame;
    .locals 2
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .line 157
    new-instance v0, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v0}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 158
    .local v0, "frame":Lio/sentry/protocol/SentryStackFrame;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setFilename(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 162
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setNative(Ljava/lang/Boolean;)V

    .line 165
    :cond_1
    return-object v0
.end method

.method private static createStackSignature(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 139
    .local p0, "frameIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    .local v2, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .end local v2    # "index":Ljava/lang/Integer;
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createSyntheticSample(Lio/sentry/protocol/profiling/SentrySample;)Lio/sentry/protocol/profiling/SentrySample;
    .locals 5
    .param p0, "originalSample"    # Lio/sentry/protocol/profiling/SentrySample;

    .line 177
    new-instance v0, Lio/sentry/protocol/profiling/SentrySample;

    invoke-direct {v0, p0}, Lio/sentry/protocol/profiling/SentrySample;-><init>(Lio/sentry/protocol/profiling/SentrySample;)V

    .line 178
    .local v0, "syntheticSample":Lio/sentry/protocol/profiling/SentrySample;
    invoke-virtual {p0}, Lio/sentry/protocol/profiling/SentrySample;->getTimestamp()D

    move-result-wide v1

    const-wide v3, 0x3fa0e5604189374cL    # 0.033

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/profiling/SentrySample;->setTimestamp(D)V

    .line 179
    return-object v0
.end method
