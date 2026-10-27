.class Lcom/graphhopper/jackson/StatementSerializer;
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
.method public serialize(Lcom/graphhopper/json/Statement;Ls5/g;Lb6/r0;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Ls5/g;->n0()V

    .line 3
    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->keyword()Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->condition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "do"

    .line 6
    invoke-virtual {p2, v0}, Ls5/g;->S(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ls5/g;->k0()V

    .line 8
    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->doBlock()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/json/Statement;

    .line 9
    invoke-virtual {p0, v0, p2, p3}, Lcom/graphhopper/jackson/StatementSerializer;->serialize(Lcom/graphhopper/json/Statement;Ls5/g;Lb6/r0;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Ls5/g;->P()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->operation()Lcom/graphhopper/json/Statement$Op;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/json/Statement;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p2}, Ls5/g;->R()V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/json/Statement;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/StatementSerializer;->serialize(Lcom/graphhopper/json/Statement;Ls5/g;Lb6/r0;)V

    return-void
.end method
