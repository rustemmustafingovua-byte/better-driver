.class public final Lio/sentry/protocol/Geo;
.super Ljava/lang/Object;
.source "Geo.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Geo$JsonKeys;,
        Lio/sentry/protocol/Geo$Deserializer;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private region:Ljava/lang/String;

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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Geo;)V
    .locals 1
    .param p1, "geo"    # Lio/sentry/protocol/Geo;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Geo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Geo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Geo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Geo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Geo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/Geo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    return-object p1
.end method

.method public static fromMap(Ljava/util/Map;)Lio/sentry/protocol/Geo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/protocol/Geo;"
        }
    .end annotation

    .line 45
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/protocol/Geo;

    invoke-direct {v0}, Lio/sentry/protocol/Geo;-><init>()V

    .line 46
    .local v0, "geo":Lio/sentry/protocol/Geo;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 48
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "country_code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "city"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_2
    const-string v5, "region"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 56
    :pswitch_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    :cond_1
    iput-object v5, v0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    .line 57
    goto :goto_3

    .line 53
    :pswitch_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    :cond_2
    iput-object v5, v0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    .line 54
    goto :goto_3

    .line 50
    :pswitch_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    :cond_3
    iput-object v5, v0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    .line 51
    nop

    .line 61
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 62
    :cond_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_2
        0x2e996b -> :sswitch_1
        0x58475cf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

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

    .line 130
    iget-object v0, p0, Lio/sentry/protocol/Geo;->unknown:Ljava/util/Map;

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

    .line 141
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 142
    iget-object v0, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "city"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 145
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "country_code"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 148
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "region"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 151
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Geo;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lio/sentry/protocol/Geo;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/Geo;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 155
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 156
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 159
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lio/sentry/protocol/Geo;->city:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lio/sentry/protocol/Geo;->countryCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lio/sentry/protocol/Geo;->region:Ljava/lang/String;

    .line 117
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

    .line 135
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/Geo;->unknown:Ljava/util/Map;

    .line 136
    return-void
.end method
