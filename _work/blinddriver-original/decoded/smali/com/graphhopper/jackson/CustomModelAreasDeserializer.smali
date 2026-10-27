.class public Lcom/graphhopper/jackson/CustomModelAreasDeserializer;
.super Lb6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/n;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/JsonFeatureCollection;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Ls5/o;->a(Ls5/k;)Lb6/q;

    move-result-object p0

    .line 4
    new-instance p2, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-direct {p2}, Lcom/graphhopper/util/JsonFeatureCollection;-><init>()V

    .line 5
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v1

    const-class v2, Lcom/graphhopper/util/JsonFeature;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureCollection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-string v0, "features"

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/q;

    .line 9
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ls5/o;->c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/JsonFeature;

    .line 10
    invoke-virtual {v0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The JsonFeature for the CustomModel area must contain \"id\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lb6/q;->x()Ljava/util/Iterator;

    move-result-object p0

    .line 14
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls5/v;

    invoke-virtual {v1, v3, v2}, Ls5/o;->c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/JsonFeature;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/graphhopper/util/JsonFeature;->setId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {p2}, Lcom/graphhopper/util/CustomModel;->getAreasAsMap(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/Map;

    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p2}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_3

    return-object p2

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JsonFeatureCollection contains duplicate area"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ObjectCodec defined for parser, needed for deserialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/jackson/CustomModelAreasDeserializer;->deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object p0

    return-object p0
.end method
