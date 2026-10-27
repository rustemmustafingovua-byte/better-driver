.class Lcom/graphhopper/jackson/StatementDeserializer;
.super Lb6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/n;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeStatement(Lb6/q;)Lcom/graphhopper/json/Statement;
    .locals 11

    sget-object v0, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "else cannot have expression but was "

    const-string v6, " for "

    const/4 v7, 0x2

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lp6/a;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb6/q;

    invoke-static {v6}, Lcom/graphhopper/jackson/StatementDeserializer;->deserializeStatement(Lb6/q;)Lcom/graphhopper/json/Statement;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Ljava/util/List;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/graphhopper/json/Statement;->ElseIf(Ljava/lang/String;Ljava/util/List;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Lb6/q;->A()I

    move-result v7

    if-ne v7, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lb6/q;->A()I

    move-result v4

    invoke-static {v4}, Landroidx/fragment/app/t1;->d(I)I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_4

    if-eq v4, v2, :cond_4

    invoke-virtual {v6}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-static {v1}, Lcom/graphhopper/json/Statement;->Else(Ljava/util/List;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lb6/q;->G()Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid then block: "

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'do\' block must be an array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This block statement expects two entries but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v0

    if-ne v0, v7, :cond_13

    invoke-static {}, Lcom/graphhopper/json/Statement$Op;->values()[Lcom/graphhopper/json/Statement$Op;

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v7

    move-object v7, v6

    :goto_2
    if-ge v8, v1, :cond_b

    aget-object v9, v0, v8

    invoke-virtual {v9}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v6, :cond_9

    invoke-virtual {v9}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v6

    invoke-virtual {v6}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    move-object v6, v9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Multiple operations are not allowed. Statement: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_12

    if-eqz v7, :cond_11

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lcom/graphhopper/json/Statement;->ElseIf(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb6/q;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v1

    invoke-virtual {v1}, Lb6/q;->A()I

    move-result v8

    if-ne v8, v4, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lb6/q;->A()I

    move-result v4

    invoke-static {v4}, Landroidx/fragment/app/t1;->d(I)I

    move-result v4

    if-eqz v4, :cond_f

    if-eq v4, v3, :cond_f

    if-eq v4, v2, :cond_f

    invoke-virtual {v1}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_4
    invoke-static {v6, v7}, Lcom/graphhopper/json/Statement;->Else(Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot find if, else_if or else for "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot find a value in "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/graphhopper/json/Statement$Op;->values()[Lcom/graphhopper/json/Statement$Op;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/d;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cannot find an operation in "

    const-string v3, ". Must be one of: "

    invoke-static {v2, p0, v3, v1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This statement expects two entries but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/json/Statement;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ls5/o;->a(Ls5/k;)Lb6/q;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/graphhopper/jackson/StatementDeserializer;->deserializeStatement(Lb6/q;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ObjectCodec defined for parser, needed for deserialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/jackson/StatementDeserializer;->deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/json/Statement;

    move-result-object p0

    return-object p0
.end method
