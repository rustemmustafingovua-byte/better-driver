.class final Lio/sentry/SentryExecutorService$SentryExecutorServiceThread;
.super Ljava/lang/Thread;
.source "SentryExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SentryExecutorServiceThread"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 159
    return-void
.end method
