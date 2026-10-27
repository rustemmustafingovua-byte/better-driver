.class public Lcom/baseflow/geolocator/location/AndroidIconResource;
.super Ljava/lang/Object;
.source "AndroidIconResource.java"


# instance fields
.field private final defType:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/baseflow/geolocator/location/AndroidIconResource;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/baseflow/geolocator/location/AndroidIconResource;->defType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/AndroidIconResource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/AndroidIconResource;"
        }
    .end annotation

    .line 10
    .local p0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 11
    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    .local v0, "name":Ljava/lang/String;
    const-string v1, "defType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    .local v1, "defType":Ljava/lang/String;
    new-instance v2, Lcom/baseflow/geolocator/location/AndroidIconResource;

    invoke-direct {v2, v0, v1}, Lcom/baseflow/geolocator/location/AndroidIconResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getDefType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baseflow/geolocator/location/AndroidIconResource;->defType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/baseflow/geolocator/location/AndroidIconResource;->name:Ljava/lang/String;

    return-object v0
.end method
