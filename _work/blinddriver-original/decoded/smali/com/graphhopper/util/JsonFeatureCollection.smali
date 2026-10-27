.class public Lcom/graphhopper/util/JsonFeatureCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/JsonFeature;",
            ">;"
        }
    .end annotation
.end field

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FeatureCollection"

    iput-object v0, p0, Lcom/graphhopper/util/JsonFeatureCollection;->type:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/JsonFeatureCollection;->features:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/JsonFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeatureCollection;->features:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeatureCollection;->type:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeatureCollection;->features:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
