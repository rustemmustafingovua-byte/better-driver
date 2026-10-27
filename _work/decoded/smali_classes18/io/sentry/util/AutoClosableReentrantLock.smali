.class public final Lio/sentry/util/AutoClosableReentrantLock;
.super Ljava/lang/Object;
.source "AutoClosableReentrantLock.java"

# interfaces
.implements Lio/sentry/ISentryLifecycleToken;


# static fields
.field private static final LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/sentry/util/AutoClosableReentrantLock;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const-class v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    const-class v1, Lio/sentry/util/AutoClosableReentrantLock;

    const-string v2, "lock"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/sentry/util/AutoClosableReentrantLock;->LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrCreateLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 4

    .line 47
    iget-object v0, p0, Lio/sentry/util/AutoClosableReentrantLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    .local v0, "existing":Ljava/util/concurrent/locks/ReentrantLock;
    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 52
    .local v1, "candidate":Ljava/util/concurrent/locks/ReentrantLock;
    sget-object v2, Lio/sentry/util/AutoClosableReentrantLock;->LOCK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    return-object v1

    .line 57
    :cond_1
    iget-object v2, p0, Lio/sentry/util/AutoClosableReentrantLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v3, "lock must have been set by the winning thread"

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    return-object v2
.end method


# virtual methods
.method public acquire()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 37
    invoke-direct {p0}, Lio/sentry/util/AutoClosableReentrantLock;->getOrCreateLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 38
    return-object p0
.end method

.method public close()V
    .locals 2

    .line 43
    iget-object v0, p0, Lio/sentry/util/AutoClosableReentrantLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "close() called before acquire()"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    return-void
.end method

.method isLockAllocated()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lio/sentry/util/AutoClosableReentrantLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLocked()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lio/sentry/util/AutoClosableReentrantLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    .local v0, "current":Ljava/util/concurrent/locks/ReentrantLock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
