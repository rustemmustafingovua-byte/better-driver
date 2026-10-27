.class public final Lio/sentry/protocol/SentryId;
.super Ljava/lang/Object;
.source "SentryId.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryId$Deserializer;
    }
.end annotation


# static fields
.field public static final EMPTY_ID:Lio/sentry/protocol/SentryId;


# instance fields
.field private final uuid:Ljava/util/UUID;

.field private volatile value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 19
    const-string v1, "00000000-0000-0000-0000-000000000000"

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/util/UUID;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "sentryIdString"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lio/sentry/util/StringUtils;->normalizeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "normalized":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x24

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lio/sentry/protocol/SentryId;->value:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    .line 30
    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lio/sentry/protocol/SentryId;->value:Ljava/lang/String;

    .line 46
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v1, p0, Lio/sentry/protocol/SentryId;->value:Ljava/lang/String;

    move-object v0, v1

    .line 49
    if-nez v0, :cond_1

    .line 51
    iget-object v1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    invoke-static {v1}, Lio/sentry/util/UUIDStringUtils;->toSentryIdString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/protocol/SentryId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lio/sentry/SentryUUID;->generateSentryId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 54
    iput-object v0, p0, Lio/sentry/protocol/SentryId;->value:Ljava/lang/String;

    .line 56
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_2
    :goto_1
    return-object v0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uuidString"    # Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lio/sentry/util/StringUtils;->normalizeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/protocol/SentryId;

    .line 71
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    invoke-direct {p0}, Lio/sentry/protocol/SentryId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 69
    .end local v0    # "sentryId":Lio/sentry/protocol/SentryId;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 76
    invoke-direct {p0}, Lio/sentry/protocol/SentryId;->getValue()Ljava/lang/String;

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

    .line 88
    invoke-virtual {p0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-direct {p0}, Lio/sentry/protocol/SentryId;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
