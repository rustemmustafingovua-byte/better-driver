.class abstract Lorg/maplibre/geojson/BaseGeometryTypeAdapter;
.super Lw7/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
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

.field private volatile coordinatesAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private final gson:Lw7/l;

.field private volatile stringAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw7/l;Lw7/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l;",
            "Lw7/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->gson:Lw7/l;

    iput-object p2, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->coordinatesAdapter:Lw7/u;

    new-instance p1, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    invoke-direct {p1}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    iput-object p1, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->boundingBoxAdapter:Lw7/u;

    return-void
.end method


# virtual methods
.method public abstract createCoordinateContainer(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/Object;)Lorg/maplibre/geojson/CoordinateContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/maplibre/geojson/BoundingBox;",
            "TT;)",
            "Lorg/maplibre/geojson/CoordinateContainer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public readCoordinateContainer(Le8/b;)Lorg/maplibre/geojson/CoordinateContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b;",
            ")",
            "Lorg/maplibre/geojson/CoordinateContainer<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Le8/b;->V()V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Le8/b;->c()V

    move-object v0, v1

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "coordinates"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "bbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-virtual {p1}, Le8/b;->f0()V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->coordinatesAdapter:Lw7/u;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string p1, "Coordinates type adapter is null"

    invoke-direct {p0, p1}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v1, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->stringAdapter:Lw7/u;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->gson:Lw7/l;

    const-class v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v1

    iput-object v1, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->stringAdapter:Lw7/u;

    :cond_6
    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->boundingBoxAdapter:Lw7/u;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->gson:Lw7/l;

    const-class v4, Lorg/maplibre/geojson/BoundingBox;

    invoke-static {v0, v4}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->boundingBoxAdapter:Lw7/u;

    :cond_7
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/BoundingBox;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Le8/b;->m()V

    invoke-virtual {p0, v1, v0, v3}, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->createCoordinateContainer(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/Object;)Lorg/maplibre/geojson/CoordinateContainer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e0a29 -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x6f9339fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeCoordinateContainer(Le8/c;Lorg/maplibre/geojson/CoordinateContainer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/c;",
            "Lorg/maplibre/geojson/CoordinateContainer<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    return-void

    :cond_0
    invoke-virtual {p1}, Le8/c;->d()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->stringAdapter:Lw7/u;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->gson:Lw7/l;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->stringAdapter:Lw7/u;

    :cond_2
    invoke-interface {p2}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "bbox"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/maplibre/geojson/GeoJson;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->boundingBoxAdapter:Lw7/u;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->gson:Lw7/l;

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->boundingBoxAdapter:Lw7/u;

    :cond_4
    invoke-interface {p2}, Lorg/maplibre/geojson/GeoJson;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/maplibre/geojson/CoordinateContainer;->coordinates()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->coordinatesAdapter:Lw7/u;

    if-eqz p0, :cond_6

    invoke-interface {p2}, Lorg/maplibre/geojson/CoordinateContainer;->coordinates()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1}, Le8/c;->m()V

    return-void

    :cond_6
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string p1, "Coordinates type adapter is null"

    invoke-direct {p0, p1}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
