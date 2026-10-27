.class public final Lio/sentry/cache/PersistingScopeObserver;
.super Lio/sentry/ScopeObserverAdapter;
.source "PersistingScopeObserver.java"


# static fields
.field public static final BREADCRUMBS_FILENAME:Ljava/lang/String; = "breadcrumbs.json"

.field private static final CLEAR_MARKER:Ljava/lang/Object;

.field public static final CONTEXTS_FILENAME:Ljava/lang/String; = "contexts.json"

.field private static final DELETE_MARKER:Ljava/lang/Object;

.field public static final EXTRAS_FILENAME:Ljava/lang/String; = "extras.json"

.field public static final FINGERPRINT_FILENAME:Ljava/lang/String; = "fingerprint.json"

.field public static final LEVEL_FILENAME:Ljava/lang/String; = "level.json"

.field public static final REPLAY_FILENAME:Ljava/lang/String; = "replay.json"

.field public static final REQUEST_FILENAME:Ljava/lang/String; = "request.json"

.field public static final SCOPE_CACHE:Ljava/lang/String; = ".scope-cache"

.field public static final TAGS_FILENAME:Ljava/lang/String; = "tags.json"

.field public static final TRACE_FILENAME:Ljava/lang/String; = "trace.json"

.field public static final TRANSACTION_FILENAME:Ljava/lang/String; = "transaction.json"

.field public static final USER_FILENAME:Ljava/lang/String; = "user.json"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/cache/tape/ObjectQueue<",
            "Lio/sentry/Breadcrumb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private options:Lio/sentry/SentryOptions;

