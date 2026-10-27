.class public final Lio/sentry/protocol/profiling/SentryProfile;
.super Ljava/lang/Object;
.source "SentryProfile.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/profiling/SentryProfile$JsonKeys;,
        Lio/sentry/protocol/profiling/SentryProfile$NestedIntegerListDeserializer;,
        Lio/sentry/protocol/profiling/SentryProfile$Deserializer;
    }
.end annotation


# instance fields
.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/profiling/SentrySample;",
            ">;"
        }
    .end annotation
.end field

.field private stacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private threadMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/profiling/SentryThreadMetadata;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->samples:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->stacks:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->frames:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->threadMetadata:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentryProfile;
    .param p1, "x1"    # Ljava/util/List;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->frames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentryProfile;
    .param p1, "x1"    # Ljava/util/List;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->samples:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentryProfile;
    .param p1, "x1"    # Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->threadMetadata:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/profiling/SentryProfile;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/profiling/SentryProfile;
    .param p1, "x1"    # Ljava/util/List;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->stacks:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->frames:Ljava/util/List;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/profiling/SentrySample;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getStacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->stacks:Ljava/util/List;

    return-object v0
.end method

.method public getThreadMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/profiling/SentryThreadMetadata;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->threadMetadata:Ljava/util/Map;

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

    .line 85
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->unknown:Ljava/util/Map;

    return-object v0
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

    .line 36
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 37
    const-string v0, "samples"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/profiling/SentryProfile;->samples:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 38
    const-string v0, "stacks"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/profiling/SentryProfile;->stacks:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 39
    const-string v0, "frames"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/profiling/SentryProfile;->frames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 40
    const-string v0, "thread_metadata"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/profiling/SentryProfile;->threadMetadata:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 42
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lio/sentry/protocol/profiling/SentryProfile;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/profiling/SentryProfile;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 46
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 49
    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->frames:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setSamples(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/profiling/SentrySample;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "samples":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/profiling/SentrySample;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->samples:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setStacks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 64
    .local p1, "stacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->stacks:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setThreadMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/profiling/SentryThreadMetadata;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "threadMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/profiling/SentryThreadMetadata;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->threadMetadata:Ljava/util/Map;

    .line 81
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

    .line 90
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/profiling/SentryProfile;->unknown:Ljava/util/Map;

    .line 91
    return-void
.end method
