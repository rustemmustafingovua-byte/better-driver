.class public final Lio/sentry/protocol/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/User$JsonKeys;,
        Lio/sentry/protocol/User$Deserializer;
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private geo:Lio/sentry/protocol/Geo;

.field private id:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
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

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/User;)V
    .locals 1
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    iput-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    .line 63
    iget-object v0, p1, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    .line 64
    iget-object v0, p1, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    .line 65
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/User;Lio/sentry/protocol/Geo;)Lio/sentry/protocol/Geo;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Lio/sentry/protocol/Geo;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/User;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/User;
    .param p1, "x1"    # Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-object p1
.end method

.method public static fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/protocol/User;
    .locals 14
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/protocol/User;"
        }
    .end annotation

    .line 79
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 80
    .local v0, "user":Lio/sentry/protocol/User;
    const/4 v1, 0x0

    .line 82
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 84
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "ip_address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_2

    :sswitch_2
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_3
    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_4
    const-string v6, "geo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_5
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_6
    const-string v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 133
    if-nez v1, :cond_c

    .line 134
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v5

    goto/16 :goto_7

    .line 117
    :pswitch_0
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v6, v4

    check-cast v6, Ljava/util/Map;

    .line 118
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    if-eqz v6, :cond_d

    .line 119
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 120
    .local v5, "userData":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 121
    .local v9, "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 122
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 124
    :cond_2
    nop

    .line 125
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    sget-object v11, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v12, v7, [Ljava/lang/Object;

    .line 126
    const-string v13, "Invalid key or null value in data map."

    invoke-interface {v10, v11, v13, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .end local v9    # "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_4
    goto :goto_3

    .line 129
    :cond_3
    iput-object v5, v0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    .line 130
    .end local v5    # "userData":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_8

    .line 102
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_1
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Ljava/util/Map;

    .line 103
    .local v6, "geo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v6, :cond_d

    .line 104
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 105
    .local v5, "geoData":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 106
    .local v9, "geoEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 107
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 109
    :cond_5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    sget-object v11, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v12, "Invalid key type in gep map."

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .end local v9    # "geoEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_6
    goto :goto_5

    .line 112
    :cond_6
    invoke-static {v5}, Lio/sentry/protocol/Geo;->fromMap(Ljava/util/Map;)Lio/sentry/protocol/Geo;

    move-result-object v7

    iput-object v7, v0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    .line 113
    .end local v5    # "geoData":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_8

    .line 98
    .end local v6    # "geo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_7
    iput-object v6, v0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    .line 99
    goto :goto_8

    .line 95
    :pswitch_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_8

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_8
    iput-object v6, v0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 96
    goto :goto_8

    .line 92
    :pswitch_4
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_9
    iput-object v6, v0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 93
    goto :goto_8

    .line 89
    :pswitch_5
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_a
    iput-object v6, v0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 90
    goto :goto_8

    .line 86
    :pswitch_6
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    :cond_b
    iput-object v6, v0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    .line 87
    goto :goto_8

    .line 136
    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_d
    :goto_8
    goto/16 :goto_0

    .line 140
    :cond_e
    iput-object v1, v0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    .line 141
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xfd6772a -> :sswitch_6
        0xd1b -> :sswitch_5
        0x18f51 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x583738dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 277
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 278
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/User;

    .line 279
    .local v2, "user":Lio/sentry/protocol/User;
    iget-object v3, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 280
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 281
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 282
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 277
    .end local v2    # "user":Lio/sentry/protocol/User;
    :cond_3
    :goto_1
    return v1
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lio/sentry/protocol/Geo;
    .locals 1

    .line 244
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

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

    .line 295
    iget-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 287
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

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

    .line 316
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 317
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "email"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 320
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 323
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "username"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 326
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 327
    const-string v0, "ip_address"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 329
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 330
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 332
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    if-eqz v0, :cond_5

    .line 333
    const-string v0, "geo"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 334
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Geo;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 336
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 337
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 339
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 340
    iget-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

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

    .line 341
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 342
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 343
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 344
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 346
    :cond_7
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 347
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    .line 272
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setGeo(Lio/sentry/protocol/Geo;)V
    .locals 0
    .param p1, "geo"    # Lio/sentry/protocol/Geo;

    .line 253
    iput-object p1, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    .line 254
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iput-object p1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    .line 236
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

    .line 300
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    .line 301
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 196
    return-void
.end method
