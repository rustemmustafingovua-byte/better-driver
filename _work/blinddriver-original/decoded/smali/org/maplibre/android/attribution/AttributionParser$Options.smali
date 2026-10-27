.class public Lorg/maplibre/android/attribution/AttributionParser$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/attribution/AttributionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private attributionDataStringArray:[Ljava/lang/String;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private withCopyrightSign:Z

.field private withImproveMap:Z

.field private withMapboxAttribution:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withImproveMap:Z

    iput-boolean v0, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withCopyrightSign:Z

    iput-boolean v0, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withMapboxAttribution:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private parseAttribution([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lorg/maplibre/android/attribution/AttributionParser;
    .locals 7

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->attributionDataStringArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->parseAttribution([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lorg/maplibre/android/attribution/AttributionParser;

    iget-object v2, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->context:Ljava/lang/ref/WeakReference;

    iget-boolean v4, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withImproveMap:Z

    iget-boolean v5, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withCopyrightSign:Z

    iget-boolean v6, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withMapboxAttribution:Z

    invoke-direct/range {v1 .. v6}, Lorg/maplibre/android/attribution/AttributionParser;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;ZZZ)V

    invoke-virtual {v1}, Lorg/maplibre/android/attribution/AttributionParser;->parse()V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Using builder without providing attribution data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs withAttributionData([Ljava/lang/String;)Lorg/maplibre/android/attribution/AttributionParser$Options;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->attributionDataStringArray:[Ljava/lang/String;

    return-object p0
.end method

.method public withCopyrightSign(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withCopyrightSign:Z

    return-object p0
.end method

.method public withImproveMap(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withImproveMap:Z

    return-object p0
.end method

.method public withMapboxAttribution(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/attribution/AttributionParser$Options;->withMapboxAttribution:Z

    return-object p0
.end method
