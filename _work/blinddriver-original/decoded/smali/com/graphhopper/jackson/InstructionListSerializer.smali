.class public Lcom/graphhopper/jackson/InstructionListSerializer;
.super Lb6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/graphhopper/util/InstructionList;Ls5/g;Lb6/r0;)V
    .locals 6

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/Instruction;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/graphhopper/util/InstructionList;->getTr()Lcom/graphhopper/util/Translation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/graphhopper/util/Instruction;->getTurnDescription(Lcom/graphhopper/util/Translation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/graphhopper/util/Helper;->firstBig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v3, "street_name"

    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getDistance()D

    move-result-wide v3

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "distance"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sign"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getExtraInfoJSON()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "interval"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2, p0}, Ls5/g;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/util/InstructionList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/InstructionListSerializer;->serialize(Lcom/graphhopper/util/InstructionList;Ls5/g;Lb6/r0;)V

    return-void
.end method
