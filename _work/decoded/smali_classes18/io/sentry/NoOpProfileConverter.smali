.class public final Lio/sentry/NoOpProfileConverter;
.super Ljava/lang/Object;
.source "NoOpProfileConverter.java"

# interfaces
.implements Lio/sentry/IProfileConverter;


# static fields
.field private static final instance:Lio/sentry/NoOpProfileConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpProfileConverter;

    invoke-direct {v0}, Lio/sentry/NoOpProfileConverter;-><init>()V

    sput-object v0, Lio/sentry/NoOpProfileConverter;->instance:Lio/sentry/NoOpProfileConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpProfileConverter;
    .locals 1

    .line 16
    sget-object v0, Lio/sentry/NoOpProfileConverter;->instance:Lio/sentry/NoOpProfileConverter;

    return-object v0
.end method


# virtual methods
.method public convertFromFile(Ljava/lang/String;)Lio/sentry/protocol/profiling/SentryProfile;
    .locals 1
    .param p1, "jfrFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lio/sentry/protocol/profiling/SentryProfile;

    invoke-direct {v0}, Lio/sentry/protocol/profiling/SentryProfile;-><init>()V

    return-object v0
.end method
