.class public final Lio/sentry/protocol/DebugMeta;
.super Ljava/lang/Object;
.source "DebugMeta.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/DebugMeta$JsonKeys;,
        Lio/sentry/protocol/DebugMeta$Deserializer;
    }
.end annotation


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field private sdkInfo:Lio/sentry/protocol/SdkInfo;

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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/DebugMeta;Lio/sentry/protocol/SdkInfo;)Lio/sentry/protocol/SdkInfo;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/DebugMeta;
    .param p1, "x1"    # Lio/sentry/protocol/SdkInfo;

    .line 31
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->sdkInfo:Lio/sentry/protocol/SdkInfo;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/DebugMeta;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/DebugMeta;
    .param p1, "x1"    # Ljava/util/List;

    .line 31
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->images:Ljava/util/List;

    return-object p1
.end method

.method private static addMissingDebugImages(Lio/sentry/protocol/DebugMeta;Ljava/util/List;)V
    .locals 4
    .param p0, "debugMeta"    # Lio/sentry/protocol/DebugMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/DebugMeta;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    if-nez v0, :cond_2

    .line 104
    return-void

    .line 107
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/DebugImage;

    .line 108
    .local v2, "candidate":Lio/sentry/protocol/DebugImage;
    invoke-static {v0, v2}, Lio/sentry/protocol/DebugMeta;->isMissingDebugImage(Ljava/util/List;Lio/sentry/protocol/DebugImage;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v2    # "candidate":Lio/sentry/protocol/DebugImage;
    :cond_3
    goto :goto_0

    .line 112
    :cond_4
    return-void
.end method

.method public static buildDebugMeta(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;
    .locals 2
    .param p0, "eventDebugMeta"    # Lio/sentry/protocol/DebugMeta;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 60
    invoke-static {p1}, Lio/sentry/protocol/DebugMeta;->createDebugImagesFromOptions(Lio/sentry/SentryOptions;)Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "optionDebugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    if-nez p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_0
    if-eqz p0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v1}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 67
    .local v1, "debugMeta":Lio/sentry/protocol/DebugMeta;
    :goto_0
    invoke-static {v1, v0}, Lio/sentry/protocol/DebugMeta;->addMissingDebugImages(Lio/sentry/protocol/DebugMeta;Ljava/util/List;)V

    .line 68
    return-object v1
.end method

.method private static createDebugImagesFromOptions(Lio/sentry/SentryOptions;)Ljava/util/List;
    .locals 5
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "debugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lio/sentry/protocol/DebugImage;

    invoke-direct {v1}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 77
    .local v1, "proguardMappingImage":Lio/sentry/protocol/DebugImage;
    const-string v2, "proguard"

    invoke-virtual {v1, v2}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "proguardMappingImage":Lio/sentry/protocol/DebugImage;
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "bundleId":Ljava/lang/String;
    new-instance v3, Lio/sentry/protocol/DebugImage;

    invoke-direct {v3}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 84
    .local v3, "sourceBundleImage":Lio/sentry/protocol/DebugImage;
    const-string v4, "jvm"

    invoke-virtual {v3, v4}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, v2}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "bundleId":Ljava/lang/String;
    .end local v3    # "sourceBundleImage":Lio/sentry/protocol/DebugImage;
    goto :goto_0

    .line 89
    :cond_1
    return-object v0
.end method

.method private static isMatchingDebugImage(Lio/sentry/protocol/DebugImage;Lio/sentry/protocol/DebugImage;)Z
    .locals 3
    .param p0, "image"    # Lio/sentry/protocol/DebugImage;
    .param p1, "candidate"    # Lio/sentry/protocol/DebugImage;

    .line 128
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "proguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jvm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/protocol/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 133
    :goto_0
    return v2

    .line 138
    :cond_2
    return v2
.end method

.method private static isMissingDebugImage(Ljava/util/List;Lio/sentry/protocol/DebugImage;)Z
    .locals 3
    .param p1, "candidate"    # Lio/sentry/protocol/DebugImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;",
            "Lio/sentry/protocol/DebugImage;",
            ")Z"
        }
    .end annotation

    .line 116
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/DebugImage;

    .line 117
    .local v1, "image":Lio/sentry/protocol/DebugImage;
    invoke-static {v1, p1}, Lio/sentry/protocol/DebugMeta;->isMatchingDebugImage(Lio/sentry/protocol/DebugImage;Lio/sentry/protocol/DebugImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    .end local v1    # "image":Lio/sentry/protocol/DebugImage;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->images:Ljava/util/List;

    return-object v0
.end method

.method public getSdkInfo()Lio/sentry/protocol/SdkInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->sdkInfo:Lio/sentry/protocol/SdkInfo;

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

    .line 152
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->unknown:Ljava/util/Map;

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

    .line 165
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 166
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->sdkInfo:Lio/sentry/protocol/SdkInfo;

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "sdk_info"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/DebugMeta;->sdkInfo:Lio/sentry/protocol/SdkInfo;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 169
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->images:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "images"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/DebugMeta;->images:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 172
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/DebugMeta;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 176
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 178
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 179
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/DebugMeta;->images:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setSdkInfo(Lio/sentry/protocol/SdkInfo;)V
    .locals 0
    .param p1, "sdkInfo"    # Lio/sentry/protocol/SdkInfo;

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->sdkInfo:Lio/sentry/protocol/SdkInfo;

    .line 55
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

    .line 157
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->unknown:Ljava/util/Map;

    .line 158
    return-void
.end method
