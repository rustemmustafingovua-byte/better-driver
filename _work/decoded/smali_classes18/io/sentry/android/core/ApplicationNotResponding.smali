.class final Lio/sentry/android/core/ApplicationNotResponding;
.super Ljava/lang/RuntimeException;
.source "ApplicationNotResponding.java"


# static fields
.field private static final serialVersionUID:J = 0x38134d53dcf0fd8L


# instance fields
.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "Thread must be provided."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    iput-object v0, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    .line 32
    iget-object v0, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/ApplicationNotResponding;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/sentry/android/core/ApplicationNotResponding;->thread:Ljava/lang/Thread;

    return-object v0
.end method
