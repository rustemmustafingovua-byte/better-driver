.class public final Lfd/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lfd/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lua/nav/a;

.field public final c:Lx9/l0;

.field public final d:Lx9/l0;

.field public e:Z

.field public f:Lfd/b;

.field public g:Lua/nav/routing/GeoPoint;

.field public h:I

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfd/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfd/o;->Companion:Lfd/c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lua/nav/a;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lfd/o;->b:Lua/nav/a;

    new-instance p1, Lfd/a;

    invoke-direct {p1}, Lfd/a;-><init>()V

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lfd/o;->c:Lx9/l0;

    iput-object p1, p0, Lfd/o;->d:Lx9/l0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfd/o;->i:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfd/o;->j:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V
    .locals 10

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfd/o;->f()V

    return-void

    :cond_0
    invoke-static {p4}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "https://tiles.openfreemap.org/styles/liberty"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v2, "day"

    goto :goto_0

    :cond_1
    const-string v2, "night"

    :goto_0
    const-string v3, "style"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    invoke-interface {p3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegionDefinition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegionDefinition;

    :try_start_1
    invoke-virtual {p0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lfd/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    :try_start_2
    invoke-direct/range {v2 .. v8}, Lfd/g;-><init>(Ljava/lang/String;ZLfd/o;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V

    invoke-virtual {v9, v0, v1, v2}, Lorg/maplibre/android/offline/OfflineManager;->createOfflineRegion(Lorg/maplibre/android/offline/OfflineRegionDefinition;[BLorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;)V

    sget-object p0, Lt8/z;->a:Lt8/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, p0

    goto :goto_2

    :goto_3
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "create"

    :cond_2
    invoke-virtual {v5, p0}, Lfd/o;->e(Ljava/lang/String;)V

    invoke-virtual {v5}, Lfd/o;->f()V

    goto :goto_5

    :cond_3
    move-object v5, p0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "definition"

    :cond_4
    invoke-virtual {v5, p0}, Lfd/o;->e(Ljava/lang/String;)V

    invoke-virtual {v5}, Lfd/o;->f()V

    :cond_5
    :goto_5
    return-void
.end method

.method public static final b(Lfd/o;Ljava/util/List;Li9/a;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    new-instance v1, Lfd/h;

    invoke-direct {v1, p0, p1, p2}, Lfd/h;-><init>(Lfd/o;Ljava/util/List;Li9/a;)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/offline/OfflineRegion;->delete(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V

    return-void
.end method

.method public static final c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegion;->getMetadata()[B

    move-result-object p1

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lt8/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    const-string p1, "app"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bd"

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static final d(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 7

    iget-object v0, p0, Lfd/o;->i:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->getCompletedResourceSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfd/o;->j:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->getRequiredResourceCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->getCompletedResourceCount()J

    move-result-wide v3

    const/16 v1, 0x64

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->getRequiredResourceCount()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3, v2, v1}, Lg6/c1;->f(III)I

    move-result v2

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "area"

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lfd/o;->i(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 11

    const-string v0, "MapCache"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lfd/o;->c:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfd/a;

    const/4 v8, 0x0

    const/16 v10, 0x6f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, p1

    invoke-static/range {v1 .. v10}, Lfd/a;->a(Lfd/a;IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;I)Lfd/a;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfd/o;->e:Z

    iget-object v1, p0, Lfd/o;->f:Lfd/b;

    const/4 v2, 0x0

    iput-object v2, p0, Lfd/o;->f:Lfd/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfd/b;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lfd/o;->j(Z)V

    return-void
.end method

.method public final g()Lorg/maplibre/android/offline/OfflineManager;
    .locals 1

    sget-object v0, Lorg/maplibre/android/offline/OfflineManager;->Companion:Lorg/maplibre/android/offline/OfflineManager$Companion;

    iget-object p0, p0, Lfd/o;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$Companion;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/offline/OfflineManager;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-object p0, p0, Lfd/o;->a:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final i(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 12

    iget-object v0, p0, Lfd/o;->c:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lfd/a;

    const-string v1, "route"

    iget-object v3, p0, Lfd/o;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v1, v6

    const-string v6, "area"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1
    div-long/2addr v4, v8

    long-to-int v4, v4

    iget-object v3, p0, Lfd/o;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    iget v3, v2, Lfd/a;->c:I

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_3
    move v6, p2

    goto :goto_4

    :cond_3
    iget-boolean p2, v2, Lfd/a;->d:Z

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_5
    move v7, p1

    goto :goto_6

    :cond_4
    iget-boolean p1, v2, Lfd/a;->e:Z

    goto :goto_5

    :goto_6
    iget-object v8, p0, Lfd/o;->g:Lua/nav/routing/GeoPoint;

    iget v9, p0, Lfd/o;->h:I

    const/4 v10, 0x0

    const/16 v11, 0x80

    move v3, v1

    invoke-static/range {v2 .. v11}, Lfd/a;->a(Lfd/a;IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;I)Lfd/a;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v0

    new-instance v1, Lfd/m;

    invoke-direct {v1, p0, p1}, Lfd/m;-><init>(Lfd/o;Z)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/offline/OfflineManager;->listOfflineRegions(Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public final k(Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V
    .locals 13

    iget-boolean v0, p0, Lfd/o;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lfd/b;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lfd/b;-><init>(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;I)V

    iput-object v0, p0, Lfd/o;->f:Lfd/b;

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfd/o;->e:Z

    iget-object v0, p0, Lfd/o;->c:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lfd/a;

    const/4 v11, 0x0

    const/16 v12, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lfd/a;->a(Lfd/a;IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;I)Lfd/a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v0

    new-instance v2, Lfd/n;

    move-object/from16 v5, p3

    invoke-direct {v2, p0, p1, p2, v5}, Lfd/n;-><init>(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V

    invoke-virtual {v0, v2}, Lorg/maplibre/android/offline/OfflineManager;->listOfflineRegions(Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V

    sget-object v0, Lt8/z;->a:Lt8/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "replace"

    :cond_1
    invoke-virtual {p0, v0}, Lfd/o;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfd/o;->f()V

    :cond_2
    return-void
.end method
