.class public final Lio/sentry/protocol/Gpu;
.super Ljava/lang/Object;
.source "Gpu.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Gpu$JsonKeys;,
        Lio/sentry/protocol/Gpu$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "gpu"


# instance fields
.field private apiType:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private memorySize:Ljava/lang/Integer;

.field private multiThreadedRendering:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private npotSupport:Ljava/lang/String;

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

.field private vendorId:Ljava/lang/String;

.field private vendorName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/Gpu;)V
    .locals 1
    .param p1, "gpu"    # Lio/sentry/protocol/Gpu;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    .line 60
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    .line 63
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    .line 65
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Gpu;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Gpu;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/Gpu;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/Gpu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Gpu;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/Gpu;

    .line 147
    .local v2, "gpu":Lio/sentry/protocol/Gpu;
    iget-object v3, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    .line 148
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    .line 149
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    .line 150
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    .line 151
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    .line 152
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    .line 153
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    .line 154
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    .line 155
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 145
    .end local v2    # "gpu":Lio/sentry/protocol/Gpu;
    :cond_3
    :goto_1
    return v1
.end method

.method public getApiType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemorySize()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNpotSupport()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

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

    .line 230
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 160
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    iget-object v2, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    iget-object v5, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    iget-object v7, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    iget-object v8, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMultiThreadedRendering()Ljava/lang/Boolean;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    return-object v0
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

    .line 189
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 190
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 193
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 196
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "vendor_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 199
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 200
    const-string v0, "vendor_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 202
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 203
    const-string v0, "memory_size"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 205
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 206
    const-string v0, "api_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 208
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 209
    const-string v0, "multi_threaded_rendering"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 211
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 212
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 214
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 215
    const-string v0, "npot_support"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 217
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 221
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 222
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 224
    :cond_9
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 225
    return-void
.end method

.method public setApiType(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiType"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->apiType:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .line 83
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->id:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setMemorySize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "memorySize"    # Ljava/lang/Integer;

    .line 107
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->memorySize:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setMultiThreadedRendering(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "multiThreadedRendering"    # Ljava/lang/Boolean;

    .line 123
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->multiThreadedRendering:Ljava/lang/Boolean;

    .line 124
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNpotSupport(Ljava/lang/String;)V
    .locals 0
    .param p1, "npotSupport"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->npotSupport:Ljava/lang/String;

    .line 140
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

    .line 235
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->unknown:Ljava/util/Map;

    .line 236
    return-void
.end method

.method public setVendorId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorId"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->vendorId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setVendorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->vendorName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lio/sentry/protocol/Gpu;->version:Ljava/lang/String;

    .line 132
    return-void
.end method
