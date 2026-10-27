.class public final Lio/sentry/ProfileChunk;
.super Ljava/lang/Object;
.source "ProfileChunk.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfileChunk$JsonKeys;,
        Lio/sentry/ProfileChunk$Deserializer;,
        Lio/sentry/ProfileChunk$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_PERFETTO:Ljava/lang/String; = "application/x-perfetto-trace"

.field public static final PLATFORM_ANDROID:Ljava/lang/String; = "android"

.field public static final PLATFORM_JAVA:Ljava/lang/String; = "java"


# instance fields
.field private chunkId:Lio/sentry/protocol/SentryId;

.field private clientSdk:Lio/sentry/protocol/SdkVersion;

.field private contentType:Ljava/lang/String;

.field private debugMeta:Lio/sentry/protocol/DebugMeta;

.field private environment:Ljava/lang/String;

.field private final measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private profilerId:Lio/sentry/protocol/SentryId;

.field private release:Ljava/lang/String;

.field private sampledProfile:Ljava/lang/String;

.field private sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

.field private timestamp:D

.field private final traceFile:Ljava/io/File;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 50
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 57
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v7

    .line 50
    const/4 v3, 0x0

    const-string v6, "android"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/ProfileChunk;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "chunkId"    # Lio/sentry/protocol/SentryId;
    .param p3, "traceFile"    # Ljava/io/File;
    .param p5, "timestamp"    # Ljava/lang/Double;
    .param p6, "platform"    # Ljava/lang/String;
    .param p7, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/protocol/SentryId;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Lio/sentry/SentryOptions;",
            ")V"
        }
    .end annotation

    .line 67
    .local p4, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    .line 69
    iput-object p2, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    .line 70
    iput-object p3, p0, Lio/sentry/ProfileChunk;->traceFile:Ljava/io/File;

    .line 71
    iput-object p4, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    .line 72
    iput-object v0, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    .line 73
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    .line 74
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    .line 75
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    .line 77
    const-string v0, "2"

    iput-object v0, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    .line 78
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/ProfileChunk;->timestamp:D

    .line 79
    return-void
.end method

.method static synthetic access$002(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->contentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/ProfileChunk;Lio/sentry/protocol/DebugMeta;)Lio/sentry/protocol/DebugMeta;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Lio/sentry/protocol/DebugMeta;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object p1
.end method

.method static synthetic access$1102(Lio/sentry/ProfileChunk;D)D
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # D

    .line 22
    iput-wide p1, p0, Lio/sentry/ProfileChunk;->timestamp:D

    return-wide p1
.end method

.method static synthetic access$1202(Lio/sentry/ProfileChunk;Lio/sentry/protocol/profiling/SentryProfile;)Lio/sentry/protocol/profiling/SentryProfile;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Lio/sentry/protocol/profiling/SentryProfile;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Lio/sentry/protocol/SentryId;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Lio/sentry/protocol/SentryId;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/ProfileChunk;Lio/sentry/protocol/SdkVersion;)Lio/sentry/protocol/SdkVersion;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Lio/sentry/protocol/SdkVersion;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    return-object p1
.end method

.method static synthetic access$500(Lio/sentry/ProfileChunk;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/sentry/ProfileChunk;

    .line 22
    iget-object v0, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/ProfileChunk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Lio/sentry/ProfileChunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 153
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/ProfileChunk;

    .line 154
    .local v1, "that":Lio/sentry/ProfileChunk;
    iget-object v3, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    .line 156
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    .line 158
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    .line 160
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    .line 162
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    .line 163
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    .line 164
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    iget-object v4, v1, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    .line 165
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 154
    :goto_0
    return v0
.end method

.method public getChunkId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getClientSdk()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/sentry/ProfileChunk;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMeta()Lio/sentry/protocol/DebugMeta;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSampledProfile()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getSentryProfile()Lio/sentry/protocol/profiling/SentryProfile;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    return-object v0
.end method

.method public getTimestamp()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lio/sentry/ProfileChunk;->timestamp:D

    return-wide v0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/sentry/ProfileChunk;->traceFile:Ljava/io/File;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 12

    .line 170
    iget-object v0, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    iget-object v1, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v2, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    iget-object v3, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    iget-object v4, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    iget-object v5, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    iget-object v8, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    iget-object v9, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    iget-object v10, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    iget-object v11, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 245
    iget-object v0, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "debug_meta"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 248
    :cond_0
    const-string v0, "profiler_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->profilerId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 249
    const-string v0, "chunk_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 250
    iget-object v0, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "client_sdk"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->clientSdk:Lio/sentry/protocol/SdkVersion;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 253
    :cond_1
    iget-object v0, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->getIndent()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "prevIndent":Ljava/lang/String;
    const-string v1, ""

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->setIndent(Ljava/lang/String;)V

    .line 258
    const-string v1, "measurements"

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/ProfileChunk;->measurements:Ljava/util/Map;

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 259
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->setIndent(Ljava/lang/String;)V

    .line 261
    .end local v0    # "prevIndent":Ljava/lang/String;
    :cond_2
    const-string v0, "platform"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->platform:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 262
    const-string v0, "release"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->release:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 263
    iget-object v0, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 264
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->environment:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 266
    :cond_3
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->version:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 267
    iget-object v0, p0, Lio/sentry/ProfileChunk;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 268
    const-string v0, "content_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->contentType:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 270
    :cond_4
    iget-object v0, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 271
    const-string v0, "sampled_profile"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 273
    :cond_5
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/ProfileChunk;->timestamp:D

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->doubleToBigDecimal(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 274
    iget-object v0, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    if-eqz v0, :cond_6

    .line 275
    const-string v0, "profile"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 277
    :cond_6
    iget-object v0, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 281
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 283
    :cond_7
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 284
    return-void
.end method

.method public setDebugMeta(Lio/sentry/protocol/DebugMeta;)V
    .locals 0
    .param p1, "debugMeta"    # Lio/sentry/protocol/DebugMeta;

    .line 90
    iput-object p1, p0, Lio/sentry/ProfileChunk;->debugMeta:Lio/sentry/protocol/DebugMeta;

    .line 91
    return-void
.end method

.method public setSampledProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "sampledProfile"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lio/sentry/ProfileChunk;->sampledProfile:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setSentryProfile(Lio/sentry/protocol/profiling/SentryProfile;)V
    .locals 0
    .param p1, "sentryProfile"    # Lio/sentry/protocol/profiling/SentryProfile;

    .line 146
    iput-object p1, p0, Lio/sentry/ProfileChunk;->sentryProfile:Lio/sentry/protocol/profiling/SentryProfile;

    .line 147
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/ProfileChunk;->unknown:Ljava/util/Map;

    .line 295
    return-void
.end method
