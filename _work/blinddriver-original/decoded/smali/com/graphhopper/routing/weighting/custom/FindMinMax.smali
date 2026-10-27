.class public Lcom/graphhopper/routing/weighting/custom/FindMinMax;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLMConstraints(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 4

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "CustomModel in query can only use distance_influence bigger or equal to "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", but was: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->checkMultiplyValue(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->checkMultiplyValue(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    return-void
.end method

.method private static checkMultiplyValue(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/json/Statement;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/json/Statement$Op;->MULTIPLY:Lcom/graphhopper/json/Statement$Op;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findMinMax(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;

    move-result-object v1

    iget-wide v2, v1, Lcom/graphhopper/json/MinMax;->max:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-wide v2, v1, Lcom/graphhopper/json/MinMax;->min:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, v1, Lcom/graphhopper/json/MinMax;->min:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minimum of value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be smaller than 0, but was: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, v1, Lcom/graphhopper/json/MinMax;->max:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maximum of value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be larger than 1, but was: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static findMinMax(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/json/MinMax;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Lcom/graphhopper/json/MinMax;"
        }
    .end annotation

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0, p2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->findMinMaxForGroup(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static findMinMaxForGroup(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/json/MinMax;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/json/Statement;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "statement resulted in negative value: "

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0, p2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->findMinMaxForGroup(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object p1

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findMinMax(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/graphhopper/json/Statement$Op;->apply(Lcom/graphhopper/json/MinMax;Lcom/graphhopper/json/MinMax;)Lcom/graphhopper/json/MinMax;

    move-result-object p1

    iget-wide v1, p1, Lcom/graphhopper/json/MinMax;->max:D

    cmpg-double p2, v1, v4

    if-ltz p2, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lcom/graphhopper/json/MinMax;

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/json/Statement;

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v6

    sget-object v7, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    if-ne v6, v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/graphhopper/json/MinMax;

    iget-wide v7, p0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v9, p0, Lcom/graphhopper/json/MinMax;->max:D

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->splitIntoGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, p2}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->findMinMaxForGroup(Lcom/graphhopper/json/MinMax;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object v6

    invoke-virtual {v2}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/graphhopper/routing/weighting/custom/ValueExpressionVisitor;->findMinMax(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/json/MinMax;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcom/graphhopper/json/Statement$Op;->apply(Lcom/graphhopper/json/MinMax;Lcom/graphhopper/json/MinMax;)Lcom/graphhopper/json/MinMax;

    move-result-object v6

    iget-wide v7, v6, Lcom/graphhopper/json/MinMax;->max:D

    cmpg-double v7, v7, v4

    if-ltz v7, :cond_7

    :cond_6
    iget-wide v7, v0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v9, v6, Lcom/graphhopper/json/MinMax;->min:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v7, v0, Lcom/graphhopper/json/MinMax;->max:D

    iget-wide v9, v6, Lcom/graphhopper/json/MinMax;->max:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/graphhopper/json/MinMax;->max:D

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v1, :cond_9

    iget-wide p1, v0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v1, p0, Lcom/graphhopper/json/MinMax;->min:D

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, v0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide p1, v0, Lcom/graphhopper/json/MinMax;->max:D

    iget-wide v1, p0, Lcom/graphhopper/json/MinMax;->max:D

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, v0, Lcom/graphhopper/json/MinMax;->max:D

    :cond_9
    move-object p1, v0

    :goto_3
    iget-wide v0, p1, Lcom/graphhopper/json/MinMax;->min:D

    iput-wide v0, p0, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide p1, p1, Lcom/graphhopper/json/MinMax;->max:D

    iput-wide p1, p0, Lcom/graphhopper/json/MinMax;->max:D

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Every group must start with an if-statement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
