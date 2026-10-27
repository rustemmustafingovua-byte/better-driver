.class public final Lfd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;


# instance fields
.field public final synthetic a:Lfd/o;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Li9/c;


# direct methods
.method public constructor <init>(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/n;->a:Lfd/o;

    iput-object p2, p0, Lfd/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lfd/n;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lfd/n;->d:Li9/c;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfd/n;->a:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfd/o;->f()V

    return-void
.end method

.method public final onList([Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lorg/maplibre/android/offline/OfflineRegion;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    :goto_0
    iget-object v5, p0, Lfd/n;->b:Ljava/lang/String;

    iget-object v4, p0, Lfd/n;->a:Lfd/o;

    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    invoke-static {v4, v3}, Lfd/o;->c(Lfd/o;Lorg/maplibre/android/offline/OfflineRegion;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "kind"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lfd/b;

    const/4 v8, 0x1

    iget-object v6, p0, Lfd/n;->c:Lorg/json/JSONObject;

    iget-object v7, p0, Lfd/n;->d:Li9/c;

    invoke-direct/range {v3 .. v8}, Lfd/b;-><init>(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;I)V

    invoke-static {v4, v1, v3}, Lfd/o;->b(Lfd/o;Ljava/util/List;Li9/a;)V

    return-void
.end method
