.class public final Lfd/e;
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

    iput-object p1, p0, Lfd/e;->a:Lfd/o;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfd/e;->a:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onList([Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/maplibre/android/offline/OfflineRegion;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    :goto_0
    iget-object v3, p0, Lfd/e;->a:Lfd/o;

    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lfd/o;->c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lad/t;

    const/16 p1, 0xc

    invoke-direct {p0, p1, v3}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v1, p0}, Lfd/o;->b(Lfd/o;Ljava/util/List;Li9/a;)V

    return-void
.end method