.field private final pendingBreadcrumbs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingWrites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MelWdLdDFO9jcRrjqx6qpg-mZts(Lio/sentry/cache/PersistingScopeObserver;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->flush()V

    return-void
.end method

.method public static synthetic $r8$lambda$SgyH18xAQBNCU8n2fW1RTXp2h2A(Lio/sentry/cache/PersistingScopeObserver;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->writePending()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/PersistingScopeObserver;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/cache/PersistingScopeObserver;->DELETE_MARKER:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/cache/PersistingScopeObserver;->CLEAR_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 136
    invoke-direct {p0}, Lio/sentry/ScopeObserverAdapter;-><init>()V

    .line 66
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 138
    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 42
    sget-object v0, Lio/sentry/cache/PersistingScopeObserver;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/cache/PersistingScopeObserver;)Lio/sentry/SentryOptions;
    .locals 1
    .param p0, "x0"    # Lio/sentry/cache/PersistingScopeObserver;

    .line 42
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method private delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".scope-cache"

    invoke-static {v0, v1, p1}, Lio/sentry/cache/CacheUtils;->delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private enqueue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "entity"    # Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopePersistence()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    if-nez p2, :cond_1

    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->DELETE_MARKER:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->requestFlush()V

    .line 223
    return-void
.end method

.method private flush()V
    .locals 3

    .line 256
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-direct {p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->runSafely(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->requestFlush()V

    .line 266
    :cond_1
    return-void

    .line 261
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    :cond_2
    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->requestFlush()V

    .line 265
    :cond_3
    throw v1
.end method

.method private requestFlush()V
    .locals 4

    .line 232
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 238
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->hasPendingFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Scope persistence flush could not be submitted"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private runSafely(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 320
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Serialization task failed"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 338
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const-string v0, ".scope-cache"

    invoke-static {p0, p1, v0, p2}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private store(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 327
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/cache/PersistingScopeObserver;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private writePending()V
    .locals 8

    .line 276
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    .local v0, "fileNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingWrites:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, "entity":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 282
    goto :goto_0

    .line 284
    :cond_0
    sget-object v3, Lio/sentry/cache/PersistingScopeObserver;->DELETE_MARKER:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 285
    invoke-direct {p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_1
    invoke-direct {p0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "entity":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 291
    :cond_2
    const/4 v1, 0x0

    .line 292
    .local v1, "breadcrumbsChanged":Z
    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v2}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/cache/tape/ObjectQueue;

    .line 295
    .local v2, "queue":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<Lio/sentry/Breadcrumb;>;"
    :goto_2
    iget-object v3, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "operation":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 297
    :try_start_0
    sget-object v3, Lio/sentry/cache/PersistingScopeObserver;->CLEAR_MARKER:Ljava/lang/Object;

    if-ne v4, v3, :cond_3

    .line 298
    invoke-virtual {v2}, Lio/sentry/cache/tape/ObjectQueue;->clear()V

    goto :goto_3

    .line 300
    :cond_3
    move-object v3, v4

    check-cast v3, Lio/sentry/Breadcrumb;

    invoke-virtual {v2, v3}, Lio/sentry/cache/tape/ObjectQueue;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 303
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Ljava/io/IOException;
    iget-object v5, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to apply breadcrumb change to file queue"

    invoke-interface {v5, v6, v7, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_2

    .line 308
    :cond_4
    if-eqz v1, :cond_5

    .line 311
    :try_start_1
    invoke-virtual {v2}, Lio/sentry/cache/tape/ObjectQueue;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    goto :goto_5

    .line 312
    :catch_1
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to sync breadcrumbs file queue"

    invoke-interface {v5, v6, v7, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "crumb"    # Lio/sentry/Breadcrumb;

    .line 147
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopePersistence()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->requestFlush()V

    .line 152
    return-void
.end method

.method synthetic lambda$new$0$io-sentry-cache-PersistingScopeObserver()Lio/sentry/cache/tape/ObjectQueue;
    .locals 7

    .line 69
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".scope-cache"

    invoke-static {v0, v1}, Lio/sentry/cache/CacheUtils;->ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Cache dir is not set, cannot store in scope cache"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->createEmpty()Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v1

    return-object v1

    .line 75
    :cond_0
    const/4 v2, 0x0

    .line 76
    .local v2, "queueFile":Lio/sentry/cache/tape/QueueFile;
    new-instance v3, Ljava/io/File;

    const-string v4, "breadcrumbs.json"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v4, v3}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 81
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v1}, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites(Z)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .local v1, "queueFile":Lio/sentry/cache/tape/QueueFile;
    goto :goto_0

    .line 84
    .end local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .restart local v2    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 92
    new-instance v5, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v5, v3}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    iget-object v6, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v6

    invoke-virtual {v5, v6}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v5

    .line 95
    invoke-virtual {v5, v1}, Lio/sentry/cache/tape/QueueFile$Builder;->synchronousWrites(Z)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .end local v2    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    :goto_0
    nop

    .line 102
    new-instance v2, Lio/sentry/cache/PersistingScopeObserver$1;

    invoke-direct {v2, p0}, Lio/sentry/cache/PersistingScopeObserver$1;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-static {v1, v2}, Lio/sentry/cache/tape/ObjectQueue;->create(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v2

    return-object v2

    .line 98
    .end local v1    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    .restart local v2    # "queueFile":Lio/sentry/cache/tape/QueueFile;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to create breadcrumbs queue"

    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->createEmpty()Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v4

    return-object v4
.end method

.method public read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 345
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "breadcrumbs.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->asList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Unable to read serialized breadcrumbs from QueueFile"

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-object v1

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v0, ".scope-cache"

    invoke-static {p1, v0, p2, p3, v1}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetCache()V
    .locals 4

    .line 366
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    .line 367
    .local v0, "queue":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<Lio/sentry/Breadcrumb;>;"
    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->clear()V

    .line 369
    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "queue":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<Lio/sentry/Breadcrumb;>;"
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to clear breadcrumbs from file queue"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const-string v0, "user.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 376
    const-string v0, "level.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 377
    const-string v0, "request.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 378
    const-string v0, "fingerprint.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 379
    const-string v0, "contexts.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 380
    const-string v0, "extras.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 381
    const-string v0, "tags.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 382
    const-string v0, "trace.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 383
    const-string v0, "transaction.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 384
    const-string v0, "replay.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public setBreadcrumbs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "breadcrumbs":Ljava/util/Collection;, "Ljava/util/Collection<Lio/sentry/Breadcrumb;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopePersistence()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->pendingBreadcrumbs:Ljava/util/Queue;

    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->CLEAR_MARKER:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0}, Lio/sentry/cache/PersistingScopeObserver;->requestFlush()V

    .line 165
    :cond_1
    return-void
.end method

.method public setContexts(Lio/sentry/protocol/Contexts;)V
    .locals 1
    .param p1, "contexts"    # Lio/sentry/protocol/Contexts;

    .line 208
    const-string v0, "contexts.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "extras.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public setFingerprint(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "fingerprint":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "fingerprint.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 189
    const-string v0, "level.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 1
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 213
    const-string v0, "replay.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 1
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 179
    const-string v0, "request.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "tags.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 2
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 201
    nop

    .line 203
    if-nez p1, :cond_0

    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/PropagationContext;->toSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 201
    :goto_0
    const-string v1, "trace.json"

    invoke-direct {p0, v1, v0}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "transaction"    # Ljava/lang/String;

    .line 194
    const-string v0, "transaction.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 1
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 142
    const-string v0, "user.json"

    invoke-direct {p0, v0, p1}, Lio/sentry/cache/PersistingScopeObserver;->enqueue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-void
.end method
