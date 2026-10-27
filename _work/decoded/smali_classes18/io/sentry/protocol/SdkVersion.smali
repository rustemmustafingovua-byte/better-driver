.class public final Lio/sentry/protocol/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SdkVersion$JsonKeys;,
        Lio/sentry/protocol/SdkVersion$Deserializer;
    }
.end annotation


# instance fields
.field private deserializedIntegrations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deserializedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "name is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    .line 75
    const-string v0, "version is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SdkVersion;
    .param p1, "x1"    # Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SdkVersion;
    .param p1, "x1"    # Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    return-object p1
.end method

.method public static updateSdkVersion(Lio/sentry/protocol/SdkVersion;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SdkVersion;
    .locals 1
    .param p0, "sdk"    # Lio/sentry/protocol/SdkVersion;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 124
    const-string v0, "name is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    const-string v0, "version is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v0, p1, p2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p2}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object p0
.end method


# virtual methods
.method public addIntegration(Ljava/lang/String;)V
    .locals 1
    .param p1, "integration"    # Ljava/lang/String;

    .line 99
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 95
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 139
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/SdkVersion;

    .line 141
    .local v2, "that":Lio/sentry/protocol/SdkVersion;
    iget-object v3, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 139
    .end local v2    # "that":Lio/sentry/protocol/SdkVersion;
    :cond_3
    :goto_1
    return v1
.end method

.method public getIntegrationSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryIntegrationPackageStorage;->getIntegrations()Ljava/util/Set;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryIntegrationPackageStorage;->getPackages()Ljava/util/Set;

    move-result-object v0

    .line 103
    :goto_0
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

    .line 162
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 146
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 6
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 176
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 177
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 178
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getPackageSet()Ljava/util/Set;

    move-result-object v0

    .line 179
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/protocol/SentryPackage;>;"
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getIntegrationSet()Ljava/util/Set;

    move-result-object v1

    .line 180
    .local v1, "integrations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, "packages"

    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 183
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    const-string v2, "integrations"

    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 186
    :cond_1
    iget-object v2, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 190
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    const-string v0, "name is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    .line 92
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

    .line 167
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    .line 168
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 83
    const-string v0, "version is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    .line 84
    return-void
.end method
