.class public final Lr6/e;
.super Ls6/b;
.source "SourceFile"


# instance fields
.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lb6/l;ZLn6/e;Lb6/u;I)V
    .locals 0

    .line 1
    iput p6, p0, Lr6/e;->u:I

    invoke-direct/range {p0 .. p5}, Ls6/b;-><init>(Ljava/lang/Class;Lb6/l;ZLn6/e;Lb6/u;)V

    return-void
.end method

.method public synthetic constructor <init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V
    .locals 0

    .line 2
    iput p6, p0, Lr6/e;->u:I

    invoke-direct/range {p0 .. p5}, Ls6/b;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final i(Ln6/e;)Lq6/h;
    .locals 9

    iget v0, p0, Lr6/e;->u:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lr6/e;

    iget-object v6, p0, Ls6/b;->q:Ljava/lang/Boolean;

    const/4 v7, 0x3

    iget-object v3, p0, Ls6/b;->o:Lb6/f;

    iget-object v5, p0, Ls6/b;->s:Lb6/u;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v1

    :pswitch_0
    move-object v3, p0

    return-object v3

    :pswitch_1
    move-object v3, p0

    move-object v5, p1

    new-instance v2, Lr6/e;

    iget-object v7, v3, Ls6/b;->q:Ljava/lang/Boolean;

    const/4 v8, 0x1

    iget-object v4, v3, Ls6/b;->o:Lb6/f;

    iget-object v6, v3, Ls6/b;->s:Lb6/u;

    invoke-direct/range {v2 .. v8}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v2

    :pswitch_2
    move-object v3, p0

    move-object v5, p1

    new-instance v2, Lr6/e;

    iget-object v7, v3, Ls6/b;->q:Ljava/lang/Boolean;

    const/4 v8, 0x0

    iget-object v4, v3, Ls6/b;->o:Lb6/f;

    iget-object v6, v3, Ls6/b;->s:Lb6/u;

    invoke-direct/range {v2 .. v8}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lr6/e;->u:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    check-cast p2, Ljava/util/EnumSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic k(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget v0, p0, Lr6/e;->u:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->m(Ljava/lang/Iterable;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->n(Ljava/util/EnumSet;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->o(Ljava/util/Iterator;Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->p(Ljava/util/List;Ls5/g;Lb6/r0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)Ls6/b;
    .locals 9

    iget v0, p0, Lr6/e;->u:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lr6/e;

    const/4 v7, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v1

    :pswitch_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    new-instance v2, Lr6/e;

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v2

    :pswitch_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    new-instance v2, Lr6/e;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v2

    :pswitch_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    new-instance v2, Lr6/e;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lr6/e;-><init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;I)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Ljava/lang/Iterable;Ls5/g;Lb6/r0;)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Ls6/b;->s:Lb6/u;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v0, :cond_2

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ls6/b;->o:Lb6/f;

    invoke-virtual {p3, v3, v0}, Lb6/r0;->d0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v1

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    iget-object v4, p0, Ls6/b;->r:Ln6/e;

    if-nez v4, :cond_4

    invoke-virtual {v1, v2, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2, p2, p3, v4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_2
    move-object v1, v3

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    return-void
.end method

.method public n(Ljava/util/EnumSet;Ls5/g;Lb6/r0;)V
    .locals 3

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Ls6/b;->s:Lb6/u;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Ls6/b;->o:Lb6/f;

    invoke-virtual {p3, v0, v2}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public o(Ljava/util/Iterator;Ls5/g;Lb6/r0;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Ls6/b;->r:Ln6/e;

    iget-object v1, p0, Ls6/b;->s:Lb6/u;

    if-nez v1, :cond_7

    iget-object v1, p0, Ls6/b;->t:Lpc/h;

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Ls6/b;->n:Lb6/l;

    invoke-virtual {v4}, Lb6/l;->X()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3, v4, v3}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v3

    invoke-virtual {p0, v1, v3, p3}, Ls6/b;->j(Lpc/h;Lb6/l;Lb6/r0;)Lb6/u;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ls6/b;->o:Lb6/f;

    invoke-virtual {p3, v3, v4}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v3

    if-eq v1, v3, :cond_4

    iput-object v3, p0, Ls6/b;->t:Lpc/h;

    :cond_4
    :goto_0
    iget-object v1, p0, Ls6/b;->t:Lpc/h;

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v4, v2, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v2, p2, p3, v0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {v1, p0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v1, p0, p2, p3, v0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    :goto_3
    return-void
.end method

.method public p(Ljava/util/List;Ls5/g;Lb6/r0;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Ls6/b;->r:Ln6/e;

    iget-object v3, p0, Ls6/b;->s:Lb6/u;

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_a

    :cond_0
    :goto_0
    if-ge v1, p0, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v3, v4, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p3, p0, p1, v1}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v0

    :cond_3
    iget-object v3, p0, Ls6/b;->o:Lb6/f;

    iget-object v4, p0, Ls6/b;->n:Lb6/l;

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_a

    :cond_4
    :try_start_1
    iget-object v6, p0, Ls6/b;->t:Lpc/h;

    :goto_3
    if-ge v1, v5, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v4}, Lb6/l;->X()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p3, v4, v8}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v8

    invoke-virtual {p0, v6, v8, p3}, Ls6/b;->j(Lpc/h;Lb6/l;Lb6/r0;)Lb6/u;

    move-result-object v6

    move-object v9, v6

    goto :goto_4

    :cond_6
    invoke-virtual {p3, v8, v3}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v8

    if-eq v6, v8, :cond_7

    iput-object v8, p0, Ls6/b;->t:Lpc/h;

    :cond_7
    :goto_4
    iget-object v6, p0, Ls6/b;->t:Lpc/h;

    :cond_8
    invoke-virtual {v9, v7, p2, p3, v2}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_6
    invoke-static {p3, p0, p1, v1}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v0

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_a

    :cond_a
    :try_start_2
    iget-object v5, p0, Ls6/b;->t:Lpc/h;

    :goto_7
    if-ge v1, v2, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_b

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v8

    if-nez v8, :cond_e

    invoke-virtual {v4}, Lb6/l;->X()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p3, v4, v7}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v7

    invoke-virtual {p0, v5, v7, p3}, Ls6/b;->j(Lpc/h;Lb6/l;Lb6/r0;)Lb6/u;

    move-result-object v5

    move-object v8, v5

    goto :goto_8

    :cond_c
    invoke-virtual {p3, v7, v3}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object v7

    if-eq v5, v7, :cond_d

    iput-object v7, p0, Ls6/b;->t:Lpc/h;

    :cond_d
    :goto_8
    iget-object v5, p0, Ls6/b;->t:Lpc/h;

    :cond_e
    invoke-virtual {v8, v6, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    :goto_a
    return-void

    :goto_b
    invoke-static {p3, p0, p1, v1}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    throw v0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    iget v0, p0, Lr6/e;->u:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Ls6/b;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v1, Lb6/q0;->E:Lb6/q0;

    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->m(Ljava/lang/Iterable;Ls5/g;Lb6/r0;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Ls5/g;->l0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->m(Ljava/lang/Iterable;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    :goto_1
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ls6/b;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v1, Lb6/q0;->E:Lb6/q0;

    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->n(Ljava/util/EnumSet;Ls5/g;Lb6/r0;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->n(Ljava/util/EnumSet;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    :goto_2
    return-void

    :pswitch_1
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p2, p1}, Ls5/g;->l0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->o(Ljava/util/Iterator;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Ls6/b;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    sget-object v1, Lb6/q0;->E:Lb6/q0;

    iget-object v2, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->p(Ljava/util/List;Ls5/g;Lb6/r0;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/e;->p(Ljava/util/List;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
