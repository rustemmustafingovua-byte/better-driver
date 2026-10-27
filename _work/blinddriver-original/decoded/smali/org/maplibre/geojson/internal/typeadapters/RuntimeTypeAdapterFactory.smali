.class public final Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw7/v;"
    }
.end annotation


# instance fields
.field private final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final labelToSubtype:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final maintainType:Z

.field private final subtypeToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeFieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->maintainType:Z

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic access$000(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->maintainType:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->typeFieldName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Z)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/l;",
            "Ld8/a;",
            ")",
            "Lw7/u;"
        }
    .end annotation

    iget-object p2, p2, Ld8/a;->a:Ljava/lang/Class;

    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->baseType:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-instance v4, Ld8/a;

    invoke-direct {v4, v3}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p0, v4}, Lw7/l;->d(Lw7/v;Ld8/a;)Lw7/u;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;

    invoke-direct {p1, p0, p2, v0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;-><init>(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p1}, Lw7/u;->nullSafe()Lw7/u;

    move-result-object p0

    return-object p0
.end method

.method public registerSubtype(Ljava/lang/Class;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object p0

    return-object p0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "types and labels must be unique"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 5
    throw p0
.end method
