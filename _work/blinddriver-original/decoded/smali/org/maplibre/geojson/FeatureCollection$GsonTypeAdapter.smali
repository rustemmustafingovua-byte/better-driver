.class final Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;
.super Lw7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/geojson/FeatureCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw7/u;"
    }
.end annotation


# instance fields
.field private volatile boundingBoxAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private final gson:Lw7/l;

.field private volatile listFeatureAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private volatile stringAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Le8/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->read(Le8/b;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public read(Le8/b;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 9

    .line 2
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Le8/b;->V()V

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Le8/b;->c()V

    move-object v0, v1

    move-object v3, v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6
    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "bbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v8, v6

    goto :goto_1

    :sswitch_2
    const-string v5, "features"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 10
    invoke-virtual {p1}, Le8/b;->f0()V

    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v1, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->stringAdapter:Lw7/u;

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    const-class v4, Ljava/lang/String;

    .line 13
    invoke-static {v1, v4}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->stringAdapter:Lw7/u;

    .line 15
    :cond_5
    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 16
    :pswitch_1
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->boundingBoxAdapter:Lw7/u;

    if-nez v0, :cond_6

    .line 17
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    const-class v4, Lorg/maplibre/geojson/BoundingBox;

    .line 18
    invoke-static {v0, v4}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->boundingBoxAdapter:Lw7/u;

    .line 20
    :cond_6
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/BoundingBox;

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v3, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->listFeatureAdapter:Lw7/u;

    if-nez v3, :cond_7

    .line 22
    new-array v3, v6, [Ljava/lang/reflect/Type;

    const-class v4, Lorg/maplibre/geojson/Feature;

    aput-object v4, v3, v7

    invoke-static {v3}, Ld8/a;->a([Ljava/lang/reflect/Type;)Ld8/a;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    .line 24
    invoke-virtual {v4, v3}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v3

    .line 25
    iput-object v3, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->listFeatureAdapter:Lw7/u;

    .line 26
    :cond_7
    invoke-virtual {v3, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto/16 :goto_0

    .line 27
    :cond_8
    invoke-virtual {p1}, Le8/b;->m()V

    .line 28
    new-instance p0, Lorg/maplibre/geojson/FeatureCollection;

    invoke-direct {p0, v1, v0, v3}, Lorg/maplibre/geojson/FeatureCollection;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x11531bc3 -> :sswitch_2
        0x2e0a29 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/geojson/FeatureCollection;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->write(Le8/c;Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public write(Le8/c;Lorg/maplibre/geojson/FeatureCollection;)V
    .locals 3

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Le8/c;->d()V

    .line 4
    const-string v0, "type"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->stringAdapter:Lw7/u;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->stringAdapter:Lw7/u;

    .line 11
    :cond_2
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 12
    :goto_0
    const-string v0, "bbox"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->boundingBoxAdapter:Lw7/u;

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    .line 17
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->boundingBoxAdapter:Lw7/u;

    .line 19
    :cond_4
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 20
    :goto_1
    const-string v0, "features"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    .line 22
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_2

    .line 23
    :cond_5
    iget-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->listFeatureAdapter:Lw7/u;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Lorg/maplibre/geojson/Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ld8/a;->a([Ljava/lang/reflect/Type;)Ld8/a;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->gson:Lw7/l;

    .line 26
    invoke-virtual {v1, v0}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/maplibre/geojson/FeatureCollection$GsonTypeAdapter;->listFeatureAdapter:Lw7/u;

    .line 28
    :cond_6
    invoke-virtual {p2}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 29
    :goto_2
    invoke-virtual {p1}, Le8/c;->m()V

    return-void
.end method
