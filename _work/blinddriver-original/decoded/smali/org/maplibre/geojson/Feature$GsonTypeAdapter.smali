.class final Lorg/maplibre/geojson/Feature$GsonTypeAdapter;
.super Lw7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/geojson/Feature;
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
.field private volatile boundingBoxTypeAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private volatile geometryTypeAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private final gson:Lw7/l;

.field private volatile jsonObjectTypeAdapter:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u;"
        }
    .end annotation
.end field

.field private volatile stringTypeAdapter:Lw7/u;
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

    iput-object p1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Le8/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->read(Le8/b;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public read(Le8/b;)Lorg/maplibre/geojson/Feature;
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

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 5
    :goto_0
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "geometry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "bbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 10
    :goto_1
    const-class v0, Ljava/lang/String;

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Le8/b;->f0()V

    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->geometryTypeAdapter:Lw7/u;

    if-nez v0, :cond_7

    .line 12
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lorg/maplibre/geojson/Geometry;

    .line 13
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->geometryTypeAdapter:Lw7/u;

    .line 15
    :cond_7
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/Geometry;

    move-object v7, v0

    goto :goto_0

    .line 16
    :pswitch_1
    iget-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    if-nez v1, :cond_8

    .line 17
    iget-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    .line 18
    invoke-static {v1, v0}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v1

    .line 19
    iput-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    .line 20
    :cond_8
    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto/16 :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->boundingBoxTypeAdapter:Lw7/u;

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    .line 23
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->boundingBoxTypeAdapter:Lw7/u;

    .line 25
    :cond_9
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/BoundingBox;

    move-object v5, v0

    goto/16 :goto_0

    .line 26
    :pswitch_3
    iget-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    if-nez v1, :cond_a

    .line 27
    iget-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    .line 28
    invoke-static {v1, v0}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v1

    .line 29
    iput-object v1, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    .line 30
    :cond_a
    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_0

    .line 31
    :pswitch_4
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->jsonObjectTypeAdapter:Lw7/u;

    if-nez v0, :cond_b

    .line 32
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lcom/google/gson/JsonObject;

    .line 33
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->jsonObjectTypeAdapter:Lw7/u;

    .line 35
    :cond_b
    invoke-virtual {v0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    move-object v8, v0

    goto/16 :goto_0

    .line 36
    :cond_c
    invoke-virtual {p1}, Le8/b;->m()V

    .line 37
    new-instance v3, Lorg/maplibre/geojson/Feature;

    invoke-direct/range {v3 .. v8}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x373272cd -> :sswitch_4
        0xd1b -> :sswitch_3
        0x2e0a29 -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x6e080872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/geojson/Feature;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->write(Le8/c;Lorg/maplibre/geojson/Feature;)V

    return-void
.end method

.method public write(Le8/c;Lorg/maplibre/geojson/Feature;)V
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
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    .line 6
    const-class v1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    .line 8
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    .line 10
    :cond_1
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 11
    const-string v0, "bbox"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->boundingBoxTypeAdapter:Lw7/u;

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v2, Lorg/maplibre/geojson/BoundingBox;

    .line 16
    invoke-static {v0, v2}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->boundingBoxTypeAdapter:Lw7/u;

    .line 18
    :cond_3
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 19
    :goto_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 21
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_1

    .line 22
    :cond_4
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    .line 24
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->stringTypeAdapter:Lw7/u;

    .line 26
    :cond_5
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 27
    :goto_1
    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v0

    if-nez v0, :cond_6

    .line 29
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_2

    .line 30
    :cond_6
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->geometryTypeAdapter:Lw7/u;

    if-nez v0, :cond_7

    .line 31
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lorg/maplibre/geojson/Geometry;

    .line 32
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->geometryTypeAdapter:Lw7/u;

    .line 34
    :cond_7
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 35
    :goto_2
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Le8/c;->n(Ljava/lang/String;)V

    .line 36
    invoke-static {p2}, Lorg/maplibre/geojson/Feature;->access$000(Lorg/maplibre/geojson/Feature;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_8

    .line 37
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_3

    .line 38
    :cond_8
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->jsonObjectTypeAdapter:Lw7/u;

    if-nez v0, :cond_9

    .line 39
    iget-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->gson:Lw7/l;

    const-class v1, Lcom/google/gson/JsonObject;

    .line 40
    invoke-static {v0, v1}, Lm/a;->p(Lw7/l;Ljava/lang/Class;)Lw7/u;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;->jsonObjectTypeAdapter:Lw7/u;

    .line 42
    :cond_9
    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    .line 43
    :goto_3
    invoke-virtual {p1}, Le8/c;->m()V

    return-void
.end method
