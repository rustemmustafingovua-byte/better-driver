.class public final synthetic Lm0/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lm0/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lm0/t0;)Lm0/a0;
    .locals 8

    iget p0, p0, Lm0/b0;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Lm0/t0;->c()Lm0/a0;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lm0/c0;->c:Lm0/c0;

    invoke-static {p1, p0}, Lm0/d1;->h(Lm0/t0;Lm0/j;)Lm0/a0;

    move-result-object p0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lm0/a0;->b:Lm0/z;

    iget-object v1, p0, Lm0/a0;->a:Lm0/z;

    invoke-interface {p1}, Lm0/t0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lm0/t0;->k()Lm0/x;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lm0/d1;->k(Lm0/t0;Lm0/x;Lm0/z;)Lm0/z;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lm0/t0;->g()Lm0/x;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lm0/d1;->k(Lm0/t0;Lm0/x;Lm0/z;)Lm0/z;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-static {v3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-interface {p1}, Lm0/t0;->h()Lm0/k;

    move-result-object p0

    sget-object v0, Lm0/k;->l:Lm0/k;

    if-eq p0, v0, :cond_4

    invoke-interface {p1}, Lm0/t0;->h()Lm0/k;

    move-result-object p0

    sget-object v0, Lm0/k;->n:Lm0/k;

    if-ne p0, v0, :cond_3

    iget p0, v1, Lm0/z;->b:I

    iget v0, v2, Lm0/z;->b:I

    if-le p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    new-instance v0, Lm0/a0;

    invoke-direct {v0, v1, v2, p0}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    iget-object v2, v0, Lm0/a0;->a:Lm0/z;

    iget-wide v3, v2, Lm0/z;->c:J

    iget-object v5, v0, Lm0/a0;->b:Lm0/z;

    iget-wide v6, v5, Lm0/z;->c:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_6

    iget v2, v2, Lm0/z;->b:I

    iget v3, v5, Lm0/z;->b:I

    if-ne v2, v3, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    :goto_3
    move v2, p0

    goto :goto_5

    :cond_6
    iget-boolean v3, v0, Lm0/a0;->c:Z

    if-eqz v3, :cond_7

    move-object v4, v2

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    iget v4, v4, Lm0/z;->b:I

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    move-object v2, v5

    :cond_9
    invoke-interface {p1}, Lm0/t0;->d()Lm0/x;

    move-result-object v3

    iget-object v3, v3, Lm0/x;->f:Lp2/j0;

    iget-object v3, v3, Lp2/j0;->a:Lp2/i0;

    iget-object v3, v3, Lp2/i0;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v2, v2, Lm0/z;->b:I

    if-eq v3, v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance v2, Lj9/u;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v2, Lj9/u;->l:Z

    new-instance v3, Lm0/v0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lm0/v0;-><init>(Lj9/u;I)V

    invoke-interface {p1, v3}, Lm0/t0;->i(Li9/c;)V

    iget-boolean v2, v2, Lj9/u;->l:Z

    :goto_5
    if-nez v2, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-interface {p1}, Lm0/t0;->b()Lm0/x;

    move-result-object v2

    iget-object v2, v2, Lm0/x;->f:Lp2/j0;

    iget-object v2, v2, Lp2/j0;->a:Lp2/i0;

    iget-object v2, v2, Lp2/i0;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-interface {p1}, Lm0/t0;->getSize()I

    move-result v3

    if-gt v3, v1, :cond_15

    invoke-interface {p1}, Lm0/t0;->c()Lm0/a0;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_6

    :cond_c
    move v2, p0

    :goto_6
    if-eqz v2, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-interface {p1}, Lm0/t0;->b()Lm0/x;

    move-result-object v2

    iget-object v3, v2, Lm0/x;->f:Lp2/j0;

    iget-object v3, v3, Lp2/j0;->a:Lp2/i0;

    iget-object v3, v3, Lp2/i0;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    iget v4, v2, Lm0/x;->c:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_f

    invoke-static {p0, v3}, Lb0/n1;->r(ILjava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Lm0/t0;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, v0, Lm0/a0;->a:Lm0/z;

    invoke-static {p0, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p0

    invoke-static {v0, p0, v7, v1, v6}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_e
    iget-object p1, v0, Lm0/a0;->b:Lm0/z;

    invoke-static {p1, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p1

    invoke-static {v0, v7, p1, p0, v1}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_f
    if-ne v4, v5, :cond_11

    invoke-static {v5, v3}, Lb0/n1;->u(ILjava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Lm0/t0;->a()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v0, Lm0/a0;->a:Lm0/z;

    invoke-static {p1, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p1

    invoke-static {v0, p1, v7, p0, v6}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_10
    iget-object p0, v0, Lm0/a0;->b:Lm0/z;

    invoke-static {p0, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p0

    invoke-static {v0, v7, p0, v1, v1}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_11
    invoke-interface {p1}, Lm0/t0;->c()Lm0/a0;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-boolean v5, v5, Lm0/a0;->c:Z

    if-ne v5, v1, :cond_12

    move p0, v1

    :cond_12
    invoke-interface {p1}, Lm0/t0;->a()Z

    move-result v5

    xor-int/2addr v5, p0

    if-eqz v5, :cond_13

    invoke-static {v4, v3}, Lb0/n1;->u(ILjava/lang/String;)I

    move-result v3

    goto :goto_7

    :cond_13
    invoke-static {v4, v3}, Lb0/n1;->r(ILjava/lang/String;)I

    move-result v3

    :goto_7
    invoke-interface {p1}, Lm0/t0;->a()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, v0, Lm0/a0;->a:Lm0/z;

    invoke-static {p1, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p1

    invoke-static {v0, p1, v7, p0, v6}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_14
    iget-object p1, v0, Lm0/a0;->b:Lm0/z;

    invoke-static {p1, v2, v3}, Lm0/d1;->o(Lm0/z;Lm0/x;I)Lm0/z;

    move-result-object p1

    invoke-static {v0, v7, p1, p0, v1}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p0

    goto :goto_9

    :cond_15
    :goto_8
    move-object p0, v0

    :goto_9
    return-object p0

    :pswitch_0
    sget-object p0, Lm0/c0;->b:Lm0/c0;

    invoke-static {p1, p0}, Lm0/d1;->h(Lm0/t0;Lm0/j;)Lm0/a0;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lm0/c0;->c:Lm0/c0;

    invoke-static {p1, p0}, Lm0/d1;->h(Lm0/t0;Lm0/j;)Lm0/a0;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lm0/a0;

    invoke-interface {p1}, Lm0/t0;->k()Lm0/x;

    move-result-object v0

    invoke-interface {p1}, Lm0/t0;->k()Lm0/x;

    move-result-object v1

    iget v1, v1, Lm0/x;->c:I

    invoke-virtual {v0, v1}, Lm0/x;->a(I)Lm0/z;

    move-result-object v0

    invoke-interface {p1}, Lm0/t0;->g()Lm0/x;

    move-result-object v1

    invoke-interface {p1}, Lm0/t0;->g()Lm0/x;

    move-result-object v2

    iget v2, v2, Lm0/x;->d:I

    invoke-virtual {v1, v2}, Lm0/x;->a(I)Lm0/z;

    move-result-object v1

    invoke-interface {p1}, Lm0/t0;->h()Lm0/k;

    move-result-object p1

    sget-object v2, Lm0/k;->l:Lm0/k;

    if-ne p1, v2, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    :goto_a
    invoke-direct {p0, v0, v1, p1}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
