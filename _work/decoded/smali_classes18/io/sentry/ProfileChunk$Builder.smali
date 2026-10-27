.class public final Lio/sentry/ProfileChunk$Builder;
.super Ljava/lang/Object;
.source "ProfileChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfileChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final chunkId:Lio/sentry/protocol/SentryId;

.field private contentType:Ljava/lang/String;

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

.field private final platform:Ljava/lang/String;

.field private final profilerId:Lio/sentry/protocol/SentryId;

.field private final timestamp:D

.field private final traceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/util/Map;Ljava/io/File;Lio/sentry/SentryDate;Ljava/lang/String;)V
    .locals 2
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "chunkId"    # Lio/sentry/protocol/SentryId;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "timestamp"    # Lio/sentry/SentryDate;
    .param p6, "platform"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/protocol/SentryId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;",
            "Ljava/io/File;",
            "Lio/sentry/SentryDate;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 200
    .local p3, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lio/sentry/ProfileChunk$Builder;->profilerId:Lio/sentry/protocol/SentryId;

    .line 202
    iput-object p2, p0, Lio/sentry/ProfileChunk$Builder;->chunkId:Lio/sentry/protocol/SentryId;

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/sentry/ProfileChunk$Builder;->measurements:Ljava/util/Map;

    .line 204
    iput-object p4, p0, Lio/sentry/ProfileChunk$Builder;->traceFile:Ljava/io/File;

    .line 205
    invoke-virtual {p5}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/ProfileChunk$Builder;->timestamp:D

    .line 206
    iput-object p6, p0, Lio/sentry/ProfileChunk$Builder;->platform:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method public build(Lio/sentry/SentryOptions;)Lio/sentry/ProfileChunk;
    .locals 8
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 215
    new-instance v0, Lio/sentry/ProfileChunk;

    iget-object v1, p0, Lio/sentry/ProfileChunk$Builder;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v2, p0, Lio/sentry/ProfileChunk$Builder;->chunkId:Lio/sentry/protocol/SentryId;

    iget-object v3, p0, Lio/sentry/ProfileChunk$Builder;->traceFile:Ljava/io/File;

    iget-object v4, p0, Lio/sentry/ProfileChunk$Builder;->measurements:Ljava/util/Map;

    iget-wide v5, p0, Lio/sentry/ProfileChunk$Builder;->timestamp:D

    .line 217
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/ProfileChunk$Builder;->platform:Ljava/lang/String;

    move-object v7, p1

    .end local p1    # "options":Lio/sentry/SentryOptions;
    .local v7, "options":Lio/sentry/SentryOptions;
    invoke-direct/range {v0 .. v7}, Lio/sentry/ProfileChunk;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V

    .line 218
    .local v0, "chunk":Lio/sentry/ProfileChunk;
    iget-object p1, p0, Lio/sentry/ProfileChunk$Builder;->contentType:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/sentry/ProfileChunk;->access$002(Lio/sentry/ProfileChunk;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lio/sentry/ProfileChunk$Builder;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lio/sentry/ProfileChunk$Builder;->contentType:Ljava/lang/String;

    .line 211
    return-object p0
.end method
