.class public final Lio/sentry/exception/ExceptionMechanismException;
.super Ljava/lang/RuntimeException;
.source "ExceptionMechanismException.java"


# static fields
.field private static final serialVersionUID:J = 0x1f9b66fbce644fbL


# instance fields
.field private final exceptionMechanism:Lio/sentry/protocol/Mechanism;

.field private final snapshot:Z

.field private final thread:Ljava/lang/Thread;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "mechanism"    # Lio/sentry/protocol/Mechanism;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "thread"    # Ljava/lang/Thread;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 1
    .param p1, "mechanism"    # Lio/sentry/protocol/Mechanism;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "thread"    # Ljava/lang/Thread;
    .param p4, "snapshot"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    const-string v0, "Mechanism is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Mechanism;

    iput-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->exceptionMechanism:Lio/sentry/protocol/Mechanism;

    .line 43
    const-string v0, "Throwable is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->throwable:Ljava/lang/Throwable;

    .line 44
    iput-object p3, p0, Lio/sentry/exception/ExceptionMechanismException;->thread:Ljava/lang/Thread;

    .line 45
    iput-boolean p4, p0, Lio/sentry/exception/ExceptionMechanismException;->snapshot:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getExceptionMechanism()Lio/sentry/protocol/Mechanism;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->exceptionMechanism:Lio/sentry/protocol/Mechanism;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lio/sentry/exception/ExceptionMechanismException;->snapshot:Z

    return v0
.end method
