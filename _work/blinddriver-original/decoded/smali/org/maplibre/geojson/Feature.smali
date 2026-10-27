.class public final Lorg/maplibre/geojson/Feature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/geojson/GeoJson;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/geojson/Feature$GsonTypeAdapter;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "Feature"


# instance fields
.field private final bbox:Lorg/maplibre/geojson/BoundingBox;
    .annotation runtime Lx7/a;
        value = Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;
    .end annotation
.end field

.field private final geometry:Lorg/maplibre/geojson/Geometry;

.field private final id:Ljava/lang/String;

.field private final properties:Lcom/google/gson/JsonObject;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/maplibre/geojson/Feature;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/geojson/Feature;->bbox:Lorg/maplibre/geojson/BoundingBox;

    iput-object p3, p0, Lorg/maplibre/geojson/Feature;->id:Ljava/lang/String;

    iput-object p4, p0, Lorg/maplibre/geojson/Feature;->geometry:Lorg/maplibre/geojson/Geometry;

    iput-object p5, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null type"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lorg/maplibre/geojson/Feature;)Lcom/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 1
    new-instance v0, Lorg/maplibre/geojson/Feature;

    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "Feature"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 3
    new-instance v0, Lorg/maplibre/geojson/Feature;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_0
    move-object v5, p1

    const-string v1, "Feature"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 7
    new-instance v0, Lorg/maplibre/geojson/Feature;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_0
    move-object v5, p1

    const-string v1, "Feature"

    const/4 v2, 0x0

    move-object v4, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 9
    new-instance v0, Lorg/maplibre/geojson/Feature;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_0
    move-object v5, p1

    const-string v1, "Feature"

    move-object v4, p0

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 5
    new-instance v0, Lorg/maplibre/geojson/Feature;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_0
    move-object v5, p1

    const-string v1, "Feature"

    const/4 v3, 0x0

    move-object v4, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromGeometry(Lorg/maplibre/geojson/Geometry;Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Feature;
    .locals 6

    .line 2
    new-instance v0, Lorg/maplibre/geojson/Feature;

    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "Feature"

    const/4 v3, 0x0

    move-object v4, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 7

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-static {}, Lorg/maplibre/geojson/GeometryAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/Feature;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Feature;

    iget-object v0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/maplibre/geojson/Feature;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v5

    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "Feature"

    invoke-direct/range {v1 .. v6}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    return-object v1
.end method

.method public static typeAdapter(Lw7/l;)Lw7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l;",
            ")",
            "Lw7/u;"
        }
    .end annotation

    new-instance v0, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lorg/maplibre/geojson/Feature$GsonTypeAdapter;-><init>(Lw7/l;)V

    return-object v0
.end method


# virtual methods
.method public addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public addCharacterProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Character;)V

    return-void
.end method

.method public addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public addStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bbox()Lorg/maplibre/geojson/BoundingBox;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->bbox:Lorg/maplibre/geojson/BoundingBox;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/geojson/Feature;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lorg/maplibre/geojson/Feature;

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->id:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->geometry:Lorg/maplibre/geojson/Geometry;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    if-nez p0, :cond_4

    iget-object p0, p1, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public geometry()Lorg/maplibre/geojson/Geometry;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->geometry:Lorg/maplibre/geojson/Geometry;

    return-object p0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterProperty(Ljava/lang/String;)Ljava/lang/Character;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsCharacter()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNonNullValueForProperty(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/maplibre/geojson/Feature;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/Feature;->bbox:Lorg/maplibre/geojson/BoundingBox;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/maplibre/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/Feature;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/Feature;->geometry:Lorg/maplibre/geojson/Geometry;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v3

    :goto_3
    xor-int p0, v0, v3

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->id:Ljava/lang/String;

    return-object p0
.end method

.method public properties()Lcom/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public removeProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 8

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-static {}, Lorg/maplibre/geojson/GeometryAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Lorg/maplibre/geojson/Feature;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v4

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v6

    const/4 v7, 0x0

    const-string v3, "Feature"

    invoke-direct/range {v2 .. v7}, Lorg/maplibre/geojson/Feature;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)V

    move-object p0, v2

    :cond_0
    invoke-virtual {v0, p0}, Lw7/l;->f(Lorg/maplibre/geojson/GeoJson;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feature{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->bbox:Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/Feature;->geometry:Lorg/maplibre/geojson/Geometry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->properties:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Feature;->type:Ljava/lang/String;

    return-object p0
.end method
