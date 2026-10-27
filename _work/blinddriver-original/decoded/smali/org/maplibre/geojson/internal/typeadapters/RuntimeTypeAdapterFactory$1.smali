.class Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;
.super Lw7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->create(Lw7/l;Ld8/a;)Lw7/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw7/u;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

.field final synthetic val$labelToDelegate:Ljava/util/Map;

.field final synthetic val$subtypeToDelegate:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    iput-object p2, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    iput-object p3, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le8/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b;",
            ")TR;"
        }
    .end annotation

    invoke-static {p1}, Ly7/d;->i(Le8/b;)Lcom/google/gson/JsonElement;

    move-result-object p1

    iget-object v0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    :goto_0
    const-string v1, "cannot deserialize "

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw7/u;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lw7/u;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Landroidx/fragment/app/i0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {p0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$200(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " subtype named "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; did you forget to register a subtype?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroidx/fragment/app/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$200(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it does not define a field named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {p0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Le8/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/c;",
            "TR;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/u;

    const-string v2, "cannot serialize "

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lw7/u;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    iget-object v1, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lz7/v;->z:Lw7/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lw7/i;->b(Le8/c;Lcom/google/gson/JsonElement;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v3}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$300(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {p0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v0, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lz7/v;->z:Lw7/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lw7/i;->b(Le8/c;Lcom/google/gson/JsonElement;)V

    return-void

    :cond_2
    new-instance p1, Landroidx/fragment/app/i0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it already defines a field named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory$1;->this$0:Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {p0}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Landroidx/fragment/app/i0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "; did you forget to register a subtype?"

    invoke-static {v0, p1, p2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
