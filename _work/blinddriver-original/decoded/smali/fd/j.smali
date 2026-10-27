.class public final Lfd/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;


# instance fields
.field public final synthetic a:Lfd/o;


# direct methods
.method public constructor <init>(Lfd/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/j;->a:Lfd/o;

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
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/maplibre/android/offline/OfflineRegion;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    iget-object v5, p0, Lfd/j;->a:Lfd/o;

    invoke-static {v5, v4}, Lfd/o;->c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "kind"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "area"

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v0

    :goto_2
    if-ge p1, p0, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    check-cast v2, Lorg/maplibre/android/offline/OfflineRegion;

    invoke-virtual {v2, v0}, Lorg/maplibre/android/offline/OfflineRegion;->setDownloadState(I)V

    goto :goto_2

    :cond_4
    return-void
.end method
