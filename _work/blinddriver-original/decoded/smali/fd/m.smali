.class public final Lfd/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;


# instance fields
.field public final synthetic a:Lfd/o;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lfd/o;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/m;->a:Lfd/o;

    iput-boolean p2, p0, Lfd/m;->b:Z

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    const-string p0, "error"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onList([Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/maplibre/android/offline/OfflineRegion;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    iget-object v5, p0, Lfd/m;->a:Lfd/o;

    if-ge v3, v2, :cond_3

    aget-object v6, p1, v3

    invoke-static {v5, v6}, Lfd/o;->c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v4, "style"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "day"

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v5, v2}, Lfd/o;->c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "kind"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "area"

    invoke-static {v6, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lua/nav/routing/GeoPoint;

    const-string v8, "lat"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "lon"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iput-object v7, v5, Lfd/o;->g:Lua/nav/routing/GeoPoint;

    const-string v7, "km"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lfd/o;->h:I

    :cond_5
    new-instance v3, Lfd/l;

    iget-boolean v7, p0, Lfd/m;->b:Z

    invoke-direct {v3, v5, v6, v7, v2}, Lfd/l;-><init>(Lfd/o;Ljava/lang/String;ZLorg/maplibre/android/offline/OfflineRegion;)V

    invoke-virtual {v2, v3}, Lorg/maplibre/android/offline/OfflineRegion;->getStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V

    goto :goto_1

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, p0, v4}, Lfd/o;->i(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
