.class public Lcom/graphhopper/jackson/PathDetailDeserializer;
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


# virtual methods
.method public deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/details/PathDetail;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Ls5/o;->a(Ls5/k;)Lb6/q;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lb6/q;->size()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Lb6/q;->y(I)Lb6/q;

    move-result-object p2

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lb6/q;->y(I)Lb6/q;

    move-result-object v1

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Lb6/q;->y(I)Lb6/q;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lb6/q;->A()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 9
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v2}, Lb6/q;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, v2, Lp6/h;

    if-eqz v0, :cond_1

    .line 11
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v2}, Lb6/q;->k()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Lb6/q;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v2}, Lb6/q;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2}, Lb6/q;->A()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    .line 15
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v2}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, v2, Lp6/v;

    if-eqz v0, :cond_4

    .line 17
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p1

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v2, v0}, Ls5/o;->c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v2}, Lb6/q;->A()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 19
    new-instance p0, Lcom/graphhopper/util/details/PathDetail;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    .line 20
    :goto_0
    invoke-virtual {p2}, Lb6/q;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/details/PathDetail;->setFirst(I)V

    .line 21
    invoke-virtual {v1}, Lb6/q;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/details/PathDetail;->setLast(I)V

    return-object p0

    .line 22
    :cond_5
    new-instance p2, Ls5/i;

    invoke-virtual {p0}, Lb6/q;->A()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "STRING"

    goto :goto_1

    :pswitch_1
    const-string p0, "POJO"

    goto :goto_1

    :pswitch_2
    const-string p0, "OBJECT"

    goto :goto_1

    :pswitch_3
    const-string p0, "NUMBER"

    goto :goto_1

    :pswitch_4
    const-string p0, "NULL"

    goto :goto_1

    :pswitch_5
    const-string p0, "MISSING"

    goto :goto_1

    :pswitch_6
    const-string p0, "BOOLEAN"

    goto :goto_1

    :pswitch_7
    const-string p0, "BINARY"

    goto :goto_1

    :pswitch_8
    const-string p0, "ARRAY"

    :goto_1
    const-string v0, "Unsupported type of PathDetail value "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw p2

    .line 23
    :cond_6
    new-instance p2, Ls5/i;

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result p0

    const-string v0, "PathDetail array must have exactly 3 entries but was "

    .line 24
    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p2, p1, p0, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw p2

    .line 26
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ObjectCodec defined for parser, needed for deserialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/jackson/PathDetailDeserializer;->deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/details/PathDetail;

    move-result-object p0

    return-object p0
.end method
