.class public final Lfd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;


# instance fields
.field public final synthetic a:Lfd/o;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lorg/maplibre/android/offline/OfflineRegion;


# direct methods
.method public constructor <init>(Lfd/o;Ljava/lang/String;ZLorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/l;->a:Lfd/o;

    iput-object p2, p0, Lfd/l;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lfd/l;->c:Z

    iput-object p4, p0, Lfd/l;->d:Lorg/maplibre/android/offline/OfflineRegion;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatus(Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 6

    iget-object v0, p0, Lfd/l;->a:Lfd/o;

    iget-object v1, v0, Lfd/o;->b:Lua/nav/a;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lfd/l;->b:Ljava/lang/String;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v0, v2, p1}, Lfd/o;->d(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    const-string v3, "area"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lfd/o;->i(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {v0}, Lfd/o;->h()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lua/nav/a;->s:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v1, Lua/nav/a;->w:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lfd/o;->a:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    if-nez v1, :cond_4

    :cond_3
    move v1, v5

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-boolean v3, p0, Lfd/l;->c:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionStatus;->getDownloadState()I

    move-result p1

    if-eq p1, v5, :cond_5

    new-instance p1, Lfd/k;

    iget-object p0, p0, Lfd/l;->d:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-direct {p1, v0, v2, p0}, Lfd/k;-><init>(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegion;)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion;->setObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V

    invoke-virtual {p0, v5}, Lorg/maplibre/android/offline/OfflineRegion;->setDownloadState(I)V

    :cond_5
    :goto_2
    return-void
.end method
