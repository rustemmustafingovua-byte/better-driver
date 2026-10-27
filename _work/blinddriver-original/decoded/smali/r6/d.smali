.class public final Lr6/d;
.super Lq6/c;
.source "SourceFile"


# instance fields
.field public final synthetic D:I

.field public final E:Ljava/io/Serializable;

.field public final F:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lq6/c;Lb6/i0;Lb6/i0;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lr6/d;->D:I

    .line 2
    iget-object v0, p1, Lq6/c;->n:Lw5/k;

    invoke-direct {p0, p1, v0}, Lq6/c;-><init>(Lq6/c;Lw5/k;)V

    .line 3
    iget-object p1, p2, Lb6/i0;->m:Ljava/lang/String;

    .line 4
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 5
    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    .line 6
    iget-object p2, p2, Lb6/i0;->l:Ljava/lang/String;

    .line 7
    invoke-direct {v1, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v1, p0, Lr6/d;->E:Ljava/io/Serializable;

    .line 9
    iget-object p1, p3, Lb6/i0;->m:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 10
    :goto_0
    new-instance p1, Ljavax/xml/namespace/QName;

    .line 11
    iget-object p2, p3, Lb6/i0;->l:Ljava/lang/String;

    .line 12
    invoke-direct {p1, v0, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lr6/d;->F:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lq6/c;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr6/d;->D:I

    invoke-direct {p0, p1}, Lq6/c;-><init>(Lq6/c;)V

    iput-object p1, p0, Lr6/d;->E:Ljava/io/Serializable;

    iput-object p2, p0, Lr6/d;->F:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public j(Lb6/u;)V
    .locals 1

    iget v0, p0, Lr6/d;->D:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lq6/c;->j(Lb6/u;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p0, p1}, Lq6/c;->j(Lb6/u;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p0, p1}, Lq6/c;->j(Lb6/u;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lb6/u;)V
    .locals 1

    iget v0, p0, Lr6/d;->D:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lq6/c;->k(Lb6/u;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p0, p1}, Lq6/c;->k(Lb6/u;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p0, p1}, Lq6/c;->k(Lb6/u;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lu6/r;)Lq6/c;
    .locals 2

    iget v0, p0, Lr6/d;->D:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lq6/c;->m(Lu6/r;)Lq6/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Lr6/d;

    iget-object v1, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast v1, Lq6/c;

    invoke-virtual {v1, p1}, Lq6/c;->m(Lu6/r;)Lq6/c;

    move-result-object p1

    iget-object p0, p0, Lr6/d;->F:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lr6/d;-><init>(Lq6/c;Ljava/io/Serializable;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lr6/d;

    iget-object v1, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast v1, Lq6/c;

    invoke-virtual {v1, p1}, Lq6/c;->m(Lu6/r;)Lq6/c;

    move-result-object p1

    iget-object p0, p0, Lr6/d;->F:Ljava/io/Serializable;

    check-cast p0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lr6/d;-><init>(Lq6/c;Ljava/io/Serializable;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget v0, p0, Lr6/d;->D:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lq6/c;->n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lq6/c;->n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lq6/c;->n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    iget v0, p0, Lr6/d;->D:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    iget-object v0, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lq6/c;->v:Lb6/u;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v2, v1}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2, v1, p3}, Lq6/c;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_1
    iget-object v2, p0, Lq6/c;->A:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v3, Lr5/z;->n:Lr5/z;

    if-ne v3, v2, :cond_4

    invoke-virtual {v1, p3, v0}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, p1, :cond_6

    invoke-virtual {p0, p2, p3, v1}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lq6/c;->n:Lw5/k;

    invoke-virtual {p2, p1}, Ls5/g;->T(Ls5/q;)V

    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_7

    invoke-virtual {v1, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v0, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lq6/c;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lr6/d;->E:Ljava/io/Serializable;

    check-cast p0, Lq6/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Lq6/c;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
