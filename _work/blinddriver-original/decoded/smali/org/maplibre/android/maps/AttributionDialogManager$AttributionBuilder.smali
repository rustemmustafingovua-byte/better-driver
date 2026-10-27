.class Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/AttributionDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributionBuilder"
.end annotation


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->build()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private build()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/maplibre/android/attribution/Attribution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style;->getSources()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/style/sources/Source;

    invoke-virtual {v2}, Lorg/maplibre/android/style/sources/Source;->getAttribution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/maplibre/android/attribution/AttributionParser$Options;

    invoke-direct {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser$Options;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withCopyrightSign(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withImproveMap(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withAttributionData([Ljava/lang/String;)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->build()Lorg/maplibre/android/attribution/AttributionParser;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/attribution/AttributionParser;->getAttributions()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
