.class final Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;
.super Ljava/lang/Object;
.source "SentryExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SentryExecutorServiceThreadFactory"
.end annotation


# instance fields
.field private cnt:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/SentryExecutorService$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/SentryExecutorService$1;

    .line 144
    invoke-direct {p0}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SentryExecutorServiceThreadFactory-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;->cnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 151
    .local v0, "ret":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 152
    return-object v0
.end method
