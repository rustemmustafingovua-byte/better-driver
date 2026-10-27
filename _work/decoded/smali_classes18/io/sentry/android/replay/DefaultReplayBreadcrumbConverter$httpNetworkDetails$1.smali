.class public final Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;
.super Ljava/util/LinkedHashMap;
.source "DefaultReplayBreadcrumbConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lio/sentry/Breadcrumb;",
        "Lio/sentry/util/network/NetworkRequestData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\'\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "io/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1",
        "Ljava/util/LinkedHashMap;",
        "Lio/sentry/Breadcrumb;",
        "Lio/sentry/util/network/NetworkRequestData;",
        "Lkotlin/collections/LinkedHashMap;",
        "removeEldestEntry",
        "",
        "eldest",
        "",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge containsKey(Lio/sentry/Breadcrumb;)Z
    .locals 1
    .param p1, "key"    # Lio/sentry/Breadcrumb;

    .line 82
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->containsKey(Lio/sentry/Breadcrumb;)Z

    move-result v0

    return v0
.end method

.method public bridge containsValue(Lio/sentry/util/network/NetworkRequestData;)Z
    .locals 1
    .param p1, "value"    # Lio/sentry/util/network/NetworkRequestData;

    .line 82
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/util/network/NetworkRequestData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/util/network/NetworkRequestData;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->containsValue(Lio/sentry/util/network/NetworkRequestData;)Z

    move-result v0

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lio/sentry/Breadcrumb;",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge get(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Lio/sentry/Breadcrumb;

    .line 82
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/network/NetworkRequestData;

    return-object v0
.end method

.method public final bridge get(Ljava/lang/Object;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->get(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->get(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lio/sentry/Breadcrumb;",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;>;"
        }
    .end annotation

    .line 82
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getOrDefault(Lio/sentry/Breadcrumb;Lio/sentry/util/network/NetworkRequestData;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Lio/sentry/Breadcrumb;
    .param p2, "defaultValue"    # Lio/sentry/util/network/NetworkRequestData;

    .line 82
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/network/NetworkRequestData;

    return-object v0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Lio/sentry/util/network/NetworkRequestData;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Lio/sentry/util/network/NetworkRequestData;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0, p2}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getOrDefault(Lio/sentry/Breadcrumb;Lio/sentry/util/network/NetworkRequestData;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    move-object v1, p2

    check-cast v1, Lio/sentry/util/network/NetworkRequestData;

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getOrDefault(Lio/sentry/Breadcrumb;Lio/sentry/util/network/NetworkRequestData;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 82
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Lio/sentry/Breadcrumb;

    .line 82
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/network/NetworkRequestData;

    return-object v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->remove(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->remove(Lio/sentry/Breadcrumb;)Lio/sentry/util/network/NetworkRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Lio/sentry/Breadcrumb;Lio/sentry/util/network/NetworkRequestData;)Z
    .locals 1
    .param p1, "key"    # Lio/sentry/Breadcrumb;
    .param p2, "value"    # Lio/sentry/util/network/NetworkRequestData;

    .line 82
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lio/sentry/Breadcrumb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lio/sentry/util/network/NetworkRequestData;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    move-object v1, p2

    check-cast v1, Lio/sentry/util/network/NetworkRequestData;

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->remove(Lio/sentry/Breadcrumb;Lio/sentry/util/network/NetworkRequestData;)Z

    move-result v0

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lio/sentry/Breadcrumb;",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;)Z"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/sentry/util/network/NetworkRequestData;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
