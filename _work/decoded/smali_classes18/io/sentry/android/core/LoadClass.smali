.class public final Lio/sentry/android/core/LoadClass;
.super Lio/sentry/util/LoadClass;
.source "LoadClass.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Lio/sentry/util/LoadClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lio/sentry/util/LoadClass;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/util/LoadClass;

    invoke-direct {v0}, Lio/sentry/util/LoadClass;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/LoadClass;->delegate:Lio/sentry/util/LoadClass;

    .line 20
    return-void
.end method


# virtual methods
.method public isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 34
    iget-object v0, p0, Lio/sentry/android/core/LoadClass;->delegate:Lio/sentry/util/LoadClass;

    invoke-virtual {v0, p1, p2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v0

    return v0
.end method

.method public isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 39
    iget-object v0, p0, Lio/sentry/android/core/LoadClass;->delegate:Lio/sentry/util/LoadClass;

    invoke-virtual {v0, p1, p2}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v0

    return v0
.end method

.method public loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lio/sentry/android/core/LoadClass;->delegate:Lio/sentry/util/LoadClass;

    invoke-virtual {v0, p1, p2}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
