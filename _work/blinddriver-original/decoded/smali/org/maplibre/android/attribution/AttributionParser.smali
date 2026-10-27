.class public Lorg/maplibre/android/attribution/AttributionParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/attribution/AttributionParser$Options;
    }
.end annotation


# instance fields
.field private final attributionData:Ljava/lang/String;

.field private final attributions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/maplibre/android/attribution/Attribution;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final withCopyrightSign:Z

.field private final withImproveMap:Z

.field private final withMapboxAttribution:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionParser;->context:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributionData:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/maplibre/android/attribution/AttributionParser;->withImproveMap:Z

    iput-boolean p4, p0, Lorg/maplibre/android/attribution/AttributionParser;->withCopyrightSign:Z

    iput-boolean p5, p0, Lorg/maplibre/android/attribution/AttributionParser;->withMapboxAttribution:Z

    return-void
.end method

.method private static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private isUrlValid(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/maplibre/android/attribution/AttributionParser;->isValidForImproveThisMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/attribution/AttributionParser;->isValidForMapbox(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidForImproveThisMap(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/attribution/AttributionParser;->withImproveMap:Z

    if-nez p0, :cond_1

    sget-object p0, Lorg/maplibre/android/attribution/Attribution;->IMPROVE_MAP_URLS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidForMapbox(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/attribution/AttributionParser;->withMapboxAttribution:Z

    if-nez p0, :cond_1

    const-string p0, "https://www.mapbox.com/about/maps/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private parseAnchorValue(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    sub-int v1, p2, v0

    new-array v1, v1, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/attribution/AttributionParser;->stripCopyright(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAttributions()V
    .locals 5

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributionData:Ljava/lang/String;

    invoke-static {v0}, Lorg/maplibre/android/attribution/AttributionParser;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v0, v4}, Lorg/maplibre/android/attribution/AttributionParser;->parseUrlSpan(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseUrlSpan(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 2

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser;->isUrlValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/attribution/AttributionParser;->parseAnchorValue(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    new-instance p2, Lorg/maplibre/android/attribution/Attribution;

    invoke-direct {p2, p1, v0}, Lorg/maplibre/android/attribution/Attribution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private stripCopyright(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean p0, p0, Lorg/maplibre/android/attribution/AttributionParser;->withCopyrightSign:Z

    if-nez p0, :cond_0

    const-string p0, "\u00a9 "

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createAttributionString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/maplibre/android/attribution/AttributionParser;->createAttributionString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createAttributionString(Z)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/maplibre/android/attribution/AttributionParser;->withCopyrightSign:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u00a9 "

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/attribution/Attribution;

    add-int/lit8 v2, v2, 0x1

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {v3}, Lorg/maplibre/android/attribution/Attribution;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/maplibre/android/attribution/Attribution;->getTitleAbbreviated()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 7
    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/maplibre/android/attribution/Attribution;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/Set;

    return-object p0
.end method

.method public parse()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionParser;->parseAttributions()V

    return-void
.end method
