.class public Lio/sentry/cache/EnvelopeCache;
.super Lio/sentry/cache/CacheStrategy;
.source "EnvelopeCache.java"

# interfaces
.implements Lio/sentry/cache/IEnvelopeCache;


# static fields
.field public static final CRASH_MARKER_FILE:Ljava/lang/String; = "last_crash"

.field public static final NATIVE_CRASH_MARKER_FILE:Ljava/lang/String; = ".sentry-native/last_crash"

.field public static final PREFIX_CURRENT_SESSION_FILE:Ljava/lang/String; = "session"

.field public static final PREFIX_PREVIOUS_SESSION_FILE:Ljava/lang/String; = "previous_session"

.field public static final STARTUP_CRASH_MARKER_FILE:Ljava/lang/String; = "startup_crash"

.field public static final SUFFIX_ENVELOPE_FILE:Ljava/lang/String; = ".envelope"

.field static final SUFFIX_SESSION_FILE:Ljava/lang/String; = ".json"


# instance fields
.field protected final cacheLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final fileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/SentryEnvelope;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastPersistedSessionId:Ljava/lang/String;

.field private final previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final sessionLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "cacheDirPath"    # Ljava/lang/String;
    .param p3, "maxCacheItems"    # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/cache/CacheStrategy;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    .line 76
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/EnvelopeCache;->cacheLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 77
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/EnvelopeCache;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 101
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 102
    return-void
.end method

