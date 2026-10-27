.class public final Lio/sentry/SpanId;
.super Ljava/lang/Object;
.source "SpanId.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SpanId$Deserializer;
    }
.end annotation


# static fields
.field public static final EMPTY_ID:Lio/sentry/SpanId;


# instance fields
.field private volatile value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lio/sentry/SpanId;

    .line 12
    const-string v1, "00000000-0000-0000-0000-000000000000"

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "value is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 24
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v1, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    move-object v0, v1

    .line 27
    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lio/sentry/SentryUUID;->generateSpanId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 29
    iput-object v0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 31
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 39
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/SpanId;

    .line 41
    .local v0, "spanId":Lio/sentry/SpanId;
    invoke-direct {p0}, Lio/sentry/SpanId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0}, Lio/sentry/SpanId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 39
    .end local v0    # "spanId":Lio/sentry/SpanId;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 46
    invoke-direct {p0}, Lio/sentry/SpanId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lio/sentry/SpanId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-direct {p0}, Lio/sentry/SpanId;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
