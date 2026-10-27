.class public final Lio/sentry/android/ndk/DebugImagesLoader;
.super Ljava/lang/Object;
.source "DebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/IDebugImagesLoader;


# static fields
.field private static volatile debugImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field protected static final debugImagesLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private final moduleListLoader:Lio/sentry/ndk/NativeModuleListLoader;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/ndk/NativeModuleListLoader;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "moduleListLoader"    # Lio/sentry/ndk/NativeModuleListLoader;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "The SentryAndroidOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 40
    nop

    .line 41
    const-string v0, "The NativeModuleListLoader is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ndk/NativeModuleListLoader;

    iput-object v0, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/ndk/NativeModuleListLoader;

    .line 42
    return-void
.end method

.method private filterImagesByAddresses(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 122
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    .local p2, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    const-string v2, ""

    const-string v3, "0x"

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    .line 124
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/protocol/DebugImage;>;"
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 125
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/sentry/protocol/DebugImage;

    .line 127
    .local v6, "image":Lio/sentry/protocol/DebugImage;
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v0, v7, :cond_0

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/DebugImage;

    goto :goto_1

    :cond_0
    move-object v0, v8

    :goto_1
    move-object v7, v0

    .line 129
    .local v7, "nextDebugImage":Lio/sentry/protocol/DebugImage;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "nextDebugImageAddress":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 133
    .local v10, "rawAddress":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x10

    invoke-static {v0, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 135
    .local v12, "address":J
    invoke-virtual {v6}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 136
    .local v14, "imageAddress":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 138
    :try_start_1
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    .line 141
    .local v15, "imageStart":J
    invoke-virtual {v6}, Lio/sentry/protocol/DebugImage;->getImageSize()Ljava/lang/Long;

    move-result-object v0

    .line 142
    .local v0, "imageSize":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    add-long v17, v15, v17

    move-wide/from16 v19, v17

    move-object/from16 v18, v0

    .local v17, "imageEnd":J
    goto :goto_3

    .line 144
    .end local v17    # "imageEnd":J
    :cond_2
    if-eqz v8, :cond_3

    .line 145
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v0

    const/16 v0, 0x10

    .end local v0    # "imageSize":Ljava/lang/Long;
    .local v18, "imageSize":Ljava/lang/Long;
    invoke-static {v11, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    .local v19, "imageEnd":J
    goto :goto_3

    .line 147
    .end local v18    # "imageSize":Ljava/lang/Long;
    .end local v19    # "imageEnd":J
    .restart local v0    # "imageSize":Ljava/lang/Long;
    :cond_3
    move-object/from16 v18, v0

    .end local v0    # "imageSize":Ljava/lang/Long;
    .restart local v18    # "imageSize":Ljava/lang/Long;
    const-wide v19, 0x7fffffffffffffffL

    .line 149
    .restart local v19    # "imageEnd":J
    :goto_3
    cmp-long v0, v12, v15

    if-ltz v0, :cond_4

    cmp-long v0, v12, v19

    if-gez v0, :cond_4

    .line 150
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    goto :goto_6

    .line 158
    .end local v15    # "imageStart":J
    .end local v18    # "imageSize":Ljava/lang/Long;
    .end local v19    # "imageEnd":J
    :cond_4
    goto :goto_4

    .line 156
    :catch_0
    move-exception v0

    .line 162
    .end local v12    # "address":J
    .end local v14    # "imageAddress":Ljava/lang/String;
    :cond_5
    :goto_4
    goto :goto_5

    .line 160
    :catch_1
    move-exception v0

    .line 163
    .end local v10    # "rawAddress":Ljava/lang/String;
    :goto_5
    goto :goto_2

    .line 124
    .end local v6    # "image":Lio/sentry/protocol/DebugImage;
    .end local v7    # "nextDebugImage":Lio/sentry/protocol/DebugImage;
    .end local v8    # "nextDebugImageAddress":Ljava/lang/String;
    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 165
    .end local v5    # "i":I
    :cond_7
    return-object v4
.end method


# virtual methods
.method public clearDebugImages()V
    .locals 6

    .line 170
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 172
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/ndk/NativeModuleListLoader;

    invoke-virtual {v2}, Lio/sentry/ndk/NativeModuleListLoader;->clearModuleList()V

    .line 174
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Debug images cleared."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to clear debug images."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 180
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 170
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method getCachedDebugImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 185
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object v0
.end method

.method public loadDebugImages()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 52
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 54
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/ndk/NativeModuleListLoader;

    invoke-virtual {v2}, Lio/sentry/ndk/NativeModuleListLoader;->loadModuleList()[Lio/sentry/ndk/DebugImage;

    move-result-object v2

    .line 55
    .local v2, "debugImagesArr":[Lio/sentry/ndk/DebugImage;
    if-eqz v2, :cond_1

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 57
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 58
    .local v5, "d":Lio/sentry/ndk/DebugImage;
    new-instance v6, Lio/sentry/protocol/DebugImage;

    invoke-direct {v6}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 59
    .local v6, "debugImage":Lio/sentry/protocol/DebugImage;
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getCodeFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setCodeFile(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getDebugFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setDebugFile(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getCodeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setCodeId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setImageAddr(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getImageSize()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setImageSize(Ljava/lang/Long;)V

    .line 67
    invoke-virtual {v5}, Lio/sentry/ndk/DebugImage;->getArch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/sentry/protocol/DebugImage;->setArch(Ljava/lang/String;)V

    .line 68
    sget-object v7, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    nop

    .end local v5    # "d":Lio/sentry/ndk/DebugImage;
    .end local v6    # "debugImage":Lio/sentry/protocol/DebugImage;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 71
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Debug images loaded: %d"

    sget-object v6, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 72
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v2    # "debugImagesArr":[Lio/sentry/ndk/DebugImage;
    :cond_1
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to load debug images."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 79
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object v0

    .line 51
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public loadDebugImagesForAddresses(Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 90
    .local p1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 91
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/ndk/DebugImagesLoader;->loadDebugImages()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v1, "allDebugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    nop

    .line 111
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 93
    :cond_0
    return-object v2

    .line 95
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 96
    nop

    .line 111
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 96
    :cond_2
    return-object v2

    .line 99
    :cond_3
    :try_start_2
    invoke-direct {p0, v1, p1}, Lio/sentry/android/ndk/DebugImagesLoader;->filterImagesByAddresses(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 100
    .local v3, "referencedImages":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/protocol/DebugImage;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    iget-object v4, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 102
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "No debug images found for any of the %d addresses."

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 103
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    nop

    .line 111
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 107
    :cond_4
    return-object v2

    .line 110
    :cond_5
    nop

    .line 111
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 110
    :cond_6
    return-object v3

    .line 90
    .end local v1    # "allDebugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    .end local v3    # "referencedImages":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/protocol/DebugImage;>;"
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw v1
.end method
