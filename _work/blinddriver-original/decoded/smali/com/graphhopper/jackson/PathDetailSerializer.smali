.class public Lcom/graphhopper/jackson/PathDetailSerializer;
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
.method public serialize(Lcom/graphhopper/util/details/PathDetail;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ls5/g;->k0()V

    .line 3
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    .line 4
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getLast()I

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    .line 5
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ls5/g;->V(D)V

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Long;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ls5/g;->Y(J)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->K(Z)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/util/Map;

    if-eqz p0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    .line 18
    invoke-virtual {p2}, Ls5/g;->U()V

    .line 19
    :goto_0
    invoke-virtual {p2}, Ls5/g;->P()V

    return-void

    .line 20
    :cond_6
    new-instance p0, Ls5/e;

    invoke-virtual {p1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unsupported type for PathDetail.value"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/PathDetailSerializer;->serialize(Lcom/graphhopper/util/details/PathDetail;Ls5/g;Lb6/r0;)V

    return-void
.end method
