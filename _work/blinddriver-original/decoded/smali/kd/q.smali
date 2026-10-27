.class public final synthetic Lkd/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic l:Lkd/x;

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lkd/x;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/q;->l:Lkd/x;

    iput-object p2, p0, Lkd/q;->m:Lr0/u0;

    iput-object p3, p0, Lkd/q;->n:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 8

    const-string v0, "m"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/UiSettings;->setAllGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/UiSettings;->setAttributionEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    new-instance v2, Lb0/p0;

    const/4 v7, 0x1

    iget-object v3, p0, Lkd/q;->l:Lkd/x;

    iget-object v5, p0, Lkd/q;->m:Lr0/u0;

    iget-object v6, p0, Lkd/q;->n:Lr0/u0;

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {p0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    iget-boolean p1, v3, Lkd/x;->r:Z

    if-eqz p1, :cond_0

    const-string p1, "https://tiles.openfreemap.org/styles/dark"

    goto :goto_0

    :cond_0
    const-string p1, "https://tiles.openfreemap.org/styles/liberty"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p0

    new-instance p1, Lkd/r;

    invoke-direct {p1, v2}, Lkd/r;-><init>(Lb0/p0;)V

    invoke-virtual {v4, p0, p1}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method
