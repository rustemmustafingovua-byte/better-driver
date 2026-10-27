.class public final Lio/sentry/android/core/internal/util/AndroidThreadChecker;
.super Ljava/lang/Object;
.source "AndroidThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IThreadChecker;


# static fields
.field private static final instance:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

.field public static volatile mainThreadSystemId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->instance:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 17
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->mainThreadSystemId:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/sentry/android/core/internal/util/AndroidThreadChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/internal/util/AndroidThreadChecker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->instance:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    return-object v0
.end method

.method public static getThreadId(Ljava/lang/Thread;)J
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Thread;->threadId()J

    move-result-wide v0

    return-wide v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$new$0()V
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->mainThreadSystemId:J

    return-void
.end method


# virtual methods
.method public currentThreadSystemId()J
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCurrentThreadName()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "main"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isMainThread()Z
    .locals 1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public isMainThread(J)Z
    .locals 2
    .param p1, "threadId"    # J

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMainThread(Lio/sentry/protocol/SentryThread;)Z
    .locals 3
    .param p1, "sentryThread"    # Lio/sentry/protocol/SentryThread;

    .line 68
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 69
    .local v0, "threadId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMainThread(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 53
    invoke-static {p1}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread(J)Z

    move-result v0

    return v0
.end method
