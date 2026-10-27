.class Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 42

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v40, "track"

    const-string v41, "via"

    const-string v1, "ally"

    const-string v2, "alley"

    const-string v3, "arc"

    const-string v4, "arcade"

    const-string v5, "bvd"

    const-string v6, "bvd."

    const-string v7, "boulevard"

    const-string v8, "av."

    const-string v9, "avenue"

    const-string v10, "avenida"

    const-string v11, "ave"

    const-string v12, "calle"

    const-string v13, "cl."

    const-string v14, "close"

    const-string v15, "crescend"

    const-string v16, "cres"

    const-string v17, "cres."

    const-string v18, "rd."

    const-string v19, "road"

    const-string v20, "ln."

    const-string v21, "lane"

    const-string v22, "pde."

    const-string v23, "pde"

    const-string v24, "parade"

    const-string v25, "pl."

    const-string v26, "place"

    const-string v27, "plaza"

    const-string v28, "rte"

    const-string v29, "route"

    const-string v30, "str."

    const-string v31, "str"

    const-string v32, "stra\u00dfe"

    const-string v33, "strasse"

    const-string v34, "st."

    const-string v35, "street"

    const-string v36, "strada"

    const-string v37, "sq."

    const-string v38, "square"

    const-string v39, "tr."

    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "n"

    const-string v2, "north"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s"

    const-string v2, "south"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    const-string v2, "west"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e"

    const-string v2, "east"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ne"

    const-string v2, "northeast"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nw"

    const-string v2, "northwest"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "se"

    const-string v2, "southeast"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw"

    const-string v2, "southwest"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