.method private allEnvelopeFiles()[Ljava/io/File;
    .locals 2

    .line 482
    invoke-virtual {p0}, Lio/sentry/cache/EnvelopeCache;->isDirectoryValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    .line 485
    invoke-virtual {v0}, Lio/sentry/util/LazyDirectory;->getFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lio/sentry/cache/EnvelopeCache$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/cache/EnvelopeCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 486
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 487
    return-object v0

    .line 490
    .end local v0    # "files":[Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public static create(Lio/sentry/SentryOptions;)Lio/sentry/cache/IEnvelopeCache;
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 86
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cacheDirPath":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxCacheItems()I

    move-result v1

    .line 88
    .local v1, "maxCacheItems":I
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cacheDirPath is null, returning NoOpEnvelopeCache"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v2

    return-object v2

    .line 92
    :cond_0
    new-instance v2, Lio/sentry/cache/EnvelopeCache;

    invoke-direct {v2, p0, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    return-object v2
.end method

.method public static getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "cacheDirPath"    # Ljava/lang/String;

    .line 444
    new-instance v0, Ljava/io/File;

    const-string v1, "session.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;
    .locals 4
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 430
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->cacheLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 432
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".envelope"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .restart local v1    # "fileName":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    invoke-virtual {v3}, Lio/sentry/util/LazyDirectory;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 439
    :cond_1
    return-object v2

    .line 430
    .end local v1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public static getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "cacheDirPath"    # Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/io/File;

    const-string v1, "previous_session.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private isAlreadyPersisted(Lio/sentry/Session;)Z
    .locals 3
    .param p1, "startingSession"    # Lio/sentry/Session;

    .line 342
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 343
    return v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "startingSessionId":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->lastPersistedSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic lambda$allEnvelopeFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "__"    # Ljava/io/File;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 485
    const-string v0, ".envelope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readSessionFromEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;
    .locals 8
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 294
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    .line 297
    .local v0, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEnvelopeItem;

    .line 300
    .local v1, "item":Lio/sentry/SentryEnvelopeItem;
    sget-object v2, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 303
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v5, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 304
    .local v2, "reader":Ljava/io/Reader;
    :try_start_1
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v3}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISerializer;

    const-class v4, Lio/sentry/Session;

    invoke-interface {v3, v2, v4}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Session;

    .line 305
    .local v3, "session":Lio/sentry/Session;
    if-nez v3, :cond_0

    .line 306
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 307
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Item of type %s returned null by the parser."

    .line 311
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 308
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .end local v3    # "session":Lio/sentry/Session;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_1

    .line 313
    .restart local v3    # "session":Lio/sentry/Session;
    :cond_0
    nop

    .line 315
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 313
    return-object v3

    .line 301
    .end local v3    # "session":Lio/sentry/Session;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/sentry/SentryEnvelopeItem;>;"
    .end local v1    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :goto_0
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v0    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/sentry/SentryEnvelopeItem;>;"
    .restart local v1    # "item":Lio/sentry/SentryEnvelopeItem;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_2
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Item failed to process."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 319
    :cond_1
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 320
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 324
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 321
    const-string v5, "Current envelope has a different envelope type %s"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .end local v1    # "item":Lio/sentry/SentryEnvelopeItem;
    :goto_2
    goto :goto_3

    .line 327
    :cond_2
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Current envelope is empty."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private storeInternal(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 10
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 116
    const-string v0, "Envelope is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    invoke-virtual {v0}, Lio/sentry/util/LazyDirectory;->getOrCreate()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "directoryPath":Ljava/lang/String;
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->allEnvelopeFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/cache/EnvelopeCache;->rotateCacheIfNeeded([Ljava/io/File;)V

    .line 123
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, "currentSessionFile":Ljava/io/File;
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 126
    .local v2, "previousSessionFile":Ljava/io/File;
    const-class v3, Lio/sentry/hints/SessionEnd;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    .line 128
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lio/sentry/cache/EnvelopeCache;->lastPersistedSessionId:Ljava/lang/String;

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    iget-object v5, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Current envelope doesn\'t exist."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4

    .line 135
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    const-class v3, Lio/sentry/hints/AbnormalExit;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Lio/sentry/hints/NativeCrashExit;

    .line 136
    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    :cond_3
    invoke-direct {p0, p2}, Lio/sentry/cache/EnvelopeCache;->tryEndPreviousSession(Lio/sentry/Hint;)V

    .line 140
    :cond_4
    const-class v3, Lio/sentry/hints/SessionStart;

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 141
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    .line 142
    .restart local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    invoke-direct {p0, p1}, Lio/sentry/cache/EnvelopeCache;->readSessionFromEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;

    move-result-object v5

    .line 143
    .local v5, "startingSession":Lio/sentry/Session;
    invoke-direct {p0, v5}, Lio/sentry/cache/EnvelopeCache;->isAlreadyPersisted(Lio/sentry/Session;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 144
    invoke-virtual {p0, v1, v2}, Lio/sentry/cache/EnvelopeCache;->movePreviousSession(Ljava/io/File;Ljava/io/File;)V

    .line 145
    if-eqz v5, :cond_5

    .line 146
    invoke-direct {p0, v1, v5}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    .end local v5    # "startingSession":Lio/sentry/Session;
    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 151
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    const/4 v3, 0x0

    .line 152
    .local v3, "crashedLastRun":Z
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".sentry-native/last_crash"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v5, "crashMarkerFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 154
    const/4 v3, 0x1

    .line 158
    :cond_7
    if-nez v3, :cond_8

    .line 159
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "last_crash"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v6, "javaCrashMarkerFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 161
    iget-object v7, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 162
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v4, v4, [Ljava/lang/Object;

    .line 163
    const-string v9, "Crash marker file exists, crashedLastRun will return true."

    invoke-interface {v7, v8, v9, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_8

    .line 167
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 168
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 172
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 169
    const-string v9, "Failed to delete the crash marker file. %s."

    invoke-interface {v4, v7, v9, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .end local v6    # "javaCrashMarkerFile":Ljava/io/File;
    :cond_8
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/sentry/SentryCrashLastRunState;->setCrashedLastRun(Z)V

    .line 179
    invoke-virtual {p0}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    goto :goto_3

    .line 141
    .end local v5    # "crashMarkerFile":Ljava/io/File;
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_9

    :try_start_3
    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v4

    .line 185
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lio/sentry/cache/EnvelopeCache;->getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    move-result-object v3

    .line 186
    .local v3, "envelopeFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 187
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 188
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 189
    const-string v7, "Not adding Envelope to offline storage because it already exists: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 195
    :cond_b
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 196
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 197
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Adding Envelope to offline storage: %s"

    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, v3, p1}, Lio/sentry/cache/EnvelopeCache;->writeEnvelopeToDisk(Ljava/io/File;Lio/sentry/SentryEnvelope;)Z

    move-result v4

    .line 203
    .local v4, "didWriteToDisk":Z
    const-class v5, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v5}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 204
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->writeCrashMarkerFile()V

    .line 206
    :cond_c
    return v4
.end method

.method private tryEndPreviousSession(Lio/sentry/Hint;)V
    .locals 12
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 220
    invoke-static {p1}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "sdkHint":Ljava/lang/Object;
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    invoke-virtual {v1}, Lio/sentry/util/LazyDirectory;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 223
    .local v1, "previousSessionFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 224
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Previous session is not ended, we\'d need to end it."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 229
    .local v2, "reader":Ljava/io/Reader;
    :try_start_1
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v4}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/ISerializer;

    const-class v5, Lio/sentry/Session;

    invoke-interface {v4, v2, v5}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/Session;

    .line 230
    .local v4, "session":Lio/sentry/Session;
    if-eqz v4, :cond_6

    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, "timestamp":Ljava/util/Date;
    instance-of v6, v0, Lio/sentry/hints/AbnormalExit;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 233
    move-object v6, v0

    check-cast v6, Lio/sentry/hints/AbnormalExit;

    .line 234
    .local v6, "abnormalHint":Lio/sentry/hints/AbnormalExit;
    invoke-interface {v6}, Lio/sentry/hints/AbnormalExit;->timestamp()Ljava/lang/Long;

    move-result-object v9

    .line 236
    .local v9, "abnormalExitTimestamp":Ljava/lang/Long;
    if-eqz v9, :cond_1

    .line 237
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v10

    move-object v5, v10

    .line 239
    invoke-virtual {v4}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v10

    .line 240
    .local v10, "sessionStart":Ljava/util/Date;
    if-eqz v10, :cond_0

    invoke-virtual {v5, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 241
    :cond_0
    iget-object v7, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 242
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v11, "Abnormal exit happened before previous session start, not ending the session."

    new-array v3, v3, [Ljava/lang/Object;

    .line 243
    invoke-interface {v7, v8, v11, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    return-void

    .line 250
    .end local v10    # "sessionStart":Ljava/util/Date;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "abnormalMechanism":Ljava/lang/String;
    sget-object v10, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    invoke-virtual {v4, v10, v8, v7, v3}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 252
    nop

    .end local v3    # "abnormalMechanism":Ljava/lang/String;
    .end local v6    # "abnormalHint":Lio/sentry/hints/AbnormalExit;
    .end local v9    # "abnormalExitTimestamp":Ljava/lang/Long;
    goto :goto_1

    :cond_2
    instance-of v6, v0, Lio/sentry/hints/NativeCrashExit;

    if-eqz v6, :cond_5

    .line 253
    move-object v6, v0

    check-cast v6, Lio/sentry/hints/NativeCrashExit;

    .line 254
    .local v6, "nativeCrashHint":Lio/sentry/hints/NativeCrashExit;
    invoke-interface {v6}, Lio/sentry/hints/NativeCrashExit;->timestamp()Ljava/lang/Long;

    move-result-object v9

    .line 256
    .local v9, "nativeCrashExitTimestamp":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v10

    move-object v5, v10

    .line 258
    invoke-virtual {v4}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v10

    .line 259
    .restart local v10    # "sessionStart":Ljava/util/Date;
    if-eqz v10, :cond_4

    invoke-virtual {v5, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    .line 267
    :cond_3
    sget-object v3, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    invoke-virtual {v4, v3, v8, v7, v8}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_1

    .line 260
    :cond_4
    :goto_0
    iget-object v7, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 261
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v11, "Native crash exit happened before previous session start, not ending the session."

    new-array v3, v3, [Ljava/lang/Object;

    .line 262
    invoke-interface {v7, v8, v11, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 265
    return-void

    .line 271
    .end local v6    # "nativeCrashHint":Lio/sentry/hints/NativeCrashExit;
    .end local v9    # "nativeCrashExitTimestamp":Ljava/lang/Long;
    .end local v10    # "sessionStart":Ljava/util/Date;
    :cond_5
    :goto_1
    :try_start_5
    invoke-virtual {v4, v5}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    .line 272
    invoke-direct {p0, v1, v4}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    .end local v4    # "session":Lio/sentry/Session;
    .end local v5    # "timestamp":Ljava/util/Date;
    :cond_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 226
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sdkHint":Ljava/lang/Object;
    .end local v1    # "previousSessionFile":Ljava/io/File;
    .end local p1    # "hint":Lio/sentry/Hint;
    :goto_2
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 274
    .end local v2    # "reader":Ljava/io/Reader;
    .restart local v0    # "sdkHint":Ljava/lang/Object;
    .restart local v1    # "previousSessionFile":Ljava/io/File;
    .restart local p1    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error processing previous session."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_3
    goto :goto_4

    .line 278
    :cond_7
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "No previous session file to end."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_4
    return-void
.end method

.method private writeCrashMarkerFile()V
    .locals 5

    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_crash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v0, "crashMarkerFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 285
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "timestamp":Ljava/lang/String;
    sget-object v3, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 287
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v2    # "timestamp":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 290
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 284
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "crashMarkerFile":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 288
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "crashMarkerFile":Ljava/io/File;
    :catchall_2
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error writing the crash marker file to the disk"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private writeEnvelopeToDisk(Ljava/io/File;Lio/sentry/SentryEnvelope;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 353
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Overwriting envelope to offline storage: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to delete: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 361
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISerializer;

    invoke-interface {v1, p2, v0}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 367
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 368
    const/4 v0, 0x1

    return v0

    .line 360
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "envelope":Lio/sentry/SentryEnvelope;
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 362
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_2
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 364
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 365
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error writing Envelope %s to offline storage"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    const/4 v1, 0x0

    return v1
.end method

.method private writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "session"    # Lio/sentry/Session;

    .line 372
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 373
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 374
    .local v1, "writer":Ljava/io/Writer;
    :try_start_2
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 375
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Overwriting session to offline storage: %s"

    .line 376
    invoke-virtual {p2}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v2}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISerializer;

    invoke-interface {v2, p2, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 384
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 385
    const/4 v0, 0x1

    return v0

    .line 372
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "session":Lio/sentry/Session;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "session":Lio/sentry/Session;
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "session":Lio/sentry/Session;
    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 379
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "session":Lio/sentry/Session;
    :catchall_4
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 381
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 382
    invoke-virtual {p2}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error writing Session to offline storage: %s"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public discard(Lio/sentry/SentryEnvelope;)V
    .locals 5
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 401
    const-string v0, "Envelope is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    invoke-direct {p0, p1}, Lio/sentry/cache/EnvelopeCache;->getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    move-result-object v0

    .line 404
    .local v0, "envelopeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 406
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Discarding envelope from cache: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 410
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 411
    const-string v4, "Envelope was not cached or could not be deleted: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :goto_0
    return-void
.end method

.method public flushPreviousSession()V
    .locals 1

    .line 506
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 507
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/sentry/SentryEnvelope;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->allEnvelopeFiles()[Ljava/io/File;

    move-result-object v0

    .line 455
    .local v0, "allCachedEnvelopes":[Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelope;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 458
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v6}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/ISerializer;

    invoke-interface {v6, v5}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 458
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "allCachedEnvelopes":[Ljava/io/File;
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelope;>;"
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 468
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "allCachedEnvelopes":[Ljava/io/File;
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelope;>;"
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 470
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 473
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error while reading cached envelope from file %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 471
    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 461
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 462
    .local v5, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 463
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 467
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 464
    const-string v9, "Envelope file \'%s\' disappeared while converting all cached files to envelopes."

    invoke-interface {v6, v7, v9, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 457
    .end local v4    # "file":Ljava/io/File;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public movePreviousSession(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "currentSessionFile"    # Ljava/io/File;
    .param p2, "previousSessionFile"    # Ljava/io/File;

    .line 511
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 512
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 537
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 513
    :cond_0
    return-void

    .line 516
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Previous session file already exists, deleting it."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 520
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Unable to delete previous session file: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    .line 521
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_2
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Moving current session to previous session."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 529
    .local v1, "renamed":Z
    if-nez v1, :cond_3

    .line 530
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Unable to move current session to previous session."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    .end local v1    # "renamed":Z
    :cond_3
    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 534
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error moving current session to previous session."

    .line 535
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 537
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 538
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    return-void

    .line 511
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
.end method

.method public persistCurrentSession(Lio/sentry/Session;)V
    .locals 3
    .param p1, "session"    # Lio/sentry/Session;

    .line 390
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 391
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->directory:Lio/sentry/util/LazyDirectory;

    .line 393
    invoke-virtual {v1}, Lio/sentry/util/LazyDirectory;->getOrCreate()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 392
    invoke-direct {p0, v1, p1}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)Z

    move-result v1

    .line 395
    .local v1, "written":Z
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lio/sentry/cache/EnvelopeCache;->lastPersistedSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v1    # "written":Z
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 397
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 390
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 107
    invoke-direct {p0, p1, p2}, Lio/sentry/cache/EnvelopeCache;->storeInternal(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 108
    return-void
.end method

.method public storeEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 1
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 112
    invoke-direct {p0, p1, p2}, Lio/sentry/cache/EnvelopeCache;->storeInternal(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    move-result v0

    return v0
.end method

.method public waitPreviousSessionFlush()Z
    .locals 6

    .line 496
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 497
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionFlushTimeoutMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 496
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 500
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Timed out waiting for previous session to flush."

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .end local v0    # "e":Ljava/lang/InterruptedException;
    return v4
.end method
