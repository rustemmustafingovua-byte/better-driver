.class public final Lio/sentry/protocol/ArtContext;
.super Ljava/lang/Object;
.source "ArtContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/ArtContext$JsonKeys;,
        Lio/sentry/protocol/ArtContext$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "art"


# instance fields
.field private freeMemory:Ljava/lang/Long;

.field private freeMemoryUntilGc:Ljava/lang/Long;

.field private freeMemoryUntilOome:Ljava/lang/Long;

.field private gcBlockingCount:Ljava/lang/Long;

.field private gcBlockingTime:Ljava/lang/Double;

.field private gcPreOomeCount:Ljava/lang/Long;

.field private gcTotalCount:Ljava/lang/Long;

.field private gcTotalTime:Ljava/lang/Double;

.field private gcWaitingTime:Ljava/lang/Double;

.field private maxMemory:Ljava/lang/Long;

.field private totalMemory:Ljava/lang/Long;

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
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/ArtContext;)V
    .locals 1
    .param p1, "other"    # Lio/sentry/protocol/ArtContext;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    .line 44
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    .line 45
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    .line 46
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    .line 47
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    .line 48
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    .line 49
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    .line 50
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    .line 51
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    .line 52
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    .line 53
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    .line 54
    iget-object v0, p1, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/ArtContext;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/ArtContext;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/ArtContext;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 169
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 170
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 171
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/ArtContext;

    .line 172
    .local v2, "that":Lio/sentry/protocol/ArtContext;
    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    .line 173
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    .line 174
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    .line 175
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    .line 176
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    .line 177
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    .line 178
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    .line 179
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    .line 180
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    .line 181
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    iget-object v4, v2, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    .line 182
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 170
    .end local v2    # "that":Lio/sentry/protocol/ArtContext;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFreeMemory()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public getFreeMemoryUntilGc()Ljava/lang/Long;
    .locals 1

    .line 129
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    return-object v0
.end method

.method public getFreeMemoryUntilOome()Ljava/lang/Long;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    return-object v0
.end method

.method public getGcBlockingCount()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getGcBlockingTime()Ljava/lang/Double;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    return-object v0
.end method

.method public getGcPreOomeCount()Ljava/lang/Long;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getGcTotalCount()Ljava/lang/Long;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getGcTotalTime()Ljava/lang/Double;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    return-object v0
.end method

.method public getGcWaitingTime()Ljava/lang/Double;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    return-object v0
.end method

.method public getMaxMemory()Ljava/lang/Long;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/Long;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

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

    .line 267
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 11

    .line 187
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    iget-object v2, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    iget-object v3, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    iget-object v4, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    iget-object v5, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    iget-object v6, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    iget-object v7, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    iget-object v8, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    iget-object v9, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    iget-object v10, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 221
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "gc.total_count"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 224
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "gc.total_time"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 227
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "gc.blocking_count"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 230
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 231
    const-string v0, "gc.blocking_time"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 233
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 234
    const-string v0, "gc.pre_oome_count"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 236
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 237
    const-string v0, "gc.waiting_time"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 239
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 240
    const-string v0, "memory.free"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 242
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 243
    const-string v0, "memory.free_until_gc"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 245
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 246
    const-string v0, "memory.free_until_oome"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 248
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 249
    const-string v0, "memory.total"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 251
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 252
    const-string v0, "memory.max"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 254
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 255
    iget-object v0, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 258
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 259
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 261
    :cond_b
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 262
    return-void
.end method

.method public setFreeMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1, "freeMemory"    # Ljava/lang/Long;

    .line 124
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemory:Ljava/lang/Long;

    .line 125
    return-void
.end method

.method public setFreeMemoryUntilGc(Ljava/lang/Long;)V
    .locals 0
    .param p1, "freeMemoryUntilGc"    # Ljava/lang/Long;

    .line 134
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilGc:Ljava/lang/Long;

    .line 135
    return-void
.end method

.method public setFreeMemoryUntilOome(Ljava/lang/Long;)V
    .locals 0
    .param p1, "freeMemoryUntilOome"    # Ljava/lang/Long;

    .line 144
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->freeMemoryUntilOome:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public setGcBlockingCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "gcBlockingCount"    # Ljava/lang/Long;

    .line 84
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingCount:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method public setGcBlockingTime(Ljava/lang/Double;)V
    .locals 0
    .param p1, "gcBlockingTime"    # Ljava/lang/Double;

    .line 94
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcBlockingTime:Ljava/lang/Double;

    .line 95
    return-void
.end method

.method public setGcPreOomeCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "gcPreOomeCount"    # Ljava/lang/Long;

    .line 104
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcPreOomeCount:Ljava/lang/Long;

    .line 105
    return-void
.end method

.method public setGcTotalCount(Ljava/lang/Long;)V
    .locals 0
    .param p1, "gcTotalCount"    # Ljava/lang/Long;

    .line 64
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcTotalCount:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public setGcTotalTime(Ljava/lang/Double;)V
    .locals 0
    .param p1, "gcTotalTime"    # Ljava/lang/Double;

    .line 74
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcTotalTime:Ljava/lang/Double;

    .line 75
    return-void
.end method

.method public setGcWaitingTime(Ljava/lang/Double;)V
    .locals 0
    .param p1, "gcWaitingTime"    # Ljava/lang/Double;

    .line 114
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->gcWaitingTime:Ljava/lang/Double;

    .line 115
    return-void
.end method

.method public setMaxMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1, "maxMemory"    # Ljava/lang/Long;

    .line 164
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->maxMemory:Ljava/lang/Long;

    .line 165
    return-void
.end method

.method public setTotalMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1, "totalMemory"    # Ljava/lang/Long;

    .line 154
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->totalMemory:Ljava/lang/Long;

    .line 155
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

    .line 272
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/ArtContext;->unknown:Ljava/util/Map;

    .line 273
    return-void
.end method
