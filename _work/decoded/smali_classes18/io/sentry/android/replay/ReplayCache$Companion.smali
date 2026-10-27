.class public final Lio/sentry/android/replay/ReplayCache$Companion;
.super Ljava/lang/Object;
.source "ReplayCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/ReplayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayCache.kt\nio/sentry/android/replay/ReplayCache$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,547:1\n13409#2,2:548\n1#3:550\n1#3:556\n284#4,5:551\n743#5,4:557\n1010#6,2:561\n1053#6:563\n2632#6,3:564\n*S KotlinDebug\n*F\n+ 1 ReplayCache.kt\nio/sentry/android/replay/ReplayCache$Companion\n*L\n351#1:548,2\n385#1:556\n385#1:551,5\n386#1:557,4\n456#1:561,2\n492#1:563\n498#1:564,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJF\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2%\u0008\u0002\u0010\"\u001a\u001f\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020&\u0018\u00010#H\u0000\u00a2\u0006\u0002\u0008\'J\u0018\u0010(\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u001e\u0010)\u001a\u0004\u0018\u00010*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040,H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayCache$Companion;",
        "",
        "()V",
        "ONGOING_SEGMENT",
        "",
        "RECORDING_METADATA_KEYS",
        "",
        "SEGMENT_KEY_BIT_RATE",
        "SEGMENT_KEY_DIST",
        "SEGMENT_KEY_ENVIRONMENT",
        "SEGMENT_KEY_FLUSHED",
        "SEGMENT_KEY_FRAME_RATE",
        "SEGMENT_KEY_HEIGHT",
        "SEGMENT_KEY_ID",
        "SEGMENT_KEY_RELEASE",
        "SEGMENT_KEY_REPLAY_ID",
        "SEGMENT_KEY_REPLAY_RECORDING",
        "SEGMENT_KEY_REPLAY_SCREEN_AT_START",
        "SEGMENT_KEY_REPLAY_TYPE",
        "SEGMENT_KEY_SDK_NAME",
        "SEGMENT_KEY_SDK_VERSION",
        "SEGMENT_KEY_TIMESTAMP",
        "SEGMENT_KEY_WIDTH",
        "VIDEO_EXTENSION",
        "deleteExceptSegmentVideos",
        "",
        "replayCacheDir",
        "Ljava/io/File;",
        "fromDisk",
        "Lio/sentry/android/replay/LastSegmentData;",
        "options",
        "Lio/sentry/SentryOptions;",
        "replayId",
        "Lio/sentry/protocol/SentryId;",
        "replayCacheProvider",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lio/sentry/android/replay/ReplayCache;",
        "fromDisk$sentry_android_replay_release",
        "makeReplayCacheDir",
        "recordingMetadata",
        "Lio/sentry/android/replay/RecordingMetadata;",
        "lastSegment",
        "",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6Na7YYBpLLYrHVwAc4beOzYfV-Q(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/ReplayCache$Companion;->fromDisk$lambda$1(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/replay/ReplayCache$Companion;-><init>()V

    return-void
.end method

.method private static final fromDisk$lambda$1(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11
    .param p0, "$cache"    # Lio/sentry/android/replay/ReplayCache;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 440
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ".jpg"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 442
    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 443
    .local v0, "timestamp":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .end local p0    # "$cache":Lio/sentry/android/replay/ReplayCache;
    .local v4, "$cache":Lio/sentry/android/replay/ReplayCache;
    invoke-static/range {v4 .. v10}, Lio/sentry/android/replay/ReplayCache;->addFrame$default(Lio/sentry/android/replay/ReplayCache;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 443
    .end local v4    # "$cache":Lio/sentry/android/replay/ReplayCache;
    .restart local p0    # "$cache":Lio/sentry/android/replay/ReplayCache;
    :cond_0
    move-object v4, p0

    .end local p0    # "$cache":Lio/sentry/android/replay/ReplayCache;
    .restart local v4    # "$cache":Lio/sentry/android/replay/ReplayCache;
    goto :goto_0

    .line 440
    .end local v0    # "timestamp":Ljava/lang/Long;
    .end local v4    # "$cache":Lio/sentry/android/replay/ReplayCache;
    .end local v5    # "file":Ljava/io/File;
    .restart local p0    # "$cache":Lio/sentry/android/replay/ReplayCache;
    :cond_1
    move-object v4, p0

    .line 447
    .end local p0    # "$cache":Lio/sentry/android/replay/ReplayCache;
    .restart local v4    # "$cache":Lio/sentry/android/replay/ReplayCache;
    :goto_0
    return v3
.end method

.method public static synthetic fromDisk$sentry_android_replay_release$default(Lio/sentry/android/replay/ReplayCache$Companion;Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/android/replay/LastSegmentData;
    .locals 0

    .line 371
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 374
    const/4 p3, 0x0

    .line 371
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/replay/ReplayCache$Companion;->fromDisk$sentry_android_replay_release(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function1;)Lio/sentry/android/replay/LastSegmentData;

    move-result-object p0

    return-object p0
.end method

.method private final recordingMetadata(Ljava/util/Map;)Lio/sentry/android/replay/RecordingMetadata;
    .locals 10
    .param p1, "lastSegment"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/android/replay/RecordingMetadata;"
        }
    .end annotation

    .line 498
    invoke-static {}, Lio/sentry/android/replay/ReplayCache;->access$getRECORDING_METADATA_KEYS$cp()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 564
    .local v1, "$i$f$none":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    goto :goto_0

    .line 565
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 498
    .local v7, "$i$a$-none-ReplayCache$Companion$recordingMetadata$1":I
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 565
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-none-ReplayCache$Companion$recordingMetadata$1":I
    if-eqz v8, :cond_1

    move v0, v3

    goto :goto_0

    .line 566
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v0, v4

    .line 498
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 500
    return-object v1

    .line 502
    :cond_3
    const-string v0, "replay.sdk-name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    .local v0, "sdkName":Ljava/lang/String;
    const-string v2, "replay.sdk-version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    .local v2, "sdkVersion":Ljava/lang/String;
    new-instance v5, Lio/sentry/android/replay/RecordingMetadata;

    .line 505
    const-string v6, "replay.release"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 506
    const-string v7, "replay.environment"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 507
    const-string v8, "replay.dist"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 509
    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v4

    :goto_2
    if-nez v9, :cond_9

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_3

    .line 510
    :cond_8
    new-instance v1, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v1, v0, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_9
    :goto_3
    invoke-direct {v5, v6, v7, v8, v1}, Lio/sentry/android/replay/RecordingMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)V

    return-object v5
.end method


# virtual methods
.method public final deleteExceptSegmentVideos(Ljava/io/File;)V
    .locals 9
    .param p1, "replayCacheDir"    # Ljava/io/File;

    .line 348
    if-nez p1, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 548
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 352
    .local v6, "$i$a$-forEach-ReplayCache$Companion$deleteExceptSegmentVideos$1":I
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mp4"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 353
    :cond_1
    invoke-static {v5}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 355
    :cond_2
    nop

    .line 548
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "$i$a$-forEach-ReplayCache$Companion$deleteExceptSegmentVideos$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_3
    nop

    .line 357
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 358
    return-void
.end method

.method public final fromDisk$sentry_android_replay_release(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;Lkotlin/jvm/functions/Function1;)Lio/sentry/android/replay/LastSegmentData;
    .locals 38
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;
    .param p3, "replayCacheProvider"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Lio/sentry/protocol/SentryId;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)",
            "Lio/sentry/android/replay/LastSegmentData;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ""

    const-string v0, "options"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p0 .. p2}, Lio/sentry/android/replay/ReplayCache$Companion;->makeReplayCacheDir(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)Ljava/io/File;

    move-result-object v5

    .line 377
    .local v5, "replayCacheDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v6, ".ongoing_segment"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 378
    .local v6, "lastSegmentFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "No ongoing segment found for replay: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v4, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-static {v5}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 381
    return-object v7

    .line 384
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v0

    .line 385
    .local v8, "lastSegment":Ljava/util/LinkedHashMap;
    move-object v9, v6

    .line 551
    .local v9, "$this$useLines_u24default$iv":Ljava/io/File;
    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .local v10, "charset$iv":Ljava/nio/charset/Charset;
    const/4 v11, 0x0

    .line 552
    .local v11, "$i$f$useLines":I
    nop

    .line 555
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v12, Ljava/io/InputStream;

    invoke-direct {v0, v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of v12, v0, Ljava/io/BufferedReader;

    if-eqz v12, :cond_1

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v13, 0x2000

    invoke-direct {v12, v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v12

    :goto_0
    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v12

    check-cast v0, Ljava/io/BufferedReader;

    .line 556
    .local v0, "it$iv":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 555
    .local v13, "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v14

    .local v14, "lines":Lkotlin/sequences/Sequence;
    const/4 v15, 0x0

    .line 386
    .local v15, "$i$a$-useLines$default-ReplayCache$Companion$fromDisk$1":I
    move-object/from16 v16, v8

    check-cast v16, Ljava/util/Map;

    .local v16, "destination$iv":Ljava/util/Map;
    move-object/from16 v17, v14

    .local v17, "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    move-object/from16 v18, v16

    .end local v16    # "destination$iv":Ljava/util/Map;
    .local v18, "destination$iv":Ljava/util/Map;
    const/16 v16, 0x0

    .line 557
    .local v16, "$i$f$associateTo":I
    invoke-interface/range {v17 .. v17}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v20, :cond_2

    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 558
    .local v20, "element$iv":Ljava/lang/Object;
    move-object/from16 v23, v20

    check-cast v23, Ljava/lang/String;

    .local v23, "it":Ljava/lang/String;
    const/16 v24, 0x0

    .line 387
    .local v24, "$i$a$-associateTo-ReplayCache$Companion$fromDisk$1$1":I
    move-object/from16 v25, v23

    check-cast v25, Ljava/lang/CharSequence;

    const-string v26, "="

    filled-new-array/range {v26 .. v26}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x2

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x2

    invoke-static/range {v25 .. v30}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v25, v4

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v26, v5

    const/4 v5, 0x1

    .end local v5    # "replayCacheDir":Ljava/io/File;
    .local v4, "k":Ljava/lang/String;
    .local v26, "replayCacheDir":Ljava/io/File;
    :try_start_2
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 388
    .local v5, "v":Ljava/lang/String;
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 558
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    .end local v23    # "it":Ljava/lang/String;
    .end local v24    # "$i$a$-associateTo-ReplayCache$Companion$fromDisk$1$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v7, v18

    .end local v18    # "destination$iv":Ljava/util/Map;
    .local v7, "destination$iv":Ljava/util/Map;
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v7

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    const/4 v7, 0x0

    goto :goto_1

    .line 555
    .end local v0    # "it$iv":Ljava/io/BufferedReader;
    .end local v7    # "destination$iv":Ljava/util/Map;
    .end local v13    # "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    .end local v14    # "lines":Lkotlin/sequences/Sequence;
    .end local v15    # "$i$a$-useLines$default-ReplayCache$Companion$fromDisk$1":I
    .end local v16    # "$i$f$associateTo":I
    .end local v17    # "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    .end local v20    # "element$iv":Ljava/lang/Object;
    .end local v26    # "replayCacheDir":Ljava/io/File;
    .local v5, "replayCacheDir":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v1, p0

    goto/16 :goto_11

    .line 560
    .restart local v0    # "it$iv":Ljava/io/BufferedReader;
    .restart local v13    # "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    .restart local v14    # "lines":Lkotlin/sequences/Sequence;
    .restart local v15    # "$i$a$-useLines$default-ReplayCache$Companion$fromDisk$1":I
    .restart local v16    # "$i$f$associateTo":I
    .restart local v17    # "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    .restart local v18    # "destination$iv":Ljava/util/Map;
    :cond_2
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v7, v18

    const/4 v4, 0x0

    .end local v5    # "replayCacheDir":Ljava/io/File;
    .end local v16    # "$i$f$associateTo":I
    .end local v17    # "$this$associateTo$iv":Lkotlin/sequences/Sequence;
    .end local v18    # "destination$iv":Ljava/util/Map;
    .restart local v26    # "replayCacheDir":Ljava/io/File;
    move-object v5, v7

    check-cast v5, Ljava/util/LinkedHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 389
    nop

    .line 555
    .end local v0    # "it$iv":Ljava/io/BufferedReader;
    .end local v13    # "$i$a$-use-FilesKt__FileReadWriteKt$useLines$2$iv":I
    .end local v14    # "lines":Lkotlin/sequences/Sequence;
    .end local v15    # "$i$a$-useLines$default-ReplayCache$Companion$fromDisk$1":I
    const/4 v5, 0x0

    invoke-static {v12, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 392
    .end local v9    # "$this$useLines_u24default$iv":Ljava/io/File;
    .end local v10    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v11    # "$i$f$useLines":I
    const-string v0, "config.height"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move-object v5, v0

    .line 393
    .local v5, "height":Ljava/lang/Integer;
    const-string v0, "config.width"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move-object v7, v0

    .line 394
    .local v7, "width":Ljava/lang/Integer;
    const-string v0, "config.frame-rate"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move-object v9, v0

    .line 395
    .local v9, "frameRate":Ljava/lang/Integer;
    const-string v0, "config.bit-rate"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move-object v10, v0

    .line 396
    .local v10, "bitRate":Ljava/lang/Integer;
    const-string v0, "segment.id"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    move-object v11, v0

    .line 398
    .local v11, "segmentId":Ljava/lang/Integer;
    nop

    .line 399
    :try_start_3
    const-string v0, "segment.timestamp"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    move-object/from16 v0, v25

    :cond_8
    invoke-static {v0}, Lio/sentry/DateUtils;->getDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 400
    :catchall_1
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 398
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7
    nop

    .line 397
    move-object v12, v0

    .line 404
    .local v12, "segmentTimestamp":Ljava/util/Date;
    nop

    .line 405
    :try_start_4
    const-string v0, "replay.type"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    move-object/from16 v0, v25

    :cond_9
    invoke-static {v0}, Lio/sentry/SentryReplayEvent$ReplayType;->valueOf(Ljava/lang/String;)Lio/sentry/SentryReplayEvent$ReplayType;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    .line 406
    :catchall_2
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 404
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8
    nop

    .line 403
    nop

    .line 409
    .local v0, "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    nop

    .line 410
    if-eqz v5, :cond_1c

    .line 411
    if-eqz v7, :cond_1b

    .line 412
    if-eqz v9, :cond_1a

    .line 413
    if-eqz v10, :cond_19

    .line 414
    if-eqz v11, :cond_18

    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v13, :cond_18

    .line 415
    if-eqz v12, :cond_17

    .line 416
    if-nez v0, :cond_a

    move-object/from16 v1, p0

    move-object/from16 v34, v0

    goto/16 :goto_10

    .line 428
    :cond_a
    new-instance v28, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 430
    move-object/from16 v27, v28

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 429
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 434
    nop

    .line 435
    nop

    .line 431
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 432
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 428
    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-direct/range {v27 .. v33}, Lio/sentry/android/replay/ScreenshotRecorderConfig;-><init>(IIFFII)V

    .line 427
    move-object/from16 v28, v27

    .line 438
    .local v28, "recorderConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    if-eqz v3, :cond_b

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/sentry/android/replay/ReplayCache;

    if-nez v13, :cond_c

    :cond_b
    new-instance v13, Lio/sentry/android/replay/ReplayCache;

    invoke-direct {v13, v1, v2}, Lio/sentry/android/replay/ReplayCache;-><init>(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V

    :cond_c
    move-object/from16 v29, v13

    move-object/from16 v13, v29

    .line 439
    .local v13, "cache":Lio/sentry/android/replay/ReplayCache;
    invoke-virtual {v13}, Lio/sentry/android/replay/ReplayCache;->getReplayCacheDir$sentry_android_replay_release()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_d

    new-instance v15, Lio/sentry/android/replay/ReplayCache$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v15, v13}, Lio/sentry/android/replay/ReplayCache$Companion$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/ReplayCache;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 450
    :cond_d
    invoke-virtual {v13}, Lio/sentry/android/replay/ReplayCache;->getFrames$sentry_android_replay_release()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 451
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v14, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v15, "No frames found for replay: %s, deleting the replay"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v14, v15, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-static/range {v26 .. v26}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 453
    const/16 v21, 0x0

    return-object v21

    .line 456
    :cond_e
    invoke-virtual {v13}, Lio/sentry/android/replay/ReplayCache;->getFrames$sentry_android_replay_release()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$sortBy$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 561
    .local v14, "$i$f$sortBy":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    const/4 v4, 0x1

    if-le v15, v4, :cond_f

    new-instance v4, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortBy$1;

    invoke-direct {v4}, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 562
    :cond_f
    nop

    .line 457
    .end local v1    # "$this$sortBy$iv":Ljava/util/List;
    .end local v14    # "$i$f$sortBy":I
    const-string v1, "replay.flushed"

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lkotlin/text/StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    .line 461
    .local v1, "wasFlushed":Z
    :goto_9
    sget-object v4, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    if-eq v0, v4, :cond_12

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    const/16 v31, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v31, v4

    .line 463
    .local v31, "normalizedSegmentId":I
    :goto_b
    sget-object v4, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    if-ne v0, v4, :cond_13

    .line 464
    move-object/from16 v30, v12

    goto :goto_c

    .line 467
    :cond_13
    invoke-virtual {v13}, Lio/sentry/android/replay/ReplayCache;->getFrames$sentry_android_replay_release()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/replay/ReplayFrame;

    invoke-virtual {v4}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v14

    invoke-static {v14, v15}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v4

    .line 465
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v30, v4

    .line 463
    :goto_c
    nop

    .line 462
    nop

    .line 471
    .local v30, "normalizedTimestamp":Ljava/util/Date;
    invoke-virtual {v13}, Lio/sentry/android/replay/ReplayCache;->getFrames$sentry_android_replay_release()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/replay/ReplayFrame;

    invoke-virtual {v4}, Lio/sentry/android/replay/ReplayFrame;->getTimestamp()J

    move-result-wide v14

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const/16 v4, 0x3e8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    div-int v4, v4, v16

    move-object/from16 v34, v0

    move/from16 v16, v1

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .end local v1    # "wasFlushed":Z
    .local v16, "wasFlushed":Z
    .local v34, "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    int-to-long v0, v4

    add-long v32, v14, v0

    .line 474
    .local v32, "duration":J
    const-string v0, "replay.recording"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    .local v1, "$i$a$-let-ReplayCache$Companion$fromDisk$events$1":I
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 476
    .local v4, "reader":Ljava/io/StringReader;
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v14

    move-object v15, v4

    check-cast v15, Ljava/io/Reader;

    move-object/from16 v17, v0

    .end local v0    # "it":Ljava/lang/String;
    .local v17, "it":Ljava/lang/String;
    const-class v0, Lio/sentry/ReplayRecording;

    invoke-interface {v14, v15, v0}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ReplayRecording;

    .line 477
    .local v0, "recording":Lio/sentry/ReplayRecording;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/sentry/ReplayRecording;->getPayload()Ljava/util/List;

    move-result-object v14

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    :goto_d
    if-eqz v14, :cond_15

    .line 478
    new-instance v14, Ljava/util/LinkedList;

    invoke-virtual {v0}, Lio/sentry/ReplayRecording;->getPayload()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v15, Ljava/util/Collection;

    invoke-direct {v14, v15}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_e

    .line 480
    :cond_15
    const/4 v14, 0x0

    .line 481
    :goto_e
    nop

    .line 474
    .end local v0    # "recording":Lio/sentry/ReplayRecording;
    .end local v1    # "$i$a$-let-ReplayCache$Companion$fromDisk$events$1":I
    .end local v4    # "reader":Ljava/io/StringReader;
    .end local v17    # "it":Ljava/lang/String;
    if-eqz v14, :cond_16

    check-cast v14, Ljava/util/List;

    goto :goto_f

    .line 482
    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 474
    :goto_f
    nop

    .line 473
    nop

    .line 484
    .local v14, "events":Ljava/util/List;
    new-instance v27, Lio/sentry/android/replay/LastSegmentData;

    .line 485
    nop

    .line 486
    nop

    .line 487
    nop

    .line 488
    nop

    .line 489
    nop

    .line 490
    nop

    .line 491
    const-string v0, "replay.screen-at-start"

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    .line 492
    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 563
    .local v1, "$i$f$sortedBy":I
    new-instance v4, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortedBy$1;

    invoke-direct {v4}, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortedBy$1;-><init>()V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v36

    .line 493
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lio/sentry/android/replay/ReplayCache$Companion;->recordingMetadata(Ljava/util/Map;)Lio/sentry/android/replay/RecordingMetadata;

    move-result-object v37

    .line 484
    move-object/from16 v29, v13

    .end local v13    # "cache":Lio/sentry/android/replay/ReplayCache;
    .local v29, "cache":Lio/sentry/android/replay/ReplayCache;
    invoke-direct/range {v27 .. v37}, Lio/sentry/android/replay/LastSegmentData;-><init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Lio/sentry/android/replay/RecordingMetadata;)V

    return-object v27

    .line 415
    .end local v14    # "events":Ljava/util/List;
    .end local v16    # "wasFlushed":Z
    .end local v28    # "recorderConfig":Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .end local v29    # "cache":Lio/sentry/android/replay/ReplayCache;
    .end local v30    # "normalizedTimestamp":Ljava/util/Date;
    .end local v31    # "normalizedSegmentId":I
    .end local v32    # "duration":J
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .local v0, "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_17
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    goto :goto_10

    .line 414
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_18
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    goto :goto_10

    .line 413
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_19
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    goto :goto_10

    .line 412
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_1a
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    goto :goto_10

    .line 411
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_1b
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    goto :goto_10

    .line 410
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :cond_1c
    move-object/from16 v1, p0

    move-object/from16 v34, v0

    .line 418
    .end local v0    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .restart local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 419
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 420
    nop

    .line 421
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v13

    .line 418
    const-string v14, "Incorrect segment values found for replay: %s, deleting the replay"

    invoke-interface {v0, v4, v14, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-static/range {v26 .. v26}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    .line 424
    const/16 v21, 0x0

    return-object v21

    .line 555
    .end local v5    # "height":Ljava/lang/Integer;
    .end local v7    # "width":Ljava/lang/Integer;
    .end local v12    # "segmentTimestamp":Ljava/util/Date;
    .end local v34    # "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    .local v9, "$this$useLines_u24default$iv":Ljava/io/File;
    .local v10, "charset$iv":Ljava/nio/charset/Charset;
    .local v11, "$i$f$useLines":I
    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    move-object v4, v0

    goto :goto_12

    .end local v26    # "replayCacheDir":Ljava/io/File;
    .local v5, "replayCacheDir":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v26, v5

    :goto_11
    move-object v4, v0

    .end local v5    # "replayCacheDir":Ljava/io/File;
    .end local v6    # "lastSegmentFile":Ljava/io/File;
    .end local v8    # "lastSegment":Ljava/util/LinkedHashMap;
    .end local v9    # "$this$useLines_u24default$iv":Ljava/io/File;
    .end local v10    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v11    # "$i$f$useLines":I
    .end local p1    # "options":Lio/sentry/SentryOptions;
    .end local p2    # "replayId":Lio/sentry/protocol/SentryId;
    .end local p3    # "replayCacheProvider":Lkotlin/jvm/functions/Function1;
    :goto_12
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .restart local v6    # "lastSegmentFile":Ljava/io/File;
    .restart local v8    # "lastSegment":Ljava/util/LinkedHashMap;
    .restart local v9    # "$this$useLines_u24default$iv":Ljava/io/File;
    .restart local v10    # "charset$iv":Ljava/nio/charset/Charset;
    .restart local v11    # "$i$f$useLines":I
    .restart local v26    # "replayCacheDir":Ljava/io/File;
    .restart local p1    # "options":Lio/sentry/SentryOptions;
    .restart local p2    # "replayId":Lio/sentry/protocol/SentryId;
    .restart local p3    # "replayCacheProvider":Lkotlin/jvm/functions/Function1;
    :catchall_5
    move-exception v0

    invoke-static {v12, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final makeReplayCacheDir(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)Ljava/io/File;
    .locals 4
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "replayId"    # Lio/sentry/protocol/SentryId;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    .line 363
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 364
    new-array v1, v1, [Ljava/lang/Object;

    .line 362
    const-string v3, "SentryOptions.cacheDirPath is not set, session replay is no-op"

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    const/4 v0, 0x0

    goto :goto_2

    .line 368
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replay_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 550
    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 368
    .local v2, "$i$a$-also-ReplayCache$Companion$makeReplayCacheDir$1":I
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 369
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-also-ReplayCache$Companion$makeReplayCacheDir$1":I
    :goto_2
    return-object v0
.end method
