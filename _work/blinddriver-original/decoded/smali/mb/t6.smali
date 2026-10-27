.class public final Lmb/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/p7;
.implements Lmb/f7;
.implements Lmb/h7;
.implements Lmb/n7;
.implements Lmb/g7;
.implements Lmb/u7;
.implements Lmb/d7;
.implements Lmb/e7;
.implements Lmb/t7;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lmb/a7;


# direct methods
.method public synthetic constructor <init>(Lmb/a7;I)V
    .locals 0

    iput p2, p0, Lmb/t6;->l:I

    iput-object p1, p0, Lmb/t6;->m:Lmb/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A0(Lmb/p0;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->W1(Lmb/p0;)Lmb/c1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->W0(Lmb/c1;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->W1(Lmb/p0;)Lmb/c1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->f2(Lmb/c1;)Lmb/n3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->X(Lmb/n3;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public B(Lmb/w2;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/w2;->f:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    iget-object v1, p1, Lmb/w2;->g:Lmb/s5;

    invoke-virtual {p0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lmb/x;

    invoke-virtual {v2}, Lmb/x;->G()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    check-cast v3, Lmb/x;

    invoke-virtual {v3}, Lmb/x;->G()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lmb/x;->D(Lmb/x;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lmb/x;->D(Lmb/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" can never be an instance of \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 p1, 0xc1

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    check-cast v1, Lmb/x;

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->k()V

    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public B0(Lmb/x5;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/x5;->f:Ljava/lang/String;

    const-string v1, "!"

    if-ne v0, v1, :cond_0

    sget-object p0, Lmb/x;->D:Lmb/w;

    goto :goto_1

    :cond_0
    const-string v1, "+"

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-eq v0, v1, :cond_2

    const-string v1, "-"

    if-eq v0, v1, :cond_2

    const-string v1, "~"

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Unexpected operator \""

    const-string v2, "\""

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p1, Lmb/x5;->g:Lmb/y4;

    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lmb/a7;->l2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->I0(Lmb/x5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/x5;->f:Ljava/lang/String;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/x5;->g:Lmb/y4;

    const-string v3, "!"

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lmb/a7;->U(Lmb/h1;)Lmb/w;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    const-string v3, "+"

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object p0

    goto/16 :goto_3

    :cond_5
    const-string v3, "-"

    if-ne v0, v3, :cond_7

    invoke-virtual {p0, p1}, Lmb/a7;->I0(Lmb/x5;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmb/a7;->q:Lmb/q;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->n0(Lmb/k3;Lmb/b0;)Lmb/x;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-static {v0}, Lmb/a7;->h1(Lmb/b0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x74

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    move-object p0, v0

    goto :goto_3

    :cond_7
    const-string v3, "~"

    const/4 v4, 0x0

    const-string v5, "\""

    if-ne v0, v3, :cond_a

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v0

    sget-object v2, Lmb/x;->A:Lmb/w;

    if-ne v0, v2, :cond_8

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmb/a7;->j0(Lmb/k3;I)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0x82

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :goto_2
    move-object p0, v2

    goto :goto_3

    :cond_8
    sget-object v2, Lmb/x;->B:Lmb/w;

    if-ne v0, v2, :cond_9

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->k0(Lmb/k3;J)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0x83

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    goto :goto_2

    :goto_3
    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Operator \"~\" not applicable to type \""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected operator \""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public C(Lmb/u4;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/u4;->i:Lmb/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmb/u4;->f:Lmb/s5;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    iput-object v0, p1, Lmb/u4;->i:Lmb/b0;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/u4;->f:Lmb/s5;

    iget-object v1, p1, Lmb/u4;->g:Lmb/e0;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lmb/a7;->J0(Lmb/u4;)Lmb/u5;

    iget-object v1, p1, Lmb/u4;->g:Lmb/e0;

    :goto_1
    invoke-virtual {p0, p1}, Lmb/a7;->J0(Lmb/u4;)Lmb/u5;

    move-result-object v2

    iget-object v3, p1, Lmb/u4;->i:Lmb/b0;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v3

    iput-object v3, p1, Lmb/u4;->i:Lmb/b0;

    :goto_2
    invoke-virtual {p0, p1, v1, v2, v3}, Lmb/a7;->Y1(Lmb/y4;Lmb/m0;Lmb/u5;Lmb/b0;)V

    iget-object v1, p1, Lmb/u4;->i:Lmb/b0;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    iput-object v1, p1, Lmb/u4;->i:Lmb/b0;

    :goto_3
    return-object v1

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public D(Lmb/r1;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->a1(Lmb/r1;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lmb/a7;->q:Lmb/q;

    iget-object v1, p1, Lmb/r1;->f:Lmb/y4;

    iget-object v2, p1, Lmb/r1;->g:Lmb/y4;

    iget-object v3, p1, Lmb/r1;->h:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmb/a7;->a1(Lmb/r1;)Lmb/b0;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lmb/x;

    invoke-virtual {v4}, Lmb/x;->H()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lmb/a7;->h:Lmb/b;

    iget-object v4, v4, Lmb/a0;->r:Lmb/x;

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lmb/a7;->u0(Lmb/y4;)V

    invoke-virtual {p0, v2}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lmb/a7;->u0(Lmb/y4;)V

    invoke-virtual {p0, v3}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lmb/a7;->q:Lmb/q;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->a1(Lmb/r1;)Lmb/b0;

    move-result-object v1

    iget-object v2, p1, Lmb/r1;->g:Lmb/y4;

    invoke-virtual {p0, v2}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    iget-object v4, p1, Lmb/r1;->h:Lmb/y4;

    invoke-virtual {p0, v4}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v5

    iget-object p1, p1, Lmb/r1;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v2, v3, v1, v0}, Lmb/a7;->u(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v4, v5, v1, v0}, Lmb/a7;->u(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v6, Lmb/d;

    iget-object v7, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v7}, Lmb/k;-><init>(Lmb/n;)V

    new-instance v7, Lmb/d;

    iget-object v8, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v7, v8}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v8, p0, Lmb/a7;->e:Lmb/n;

    iget-object v8, v8, Lmb/n;->g:Lmb/h;

    iget-object v8, v8, Lmb/k;->d:Lmb/p6;

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v7, v9}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v2, v3, v1, v0}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lmb/a7;->d1(Lmb/k;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->g:Lmb/h;

    iput-object v8, p1, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v7}, Lmb/k;->b()V

    invoke-virtual {p0, v4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {p0, v2, v5, v1, v0}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lmb/k;->a()V

    :goto_1
    return-object v1

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public D0(Lmb/e3;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lmb/t6;->m:Lmb/a7;

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/f1;

    iget-object v4, v3, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v4}, Lmb/n;->f()Lmb/k;

    move-result-object v4

    invoke-virtual {v3, v2}, Lmb/a7;->E(Lmb/f1;)Z

    iget-object v2, v3, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->f()Lmb/k;

    move-result-object v2

    iget-object v3, v3, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3, v4, v2}, Lmb/n;->o(Lmb/k;Lmb/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1}, Lmb/a7;->H(Lmb/v2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public E(Lmb/i3;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p1, Lmb/i3;->g:[Lmb/z5;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lmb/a7;->O0(Lmb/i3;Lmb/z5;)Lmb/g3;

    move-result-object v4

    iget-object v5, v4, Lmb/g3;->b:Lmb/b0;

    iget-object v6, v3, Lmb/z5;->c:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v6

    iput-object v6, v4, Lmb/g3;->c:Lmb/j3;

    iget-object v6, v3, Lmb/z5;->e:Lmb/x0;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6, v5}, Lmb/a7;->A(Lmb/x0;Lmb/b0;)V

    invoke-virtual {v4}, Lmb/g3;->a()S

    move-result v4

    invoke-virtual {p0, p1, v5, v4}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v0, v3, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0}, Lhb/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E0(Lmb/w1;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/w1;->h:Lmb/n3;

    invoke-virtual {p0, p1}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->z1(Lmb/w1;)Lmb/g3;

    move-result-object v0

    iget-object v1, p1, Lmb/w1;->h:Lmb/n3;

    iget-object v2, p1, Lmb/w1;->g:Ljava/lang/String;

    iget-boolean v3, p1, Lmb/w1;->f:Z

    if-eqz v0, :cond_2

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    :cond_0
    invoke-virtual {p0, p1, v0, v2}, Lmb/a7;->g1(Lmb/k3;Lmb/g3;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v0}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    :cond_1
    sget-object p0, Lmb/x;->A:Lmb/w;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lmb/a7;->N(Lmb/y4;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->r0(Lmb/k3;I)V

    invoke-virtual {p0, v1}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    move-result-object v4

    if-nez v3, :cond_3

    invoke-virtual {p0, p1, v0}, Lmb/a7;->t0(Lmb/y4;I)V

    :cond_3
    invoke-virtual {p0, p1, v4}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lmb/a7;->g0(Lmb/w1;Lmb/w;)V

    const-string v6, "++"

    if-ne v2, v6, :cond_4

    const-string v2, "+"

    invoke-virtual {p0, p1, v2}, Lmb/a7;->N1(Lmb/y4;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "--"

    if-ne v2, v6, :cond_6

    const-string v2, "-"

    invoke-virtual {p0, p1, v2}, Lmb/a7;->N1(Lmb/y4;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, v5, v4}, Lmb/a7;->a2(Lmb/w1;Lmb/w;Lmb/b0;)V

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, v0}, Lmb/a7;->t0(Lmb/y4;I)V

    :cond_5
    invoke-virtual {p0, v1}, Lmb/a7;->X(Lmb/n3;)V

    move-object p0, v4

    :goto_1
    return-object p0

    :cond_6
    const-string v0, "Unexpected operator \""

    const-string v1, "\""

    invoke-static {v0, v2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->z1(Lmb/w1;)Lmb/g3;

    move-result-object v0

    iget-object v1, p1, Lmb/w1;->h:Lmb/n3;

    iget-object v2, p1, Lmb/w1;->g:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, v0, v2}, Lmb/a7;->g1(Lmb/k3;Lmb/g3;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Lmb/a7;->N(Lmb/y4;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->r0(Lmb/k3;I)V

    invoke-virtual {p0, v1}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lmb/a7;->g0(Lmb/w1;Lmb/w;)V

    const-string v5, "++"

    if-ne v2, v5, :cond_8

    const-string v2, "+"

    invoke-virtual {p0, p1, v2}, Lmb/a7;->N1(Lmb/y4;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v5, "--"

    if-ne v2, v5, :cond_9

    const-string v2, "-"

    invoke-virtual {p0, p1, v2}, Lmb/a7;->N1(Lmb/y4;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lmb/a7;->a2(Lmb/w1;Lmb/w;Lmb/b0;)V

    invoke-virtual {p0, v1}, Lmb/a7;->X(Lmb/n3;)V

    :goto_3
    return-object v3

    :cond_9
    const-string v0, "Unexpected operator \""

    const-string v1, "\""

    invoke-static {v0, v2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public F(Lmb/a6;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/a6;->h:Lmb/y4;

    iget-object v1, p1, Lmb/u1;->g:Lmb/f1;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lmb/a7;->q:Lmb/q;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1, v4}, Lmb/a7;->d0(Lmb/u1;Lmb/f1;[Lmb/y4;)Z

    move-result p0

    goto :goto_1

    :cond_0
    new-instance v2, Lmb/d;

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, v2}, Lmb/a7;->d1(Lmb/k;)V

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->d()Lmb/d;

    move-result-object v3

    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lmb/h;

    invoke-direct {v6, v5}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v6}, Lmb/k;->a()V

    invoke-virtual {v2}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/u1;->f:Lmb/d;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    :try_start_0
    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    iget-object v3, v0, Lmb/n;->g:Lmb/h;

    iget-object v3, v3, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0, v6}, Lmb/n;->j(Lmb/h;)V

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iput-object v3, v0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p0, v1}, Lmb/a7;->E(Lmb/f1;)Z

    iget-object v0, p1, Lmb/u1;->f:Lmb/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/u1;->f:Lmb/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->g()V

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/j1;->e:Lmb/d;

    :cond_2
    move p0, v2

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_2
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->g()V

    throw p1

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public F0(Lmb/i2;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p1, Lmb/i2;->g:Lmb/s;

    invoke-virtual {p0}, Lmb/s;->e()Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p1, Lmb/i2;->g:Lmb/s;

    iget-object v1, p1, Lmb/y4;->c:Lmb/a5;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0, v1, v2}, Lmb/a7;->v(Lmb/u;Lmb/a5;Lhb/c;)V

    invoke-virtual {p0, p1, v0}, Lmb/a7;->V1(Lmb/m3;Lmb/s;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public G0(Lmb/n1;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmb/x;->x:Lmb/w;

    return-object p0

    :pswitch_1
    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-static {p1, v0}, Lmb/a7;->n2(Lhb/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character literal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lhb/a;

    const-string v0, "Empty character literal"

    invoke-direct {p0, p1, v0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public H(Lmb/m2;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x66

    if-eq p0, p1, :cond_1

    const/16 p1, 0x46

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmb/x;->y:Lmb/w;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lmb/x;->z:Lmb/w;

    :goto_1
    return-object p0

    :pswitch_1
    const-string v0, "SNO: parsing float literal \""

    const-string v1, "SNO: parsing double literal \""

    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    :goto_2
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x66

    const-string v7, "\": "

    const/16 v8, 0x2e

    const/16 v9, 0x30

    const-string v10, "Literal \""

    const-string v11, "123456789"

    const-string v12, "\" is out of range"

    if-eq v3, v6, :cond_a

    const/16 v6, 0x46

    if-ne v3, v6, :cond_2

    goto/16 :goto_5

    :cond_2
    const/16 v0, 0x64

    if-eq v3, v0, :cond_3

    const/16 v0, 0x44

    if-ne v3, v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_6

    if-eq v0, v9, :cond_5

    if-eq v0, v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is too small to be represented as a double"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_7
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_8

    :cond_8
    new-instance p1, Lhb/b;

    const-string v0, "\" results is NaN"

    invoke-static {v1, p0, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value of double literal \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p1

    new-instance v0, Lhb/b;

    invoke-static {v1, p0, v7}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0, p1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_d

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_c

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is too small to be represented as a float"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_d
    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_e
    new-instance p1, Lhb/b;

    const-string v1, "\" results in NaN"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value of float literal \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    new-instance v1, Lhb/b;

    invoke-static {v0, p0, v7}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, p1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public H0(Lmb/l4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/y2;->i:Ljava/lang/String;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->w(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/a7;->x(Lmb/p4;)V

    invoke-virtual {p0, p1}, Lmb/a7;->I(Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public I(Lmb/t4;)Ljava/lang/Object;
    .locals 2

    iget p0, p1, Lmb/t4;->d:I

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    packed-switch p0, :pswitch_data_1

    const-string p0, "null"

    goto :goto_0

    :pswitch_0
    const-string p0, "BOOLEAN"

    goto :goto_0

    :pswitch_1
    const-string p0, "DOUBLE"

    goto :goto_0

    :pswitch_2
    const-string p0, "FLOAT"

    goto :goto_0

    :pswitch_3
    const-string p0, "LONG"

    goto :goto_0

    :pswitch_4
    const-string p0, "INT"

    goto :goto_0

    :pswitch_5
    const-string p0, "CHAR"

    goto :goto_0

    :pswitch_6
    const-string p0, "SHORT"

    goto :goto_0

    :pswitch_7
    const-string p0, "BYTE"

    goto :goto_0

    :pswitch_8
    const-string p0, "VOID"

    :goto_0
    const-string v1, "Invalid primitive "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :pswitch_9
    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :pswitch_a
    sget-object p0, Lmb/x;->y:Lmb/w;

    return-object p0

    :pswitch_b
    sget-object p0, Lmb/x;->z:Lmb/w;

    return-object p0

    :pswitch_c
    sget-object p0, Lmb/x;->B:Lmb/w;

    return-object p0

    :pswitch_d
    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :pswitch_e
    sget-object p0, Lmb/x;->x:Lmb/w;

    return-object p0

    :pswitch_f
    sget-object p0, Lmb/x;->C:Lmb/w;

    return-object p0

    :pswitch_10
    sget-object p0, Lmb/x;->w:Lmb/w;

    return-object p0

    :pswitch_11
    sget-object p0, Lmb/x;->v:Lmb/w;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
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

.method public I0(Lmb/v3;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/v3;->i:Lmb/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->x0(Lmb/v3;)Lmb/v;

    move-result-object v0

    iput-object v0, p1, Lmb/v3;->i:Lmb/v;

    :goto_0
    invoke-virtual {v0}, Lmb/v;->l()Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0, p1}, Lmb/a7;->x0(Lmb/v3;)Lmb/v;

    move-result-object p0

    iget-object v1, p1, Lmb/z2;->g:[Lmb/y4;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    iget-object v3, p0, Lmb/t;->e:Lmb/x;

    iget-object v4, p1, Lmb/v3;->h:Lmb/c1;

    const-string v5, "\" cannot be invoked in static context"

    const-string v6, "Instance method \""

    const/4 v7, 0x0

    if-nez v4, :cond_5

    iget-object v4, p1, Lmb/y4;->c:Lmb/a5;

    :goto_1
    instance-of v8, v4, Lmb/u5;

    if-nez v8, :cond_1

    invoke-interface {v4}, Lmb/a5;->b()Lmb/a5;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v8, v4

    check-cast v8, Lmb/u5;

    instance-of v9, v4, Lmb/m0;

    if-nez v9, :cond_2

    invoke-interface {v4}, Lmb/a5;->b()Lmb/a5;

    move-result-object v4

    :cond_2
    check-cast v4, Lmb/m0;

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lmb/v;->toString()Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lmb/v;->toString()Ljava/lang/String;

    invoke-static {v8}, Lmb/a7;->C1(Lmb/u5;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, p1, v4, v8, v3}, Lmb/a7;->Y1(Lmb/y4;Lmb/m0;Lmb/u5;Lmb/b0;)V

    goto/16 :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/v;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v7

    :cond_5
    new-instance v8, Lmb/t6;

    const/16 v9, 0xc

    invoke-direct {v8, v0, v9}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-virtual {v4, v8}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4}, Lmb/c1;->C()Lmb/s5;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v8}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/z2;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v7

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expression \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v4, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-virtual {v0, v4}, Lmb/a7;->g2(Lmb/c1;)Lmb/y4;

    move-result-object v5

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v5}, Lmb/a7;->L1(Lmb/x0;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v5}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v5}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    iget-object v4, v0, Lmb/a7;->e:Lmb/n;

    iget-object v4, v4, Lmb/n;->g:Lmb/h;

    iget-object v4, v4, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v4}, Lmb/p6;->c()Lorg/codehaus/janino/util/r0;

    move-result-object v4

    sget-object v5, Lorg/codehaus/janino/util/s0;->i:Lorg/codehaus/janino/util/j0;

    if-eq v4, v5, :cond_10

    :goto_2
    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {p0}, Lmb/t;->j()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lmb/t;->a:Z

    if-eqz v6, :cond_d

    array-length v6, v4

    new-array v9, v6, [Lmb/y4;

    array-length v10, v4

    sub-int/2addr v5, v10

    add-int/2addr v5, v8

    new-array v10, v5, [Lmb/y4;

    if-lez v5, :cond_b

    array-length v11, v4

    sub-int/2addr v11, v8

    move v12, v7

    :goto_3
    if-ge v12, v5, :cond_b

    aget-object v13, v1, v11

    aput-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v8

    goto :goto_3

    :cond_b
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    :goto_4
    if-ltz v5, :cond_c

    aget-object v11, v1, v5

    aput-object v11, v9, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_c
    sub-int/2addr v6, v8

    new-instance v1, Lmb/g4;

    array-length v5, v4

    sub-int/2addr v5, v8

    aget-object v5, v4, v5

    new-instance v11, Lmb/w0;

    invoke-direct {v11, v2, v10}, Lmb/w0;-><init>(Lhb/c;[Lmb/x0;)V

    invoke-direct {v1, v2, v5, v11}, Lmb/g4;-><init>(Lhb/c;Lmb/x;Lmb/w0;)V

    aput-object v1, v9, v6

    move-object v1, v9

    :cond_d
    move v5, v7

    :goto_5
    array-length v6, v1

    if-ge v5, v6, :cond_e

    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v6

    aget-object v9, v4, v5

    aget-object v10, v1, v5

    invoke-virtual {v0, v10}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, p1, v6, v9, v10}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    iget-object v1, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v0, p0, v1, v2}, Lmb/a7;->v(Lmb/u;Lmb/a5;Lhb/c;)V

    invoke-virtual {v3}, Lmb/x;->G()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p0}, Lmb/u;->b()I

    move-result v1

    if-ne v1, v8, :cond_f

    move-object v1, v3

    iget-object v3, p0, Lmb/t;->e:Lmb/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmb/t;->c()Lmb/c6;

    move-result-object v2

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v2, Lmb/c6;->a:[Ljava/lang/String;

    array-length v6, v5

    add-int/2addr v6, v8

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v7

    array-length v1, v5

    invoke-static {v5, v7, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lmb/c6;

    iget-object v1, v2, Lmb/c6;->b:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v2, 0xb8

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    goto :goto_6

    :cond_f
    move-object v1, p1

    invoke-virtual {v0, v1, p0}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    :goto_6
    invoke-virtual {p0}, Lmb/v;->l()Lmb/x;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "Method invocation target is always null"

    invoke-virtual {v0, v7, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v7

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    move-object v1, p1

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public J(Lmb/w0;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0
.end method

.method public J0(Lmb/b3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Compilation of lambda expression NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    const-string p0, "Compilation of lambda expression NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lmb/d0;->a:Lmb/s5;

    new-instance v1, Lmb/b2;

    const-string v2, "value"

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    invoke-direct {v1, v2, p1}, Lmb/b2;-><init>(Ljava/lang/String;Lmb/z1;)V

    filled-new-array {v1}, [Lmb/b2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmb/t6;->o(Lmb/s5;[Lmb/b2;)Lmb/v6;

    move-result-object p0

    return-object p0
.end method

.method public L(Lmb/q1;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lmb/p4;

    :try_start_0
    invoke-virtual {p0, v2}, Lmb/a7;->D(Lmb/v5;)V
    :try_end_0
    .catch Lorg/codehaus/janino/util/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compiling \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lmb/m0;

    iget-object v1, v2, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lhb/a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lmb/m0;

    iget-object v1, v2, Lmb/m0;->a:Lhb/c;

    invoke-direct {p1, v0, v1, p0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public M(Lmb/d1;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lmb/t6;->l:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    iget-object v2, v0, Lmb/a7;->h:Lmb/b;

    iget-object v3, v1, Lmb/d1;->g:Ljava/lang/String;

    iget-object v4, v1, Lmb/d1;->f:Lmb/y4;

    const-string v5, "||"

    if-eq v3, v5, :cond_d

    const-string v5, "&&"

    if-eq v3, v5, :cond_d

    const-string v5, "=="

    if-eq v3, v5, :cond_d

    const-string v5, "!="

    if-eq v3, v5, :cond_d

    const-string v5, "<"

    if-eq v3, v5, :cond_d

    const-string v5, ">"

    if-eq v3, v5, :cond_d

    const-string v5, "<="

    if-eq v3, v5, :cond_d

    const-string v5, ">="

    if-ne v3, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v5, "|"

    if-eq v3, v5, :cond_b

    const-string v5, "^"

    if-eq v3, v5, :cond_b

    const-string v5, "&"

    if-ne v3, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v5, "*"

    const-string v6, "+"

    if-eq v3, v5, :cond_5

    const-string v5, "/"

    if-eq v3, v5, :cond_5

    const-string v5, "%"

    if-eq v3, v5, :cond_5

    if-eq v3, v6, :cond_5

    const-string v5, "-"

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "<<"

    if-eq v3, v2, :cond_4

    const-string v2, ">>"

    if-eq v3, v2, :cond_4

    const-string v2, ">>>"

    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "Unexpected operator \""

    const-string v4, "\""

    invoke-static {v2, v3, v4}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/a7;->l2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v0

    goto :goto_5

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lmb/d1;->F()Lf8/j5;

    move-result-object v4

    iget-object v5, v4, Lf8/j5;->m:Ljava/util/ListIterator;

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/y4;

    invoke-virtual {v0, v4}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v4

    if-ne v3, v6, :cond_6

    iget-object v7, v2, Lmb/a0;->r:Lmb/x;

    if-ne v4, v7, :cond_6

    move-object v0, v7

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v4}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v4, v7

    :cond_7
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmb/y4;

    invoke-virtual {v0, v7}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v8

    if-eqz v8, :cond_8

    move-object v7, v8

    :cond_8
    if-ne v3, v6, :cond_9

    iget-object v8, v2, Lmb/a0;->r:Lmb/x;

    if-ne v7, v8, :cond_9

    move-object v0, v8

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v1, v4, v7}, Lmb/a7;->p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_a
    :goto_2
    move-object v0, v4

    goto :goto_5

    :cond_b
    :goto_3
    invoke-virtual {v0, v4}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v3

    sget-object v4, Lmb/x;->D:Lmb/w;

    if-eq v3, v4, :cond_a

    iget-object v2, v2, Lmb/a0;->c:Lmb/x;

    if-ne v3, v2, :cond_c

    goto :goto_2

    :cond_c
    iget-object v2, v1, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {v0, v2}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lmb/a7;->p(Lmb/y4;Lmb/b0;Lmb/b0;)Lmb/w;

    move-result-object v0

    goto :goto_5

    :cond_d
    :goto_4
    sget-object v0, Lmb/x;->D:Lmb/w;

    :goto_5
    return-object v0

    :pswitch_1
    sget-object v2, Lmb/a7;->q:Lmb/q;

    iget-object v3, v1, Lmb/d1;->g:Ljava/lang/String;

    iget-object v4, v1, Lmb/d1;->h:Lmb/y4;

    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    const-string v5, "&"

    const-string v6, "^"

    const-string v7, "-"

    const-string v8, "%"

    const-string v9, "/"

    const-string v10, "*"

    const-string v11, "+"

    const-string v12, "!="

    const-string v13, "=="

    const-string v14, "|"

    if-eq v3, v14, :cond_13

    if-eq v3, v6, :cond_13

    if-eq v3, v5, :cond_13

    if-eq v3, v10, :cond_13

    if-eq v3, v9, :cond_13

    if-eq v3, v8, :cond_13

    if-eq v3, v11, :cond_13

    if-eq v3, v7, :cond_13

    if-eq v3, v13, :cond_13

    if-ne v3, v12, :cond_e

    goto :goto_6

    :cond_e
    const-string v5, "&&"

    if-eq v3, v5, :cond_f

    const-string v6, "||"

    if-ne v3, v6, :cond_53

    :cond_f
    iget-object v1, v1, Lmb/d1;->f:Lmb/y4;

    invoke-virtual {v0, v1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_53

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v3, v5, :cond_11

    if-eqz v1, :cond_10

    invoke-virtual {v0, v4}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :cond_10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_e

    :cond_11
    if-eqz v1, :cond_12

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_e

    :cond_12
    invoke-virtual {v0, v4}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :cond_13
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lmb/d1;->F()Lf8/j5;

    move-result-object v1

    :goto_7
    iget-object v15, v1, Lf8/j5;->m:Ljava/util/ListIterator;

    invoke-interface {v15}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v15}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmb/y4;

    invoke-virtual {v0, v15}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v2, :cond_14

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    if-ne v1, v2, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v11, :cond_19

    instance-of v15, v1, Ljava/lang/String;

    if-nez v15, :cond_17

    instance-of v15, v4, Ljava/lang/String;

    if-eqz v15, :cond_19

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_19
    instance-of v15, v1, Ljava/lang/Number;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v15, :cond_49

    instance-of v15, v4, Ljava/lang/Number;

    if-eqz v15, :cond_49

    :try_start_0
    instance-of v15, v1, Ljava/lang/Double;

    if-nez v15, :cond_40

    instance-of v15, v4, Ljava/lang/Double;

    if-eqz v15, :cond_1a

    goto/16 :goto_d

    :cond_1a
    instance-of v15, v1, Ljava/lang/Float;

    if-nez v15, :cond_37

    instance-of v15, v4, Ljava/lang/Float;

    if-eqz v15, :cond_1b

    goto/16 :goto_c

    :cond_1b
    instance-of v15, v1, Ljava/lang/Long;

    if-nez v15, :cond_2b

    instance-of v15, v4, Ljava/lang/Long;

    if-eqz v15, :cond_1c

    goto/16 :goto_b

    :cond_1c
    instance-of v15, v1, Ljava/lang/Integer;

    if-nez v15, :cond_1e

    instance-of v15, v1, Ljava/lang/Byte;

    if-nez v15, :cond_1e

    instance-of v15, v1, Ljava/lang/Short;

    if-nez v15, :cond_1e

    instance-of v15, v4, Ljava/lang/Integer;

    if-nez v15, :cond_1e

    instance-of v15, v1, Ljava/lang/Byte;

    if-nez v15, :cond_1e

    instance-of v15, v1, Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1e
    :goto_a
    :try_start_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v3, v14, :cond_1f

    or-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_1f
    if-ne v3, v6, :cond_20

    xor-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_20
    if-ne v3, v5, :cond_21

    and-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_21
    if-ne v3, v10, :cond_22

    mul-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_22
    if-ne v3, v9, :cond_23

    div-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_23
    if-ne v3, v8, :cond_24

    rem-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_24
    if-ne v3, v11, :cond_25

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_25
    if-ne v3, v7, :cond_26

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_26
    if-ne v3, v13, :cond_28

    if-ne v1, v4, :cond_27

    move/from16 v16, v17

    :cond_27
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_28
    if-ne v3, v12, :cond_2a

    if-eq v1, v4, :cond_29

    move/from16 v16, v17

    :cond_29
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_2a
    move-object v1, v2

    goto/16 :goto_8

    :cond_2b
    :goto_b
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    if-ne v3, v14, :cond_2c

    or-long v15, v18, v20

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_2c
    if-ne v3, v6, :cond_2d

    xor-long v15, v18, v20

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_2d
    if-ne v3, v5, :cond_2e

    and-long v15, v18, v20

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_2e
    if-ne v3, v10, :cond_2f

    mul-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_2f
    if-ne v3, v9, :cond_30

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_30
    if-ne v3, v8, :cond_31

    rem-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_31
    if-ne v3, v11, :cond_32

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_32
    if-ne v3, v7, :cond_33

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :cond_33
    if-ne v3, v13, :cond_35

    cmp-long v1, v18, v20

    if-nez v1, :cond_34

    move/from16 v16, v17

    :cond_34
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_35
    if-ne v3, v12, :cond_2a

    cmp-long v1, v18, v20

    if-eqz v1, :cond_36

    move/from16 v16, v17

    :cond_36
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_37
    :goto_c
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    if-ne v3, v10, :cond_38

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :cond_38
    if-ne v3, v9, :cond_39

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :cond_39
    if-ne v3, v8, :cond_3a

    rem-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :cond_3a
    if-ne v3, v11, :cond_3b

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :cond_3b
    if-ne v3, v7, :cond_3c

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :cond_3c
    if-ne v3, v13, :cond_3e

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3d

    move/from16 v16, v17

    :cond_3d
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_3e
    if-ne v3, v12, :cond_2a

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3f

    move/from16 v16, v17

    :cond_3f
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_40
    :goto_d
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    if-ne v3, v10, :cond_41

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_8

    :cond_41
    if-ne v3, v9, :cond_42

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_8

    :cond_42
    if-ne v3, v8, :cond_43

    rem-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_8

    :cond_43
    if-ne v3, v11, :cond_44

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_8

    :cond_44
    if-ne v3, v7, :cond_45

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_8

    :cond_45
    if-ne v3, v13, :cond_47

    cmpl-double v1, v18, v20

    if-nez v1, :cond_46

    move/from16 v16, v17

    :cond_46
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_47
    if-ne v3, v12, :cond_2a

    cmpl-double v1, v18, v20

    if-eqz v1, :cond_48

    move/from16 v16, v17

    :cond_48
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_49
    instance-of v15, v1, Ljava/lang/Character;

    if-eqz v15, :cond_4d

    instance-of v15, v4, Ljava/lang/Character;

    if-eqz v15, :cond_4d

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-ne v3, v13, :cond_4b

    if-ne v1, v4, :cond_4a

    move/from16 v16, v17

    :cond_4a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_4b
    if-ne v3, v12, :cond_2a

    if-eq v1, v4, :cond_4c

    move/from16 v16, v17

    :cond_4c
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_4d
    if-eqz v1, :cond_4e

    if-nez v4, :cond_53

    :cond_4e
    if-ne v3, v13, :cond_50

    if-ne v1, v4, :cond_4f

    move/from16 v16, v17

    :cond_4f
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_50
    if-ne v3, v12, :cond_2a

    if-eq v1, v4, :cond_51

    move/from16 v16, v17

    :cond_51
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_8

    :cond_52
    move-object v2, v1

    :catch_0
    :cond_53
    :goto_e
    return-object v2

    :pswitch_2
    iget-object v2, v1, Lmb/d1;->g:Ljava/lang/String;

    const-string v3, "||"

    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    if-eq v2, v3, :cond_55

    const-string v3, "&&"

    if-eq v2, v3, :cond_55

    const-string v3, "=="

    if-eq v2, v3, :cond_55

    const-string v3, "!="

    if-eq v2, v3, :cond_55

    const-string v3, "<"

    if-eq v2, v3, :cond_55

    const-string v3, ">"

    if-eq v2, v3, :cond_55

    const-string v3, "<="

    if-eq v2, v3, :cond_55

    const-string v3, ">="

    if-ne v2, v3, :cond_54

    goto :goto_f

    :cond_54
    const/4 v3, 0x0

    invoke-virtual {v1}, Lmb/d1;->F()Lf8/j5;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lmb/a7;->K(Lmb/y4;Lmb/b0;Ljava/util/Iterator;Ljava/lang/String;)Lmb/b0;

    move-result-object v0

    goto :goto_10

    :cond_55
    :goto_f
    invoke-virtual {v0, v1}, Lmb/a7;->U(Lmb/h1;)Lmb/w;

    move-result-object v0

    :goto_10
    return-object v0

    :pswitch_3
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public M0(Lmb/l5;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    iget-object v1, v0, Lmb/a0;->n:Lmb/x;

    iget-object v2, p1, Lmb/l5;->e:Lmb/y4;

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    check-cast v2, Lmb/x;

    invoke-virtual {v1, v2}, Lmb/x;->D(Lmb/x;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->q()V

    :try_start_0
    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object v1

    iget-short v1, v1, Lmb/j3;->a:S

    iput-short v1, p1, Lmb/l5;->g:S

    invoke-virtual {p0, p1}, Lmb/a7;->q0(Lmb/k3;)V

    iget-object v0, v0, Lmb/a0;->n:Lmb/x;

    iget-short v1, p1, Lmb/l5;->g:S

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lmb/a7;->q2(I)V

    new-instance v0, Lmb/d;

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->f()Lmb/k;

    move-result-object v1

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    iget-object v3, v3, Lmb/n;->g:Lmb/h;

    iget-object v3, v3, Lmb/k;->d:Lmb/p6;

    iget-object v4, p1, Lmb/l5;->f:Lmb/f1;

    invoke-virtual {p0, v4}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lmb/a7;->d1(Lmb/k;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    iget-object v6, v5, Lmb/n;->g:Lmb/h;

    iget-object v7, v6, Lmb/k;->d:Lmb/p6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v3, v6, Lmb/k;->d:Lmb/p6;

    const-string v3, "Ljava/lang/Throwable;"

    invoke-virtual {v5, v3}, Lmb/n;->l(Ljava/lang/String;)V

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->d()Lmb/d;

    move-result-object v3

    iget-object v5, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5, v1, v3, v3, v2}, Lmb/n;->a(Lmb/k;Lmb/k;Lmb/d;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/a7;->G1(Lmb/f1;)V

    invoke-virtual {p0, p1}, Lmb/a7;->o(Lmb/k3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->g:Lmb/h;

    iput-object v7, v1, Lmb/k;->d:Lmb/p6;

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lmb/k;->a()V

    invoke-virtual {p0, p1}, Lmb/a7;->G1(Lmb/f1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iput-object v7, v0, Lmb/k;->d:Lmb/p6;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    throw p1

    :cond_2
    const-string v0, "Monitor object of \"synchronized\" statement is not a subclass of \"Object\""

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    iget-object v0, v0, Lmb/a0;->n:Lmb/x;

    iget-short v1, p1, Lmb/l5;->g:S

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    const/16 p1, 0xc3

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public N(Lmb/f4;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/f4;->i:Lmb/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmb/f4;->g:Lmb/s5;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    iput-object v0, p1, Lmb/f4;->i:Lmb/b0;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/f4;->i:Lmb/b0;

    iget-object v1, p1, Lmb/f4;->f:Lmb/y4;

    iget-object v2, p1, Lmb/f4;->g:Lmb/s5;

    iget-object v3, p1, Lmb/m3;->a:Lhb/c;

    iget-object v4, p0, Lmb/t6;->m:Lmb/a7;

    if-eqz v0, :cond_1

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    iput-object v0, p1, Lmb/f4;->i:Lmb/b0;

    goto :goto_1

    :goto_2
    move-object p0, v8

    check-cast p0, Lmb/x;

    invoke-virtual {p0}, Lmb/x;->G()Z

    move-result v0

    const-string v5, "\""

    const/4 v6, 0x0

    if-nez v0, :cond_d

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v4, p0, v0}, Lmb/a7;->r1(Lmb/x;Lmb/a5;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lmb/x;->B()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmb/x;->v()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_3
    move-object v7, v1

    goto/16 :goto_7

    :cond_2
    const-string p0, "Static member class cannot be instantiated with qualified NEW"

    invoke-virtual {v4, v6, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v6

    :cond_3
    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    :goto_4
    instance-of v1, v0, Lmb/u5;

    if-nez v1, :cond_4

    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v1, v0

    check-cast v1, Lmb/u5;

    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    check-cast v0, Lmb/v5;

    instance-of v0, v0, Lmb/e0;

    if-eqz v0, :cond_9

    instance-of v0, v1, Lmb/q3;

    const-string v5, "static"

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lmb/q3;

    iget-object v0, v0, Lmb/m0;->b:[Lmb/x3;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    instance-of v0, v1, Lmb/m4;

    if-eqz v0, :cond_6

    check-cast v1, Lmb/m4;

    iget-object v0, v1, Lmb/m0;->b:[Lmb/x3;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lmb/x;->m()Lmb/x;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    move-object v7, v6

    goto :goto_7

    :cond_8
    new-instance v1, Lmb/u4;

    new-instance v2, Lmb/c5;

    invoke-direct {v2, v3, v0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v1, v3, v2}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    iget-object v0, p1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v1, v0}, Lmb/y4;->a(Lmb/a5;)V

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lmb/x;->v()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Instantiation of \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    iget-object p1, p1, Lmb/f4;->i:Lmb/b0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" requires an enclosing instance"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v6

    :goto_7
    invoke-virtual {v4, p1, v8}, Lmb/a7;->O1(Lmb/k3;Lmb/b0;)V

    invoke-virtual {v4, p1}, Lmb/a7;->q0(Lmb/k3;)V

    iget-object v6, p1, Lmb/y4;->c:Lmb/a5;

    iget-object v9, p1, Lmb/f4;->h:[Lmb/y4;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lmb/a7;->t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    iget-object p1, v4, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p1, v4, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmb/n;->l(Ljava/lang/String;)V

    return-object v8

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot instantiate abstract \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v6

    :cond_c
    invoke-virtual {v4, v3, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v6

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot instantiate \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v6

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    move-object v5, p1

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v5}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public N0(Lmb/x2;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x6c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x4c

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lmb/x;->A:Lmb/w;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lmb/x;->B:Lmb/w;

    :goto_1
    return-object p0

    :pswitch_1
    iget-object v0, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8

    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_2
    const-string v1, "0b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0l"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    const/16 v2, 0xa

    move v1, v4

    :goto_4
    :try_start_0
    const-string v5, "l"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_5

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_5

    :cond_5
    invoke-static {v2, p0}, Ljb/b;->c(ILjava/lang/String;)J

    move-result-wide v1

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_6

    :cond_7
    invoke-static {v2, p0}, Ljb/b;->b(ILjava/lang/String;)I

    move-result p0

    :goto_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer literal \""

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public O(Lmb/n2;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lmb/t6;->l:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, v2, Lmb/a7;->h:Lmb/b;

    const-string v3, "Don\'t know how to convert to "

    iget-object v4, v1, Lmb/n2;->i:Lmb/y4;

    iget-object v5, v1, Lmb/u1;->g:Lmb/f1;

    iget-object v6, v1, Lmb/n2;->h:Lmb/p2;

    invoke-virtual {v2, v4}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lmb/x;

    invoke-virtual {v8}, Lmb/x;->C()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    iget-object v0, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->q()V

    :try_start_0
    iget-object v0, v2, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iget-object v0, v0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2, v6, v11}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v3

    iget-object v8, v3, Lmb/g3;->b:Lmb/b0;

    iget-object v9, v6, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v9

    iput-object v9, v3, Lmb/g3;->c:Lmb/j3;

    invoke-virtual {v2, v4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    iget-object v9, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v9, v12, v12, v10}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object v9

    iget-short v9, v9, Lmb/j3;->a:S

    invoke-virtual {v2, v4, v7, v9}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    invoke-virtual {v2, v1, v11}, Lmb/a7;->j0(Lmb/k3;I)V

    sget-object v4, Lmb/x;->A:Lmb/w;

    invoke-virtual {v2, v11, v4}, Lmb/a7;->g(ZLmb/b0;)Lmb/g3;

    move-result-object v4

    iget-object v10, v4, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v4}, Lmb/g3;->a()S

    move-result v11

    invoke-virtual {v2, v1, v10, v11}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    iget-object v10, v2, Lmb/a7;->e:Lmb/n;

    iget-object v11, v10, Lmb/n;->g:Lmb/h;

    iget-object v11, v11, Lmb/k;->d:Lmb/p6;

    new-instance v13, Lmb/d;

    invoke-direct {v13, v10}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v2, v13}, Lmb/a7;->d1(Lmb/k;)V

    iget-object v10, v2, Lmb/a7;->e:Lmb/n;

    iget-object v14, v10, Lmb/n;->g:Lmb/h;

    iput-object v11, v14, Lmb/k;->d:Lmb/p6;

    iput-object v12, v1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {v10}, Lmb/n;->d()Lmb/d;

    move-result-object v10

    invoke-virtual {v2, v1, v7, v9}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {v2, v1, v4}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    move-object v11, v7

    check-cast v11, Lmb/x;

    invoke-virtual {v11}, Lmb/x;->e()Lmb/x;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lmb/a7;->w2(Lmb/k3;Lmb/b0;)V

    invoke-virtual {v2, v6, v11, v8, v12}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lmb/g3;->a()S

    move-result v3

    invoke-virtual {v2, v1, v8, v3}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    invoke-virtual {v2, v5}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v3

    iget-object v5, v1, Lmb/u1;->f:Lmb/d;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lmb/k;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    iget-object v3, v1, Lmb/u1;->f:Lmb/d;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "++"

    invoke-virtual {v2, v1, v4, v3}, Lmb/a7;->g1(Lmb/k3;Lmb/g3;Ljava/lang/String;)V

    :goto_1
    iput-object v12, v1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {v13}, Lmb/k;->a()V

    invoke-virtual {v2, v1, v4}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    invoke-virtual {v2, v1, v7, v9}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {v2, v1}, Lmb/a7;->k(Lmb/m3;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v10}, Lmb/a7;->e1(Lmb/m3;ILmb/k;)V

    iget-object v3, v2, Lmb/a7;->e:Lmb/n;

    iget-object v4, v3, Lmb/n;->g:Lmb/h;

    iput-object v0, v4, Lmb/k;->d:Lmb/p6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lmb/n;->p()V

    iget-object v0, v1, Lmb/j1;->e:Lmb/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmb/k;->a()V

    iput-object v12, v1, Lmb/j1;->e:Lmb/d;

    goto/16 :goto_5

    :goto_2
    iget-object v1, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->p()V

    throw v0

    :cond_2
    iget-object v9, v0, Lmb/a0;->l:Lmb/x;

    invoke-virtual {v9, v8}, Lmb/x;->D(Lmb/x;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v7, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v7}, Lmb/n;->q()V

    :try_start_1
    iget-object v7, v2, Lmb/a7;->e:Lmb/n;

    iget-object v7, v7, Lmb/n;->g:Lmb/h;

    iget-object v7, v7, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2, v4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    iget-object v8, v0, Lmb/a0;->y:Lmb/v;

    invoke-virtual {v2, v4, v8}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    iget-object v8, v0, Lmb/a0;->w:Lmb/x;

    invoke-virtual {v2, v11, v8}, Lmb/a7;->g(ZLmb/b0;)Lmb/g3;

    move-result-object v8

    iget-object v9, v8, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v8}, Lmb/g3;->a()S

    move-result v13

    invoke-virtual {v2, v1, v9, v13}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    new-instance v9, Lmb/d;

    iget-object v13, v2, Lmb/a7;->e:Lmb/n;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v9, v13}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v13, v2, Lmb/a7;->e:Lmb/n;

    iget-object v13, v13, Lmb/n;->g:Lmb/h;

    iget-object v13, v13, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2, v9}, Lmb/a7;->d1(Lmb/k;)V

    iget-object v14, v2, Lmb/a7;->e:Lmb/n;

    iget-object v14, v14, Lmb/n;->g:Lmb/h;

    iput-object v13, v14, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2, v6, v11}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v13

    iget-object v14, v13, Lmb/g3;->b:Lmb/b0;

    iget-object v15, v6, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Lmb/a7;->h(Lmb/b0;Ljava/lang/String;)Lmb/j3;

    move-result-object v15

    iput-object v15, v13, Lmb/g3;->c:Lmb/j3;

    iput-object v12, v1, Lmb/u1;->f:Lmb/d;

    iget-object v15, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v15}, Lmb/n;->d()Lmb/d;

    move-result-object v15

    invoke-virtual {v2, v1, v8}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    iget-object v11, v0, Lmb/a0;->T:Lmb/v;

    invoke-virtual {v2, v4, v11}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    invoke-virtual {v2, v14}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v11

    const/16 v10, 0xc0

    if-eqz v11, :cond_3

    invoke-virtual {v2, v6}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {v2, v10}, Lmb/a7;->q2(I)V

    iget-object v3, v2, Lmb/a7;->e:Lmb/n;

    iget-object v3, v3, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v11}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v2, v3}, Lmb/a7;->v2(I)V

    iget-object v3, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v3, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v11}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lmb/n;->l(Ljava/lang/String;)V

    move-object v3, v14

    check-cast v3, Lmb/x;

    invoke-virtual {v2, v6, v11, v3}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    iget-object v11, v0, Lmb/a0;->n:Lmb/x;

    invoke-virtual {v2, v6, v11, v14, v12}, Lmb/a7;->h2(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    iget-object v11, v0, Lmb/a0;->n:Lmb/x;

    invoke-virtual {v2, v11, v14}, Lmb/a7;->B1(Lmb/b0;Lmb/b0;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    move-object v11, v14

    check-cast v11, Lmb/x;

    invoke-virtual {v2, v6}, Lmb/a7;->f(Lmb/k3;)V

    invoke-virtual {v2, v10}, Lmb/a7;->q2(I)V

    iget-object v6, v2, Lmb/a7;->e:Lmb/n;

    iget-object v6, v6, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v11}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v2, v6}, Lmb/a7;->v2(I)V

    iget-object v6, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v6}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v6, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v11}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lmb/n;->l(Ljava/lang/String;)V

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_8

    :goto_4
    invoke-virtual {v13}, Lmb/g3;->a()S

    move-result v3

    invoke-virtual {v2, v1, v14, v3}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    invoke-virtual {v2, v5}, Lmb/a7;->E(Lmb/f1;)Z

    iget-object v3, v1, Lmb/u1;->f:Lmb/d;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lmb/k;->a()V

    :cond_6
    iput-object v12, v1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {v9}, Lmb/k;->a()V

    invoke-virtual {v2, v1, v8}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    iget-object v0, v0, Lmb/a0;->S:Lmb/v;

    invoke-virtual {v2, v4, v0}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0, v15}, Lmb/a7;->f1(Lmb/k3;ILmb/k;)V

    iget-object v0, v2, Lmb/a7;->e:Lmb/n;

    iget-object v3, v0, Lmb/n;->g:Lmb/h;

    iput-object v7, v3, Lmb/k;->d:Lmb/p6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lmb/n;->p()V

    iget-object v0, v1, Lmb/j1;->e:Lmb/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmb/k;->a()V

    iput-object v12, v1, Lmb/j1;->e:Lmb/d;

    :cond_7
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    :try_start_2
    new-instance v0, Lhb/b;

    iget-object v1, v1, Lmb/m3;->a:Lhb/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    iget-object v1, v2, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->p()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot iterate over \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v2, v1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v12

    :pswitch_0
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O0(Lmb/i5;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->y0(Lmb/i5;)Lmb/v;

    move-result-object p0

    invoke-virtual {p0}, Lmb/v;->l()Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0, p1}, Lmb/a7;->y0(Lmb/i5;)Lmb/v;

    move-result-object v7

    iget-object v1, p1, Lmb/z2;->g:[Lmb/y4;

    iget-object v2, p1, Lmb/m3;->a:Lhb/c;

    iget-object p0, p1, Lmb/y4;->c:Lmb/a5;

    :goto_0
    instance-of v3, p0, Lmb/e5;

    if-nez v3, :cond_6

    instance-of v3, p0, Lmb/l1;

    if-eqz v3, :cond_0

    goto :goto_4

    :cond_0
    instance-of v3, p0, Lmb/r2;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast p0, Lmb/r2;

    goto :goto_1

    :cond_1
    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_5

    instance-of v3, p0, Lmb/u3;

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Lmb/u3;

    invoke-virtual {v3}, Lmb/u3;->z()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Cannot invoke superclass method in static context"

    invoke-virtual {v0, v2, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_3
    :goto_2
    iget-object p0, p0, Lmb/l0;->c:Lmb/v5;

    invoke-virtual {v0, p0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v2}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {v7}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v3

    aget-object v4, p0, v2

    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v3, v4, v5}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, v7, Lmb/t;->e:Lmb/x;

    invoke-virtual {v7}, Lmb/v;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lmb/t;->c()Lmb/c6;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0xb7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmb/a7;->s1(Lmb/k3;ILmb/x;Ljava/lang/String;Lmb/c6;Z)V

    invoke-virtual {v7}, Lmb/v;->l()Lmb/x;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "Cannot invoke superclass method in non-method scope"

    invoke-virtual {v0, v2, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_6
    :goto_4
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public P(Lmb/e1;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->q()V

    :try_start_0
    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmb/a7;->Y(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    throw p1

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/f1;

    iget-object v4, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v4, v3}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public P0(Lmb/z4;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lmb/z4;->d:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v0

    iget-object v1, p1, Lmb/z4;->e:Ljava/lang/String;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, v0, v1, p1}, Lmb/a7;->A0(Lmb/b0;Ljava/lang/String;Lhb/c;)Lmb/x;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" has no member type \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public Q(Lmb/t2;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/t2;->f:Lmb/f1;

    iget-object v1, p1, Lmb/t2;->e:Lmb/y4;

    iget-object v2, p1, Lmb/t2;->g:Lmb/f1;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lmb/c2;

    move-object v3, v0

    check-cast v3, Lmb/m3;

    iget-object v3, v3, Lmb/m3;->a:Lhb/c;

    invoke-direct {v2, v3}, Lmb/m3;-><init>(Lhb/c;)V

    :goto_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {p0, v1}, Lmb/a7;->u0(Lmb/y4;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    :goto_1
    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lmb/h;

    invoke-direct {v3, v1}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v3}, Lmb/k;->a()V

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->g:Lmb/h;

    iget-object v1, v1, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p0, v0}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v0

    iget-object v4, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v4}, Lmb/n;->f()Lmb/k;

    move-result-object v4

    iget-object v7, p0, Lmb/a7;->e:Lmb/n;

    iget-object v8, v7, Lmb/n;->g:Lmb/h;

    iput-object v1, v8, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v7}, Lmb/n;->f()Lmb/k;

    move-result-object v1

    invoke-virtual {p0, v2}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v2

    iget-object v7, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v7}, Lmb/n;->f()Lmb/k;

    move-result-object v7

    iget-object v8, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v8, v1, v7}, Lmb/n;->o(Lmb/k;Lmb/k;)V

    invoke-virtual {v4}, Lmb/k;->c()V

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->d()Lmb/d;

    move-result-object v0

    iget-object v1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1, v3}, Lmb/n;->j(Lmb/h;)V

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    invoke-virtual {p0, p1, v6, v0}, Lmb/a7;->f1(Lmb/k3;ILmb/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->g()V

    :cond_4
    :goto_2
    move v5, v6

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->g()V

    throw p1

    :cond_5
    invoke-virtual {p0, v0}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lmb/d;

    iget-object v3, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, v3}, Lmb/k;-><init>(Lmb/n;)V

    new-instance v3, Lmb/d;

    iget-object v4, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v4}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, v1, p1, v5}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    invoke-virtual {p0, v0}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Lmb/a7;->d1(Lmb/k;)V

    :cond_6
    invoke-virtual {p1}, Lmb/k;->b()V

    invoke-virtual {p0, v2}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p0

    if-nez v0, :cond_7

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lmb/k;->b()V

    if-nez v0, :cond_4

    if-eqz p0, :cond_b

    :goto_3
    goto :goto_2

    :cond_8
    new-instance p1, Lmb/d;

    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, v2}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, v1, p1, v5}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    invoke-virtual {p0, v0}, Lmb/a7;->E(Lmb/f1;)Z

    invoke-virtual {p1}, Lmb/k;->b()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v2}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lmb/d;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, v0}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p0, v1, p1, v6}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    invoke-virtual {p0, v2}, Lmb/a7;->E(Lmb/f1;)Z

    invoke-virtual {p1}, Lmb/k;->b()V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    sget-object v1, Lmb/x;->D:Lmb/w;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    goto/16 :goto_2

    :cond_b
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "Not a boolean expression"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public R(Lmb/g4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/g4;->f:Lmb/z0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lmb/g4;->h:Lmb/x;

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/g4;->f:Lmb/z0;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lmb/g4;->h:Lmb/x;

    :goto_1
    iget-object p1, p1, Lmb/g4;->g:Lmb/w0;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->W(Lmb/w0;Lmb/b0;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public S(Lmb/v0;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Compilation of array creation reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    const-string p0, "Compilation of array creation reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public T(Lmb/v1;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/v1;->e:Ljava/lang/String;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p0, Lmb/t6;->m:Lmb/a7;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object p0, p1, Lmb/e5;->c:Lmb/a5;

    :goto_0
    instance-of v0, p0, Lmb/e5;

    if-nez v0, :cond_1

    instance-of v0, p0, Lmb/l1;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v3

    goto :goto_2

    :cond_1
    :goto_1
    instance-of v0, p0, Lmb/u1;

    if-eqz v0, :cond_3

    check-cast p0, Lmb/u1;

    :goto_2
    if-eqz p0, :cond_2

    goto :goto_7

    :cond_2
    const-string p0, "\"continue\" statement is not enclosed by a continuable statement"

    invoke-virtual {v2, v1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p1, Lmb/e5;->c:Lmb/a5;

    :goto_3
    instance-of v4, p0, Lmb/e5;

    if-nez v4, :cond_6

    instance-of v4, p0, Lmb/l1;

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v3

    goto :goto_6

    :cond_6
    :goto_4
    instance-of v4, p0, Lmb/a3;

    if-eqz v4, :cond_b

    move-object v4, p0

    check-cast v4, Lmb/a3;

    iget-object v5, v4, Lmb/a3;->f:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object p0, v4, Lmb/a3;->g:Lmb/e5;

    :goto_5
    instance-of v4, p0, Lmb/a3;

    if-eqz v4, :cond_7

    check-cast p0, Lmb/a3;

    iget-object p0, p0, Lmb/a3;->g:Lmb/e5;

    goto :goto_5

    :cond_7
    instance-of v4, p0, Lmb/u1;

    if-eqz v4, :cond_a

    check-cast p0, Lmb/u1;

    :goto_6
    if-eqz p0, :cond_9

    :goto_7
    iget-object v0, p0, Lmb/u1;->f:Lmb/d;

    if-nez v0, :cond_8

    new-instance v0, Lmb/d;

    iget-object v1, v2, Lmb/a7;->e:Lmb/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lmb/k;-><init>(Lmb/n;)V

    iput-object v0, p0, Lmb/u1;->f:Lmb/d;

    :cond_8
    iget-object p1, p1, Lmb/e5;->c:Lmb/a5;

    iget-object p0, p0, Lmb/e5;->c:Lmb/a5;

    invoke-virtual {v2, p1, p0}, Lmb/a7;->H1(Lmb/a5;Lmb/a5;)V

    invoke-virtual {v2, v0}, Lmb/a7;->d1(Lmb/k;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    const-string p0, "\" is not enclosed by a continuable statement with label \""

    const-string p1, "\""

    const-string v4, "Statement \"continue "

    invoke-static {v4, v0, p0, v0, p1}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_a
    const-string p1, "Labeled statement is not continuable"

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v2, p0, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public U(Lmb/i1;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/i1;->e:Ljava/lang/String;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p0, Lmb/t6;->m:Lmb/a7;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object p0, p1, Lmb/e5;->c:Lmb/a5;

    :goto_0
    instance-of v0, p0, Lmb/e5;

    if-nez v0, :cond_1

    instance-of v0, p0, Lmb/l1;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v3

    goto :goto_2

    :cond_1
    :goto_1
    instance-of v0, p0, Lmb/j1;

    if-eqz v0, :cond_3

    check-cast p0, Lmb/j1;

    :goto_2
    if-eqz p0, :cond_2

    goto :goto_6

    :cond_2
    const-string p0, "\"break\" statement is not enclosed by a breakable statement"

    invoke-virtual {v2, v1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p1, Lmb/e5;->c:Lmb/a5;

    :goto_3
    instance-of v4, p0, Lmb/e5;

    if-nez v4, :cond_6

    instance-of v4, p0, Lmb/l1;

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v3

    goto :goto_5

    :cond_6
    :goto_4
    instance-of v4, p0, Lmb/a3;

    if-eqz v4, :cond_8

    move-object v4, p0

    check-cast v4, Lmb/a3;

    iget-object v5, v4, Lmb/a3;->f:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object p0, v4

    :goto_5
    if-eqz p0, :cond_7

    :goto_6
    iget-object p1, p1, Lmb/e5;->c:Lmb/a5;

    iget-object v0, p0, Lmb/e5;->c:Lmb/a5;

    invoke-virtual {v2, p1, v0}, Lmb/a7;->H1(Lmb/a5;Lmb/a5;)V

    invoke-virtual {v2, p0}, Lmb/a7;->b1(Lmb/j1;)Lmb/k;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmb/a7;->d1(Lmb/k;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    const-string p0, "\" is not enclosed by a breakable statement with label \""

    const-string p1, "\""

    const-string v4, "Statement \"break "

    invoke-static {v4, v0, p0, v0, p1}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-interface {p0}, Lmb/a5;->b()Lmb/a5;

    move-result-object p0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W(Lmb/z0;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p1, p1, Lmb/z0;->d:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    invoke-virtual {v0, p0}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public X(Lmb/a1;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p0, v1, Lmb/a7;->h:Lmb/b;

    new-instance v7, Lmb/d;

    iget-object v0, v1, Lmb/a7;->e:Lmb/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v7, v0}, Lmb/k;-><init>(Lmb/n;)V

    :try_start_0
    iget-object v0, p1, Lmb/a1;->e:Lmb/y4;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v7, v2}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    iget-object v0, p0, Lmb/a0;->b:Lmb/x;

    invoke-virtual {v1, p1, v0}, Lmb/a7;->O1(Lmb/k3;Lmb/b0;)V

    invoke-virtual {v1, p1}, Lmb/a7;->q0(Lmb/k3;)V

    iget-object v0, p1, Lmb/a1;->f:Lmb/y4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lmb/y4;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    filled-new-array {v0}, [Lmb/y4;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lmb/a0;->b:Lmb/x;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lmb/a7;->t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    iget-object p0, v1, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, v1, Lmb/a7;->e:Lmb/n;

    const-string p1, "Ljava/lang/AssertionError;"

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmb/a7;->o(Lmb/k3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lmb/k;->b()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_2
    invoke-virtual {v7}, Lmb/k;->b()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Y(Lmb/n3;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lm2/j;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Lm2/j;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb/b0;

    return-object p0

    :pswitch_3
    new-instance v0, Lm2/j;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_4
    new-instance v0, Lm2/j;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Z(Lmb/r5;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/r5;->e:Ljava/util/List;

    new-instance v1, Lg5/l;

    const/16 v2, 0x9

    const/4 v3, 0x0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-direct {v1, v2, p0, p1, v3}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v2, p1, Lmb/r5;->h:Lmb/e1;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmb/a7;->c0(Lmb/r5;Ljava/util/List;Lg5/l;Lmb/e1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p1, p1, Lmb/r5;->h:Lmb/e1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->q()V

    :try_start_0
    invoke-virtual {p0, p1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    throw p1

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lmb/r3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H(Lmb/v2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a0(Lmb/c2;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lmb/t6;->l:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lmb/p3;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Compilation of member annotation type declaration NYI"

    iget-object p1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lmb/g5;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/t1;->d:Lmb/a5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    move-object v4, v0

    check-cast v4, Lmb/s1;

    iget-object v0, v4, Lmb/l0;->c:Lmb/v5;

    check-cast v0, Lmb/e0;

    iget-object v2, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v2, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    invoke-virtual {p0}, Lmb/x;->x()Lmb/x;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p0, v0}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    if-eqz v6, :cond_2

    iget-object p0, p1, Lmb/g5;->f:Lmb/y4;

    if-eqz p0, :cond_0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lmb/x;->v()Lmb/x;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lmb/u4;

    new-instance v3, Lmb/c5;

    invoke-direct {v3, v1, p0}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    invoke-direct {v0, v1, v3}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    invoke-virtual {v0, p1}, Lmb/y4;->a(Lmb/a5;)V

    move-object v5, v0

    :goto_1
    iget-object v7, p1, Lmb/t1;->c:[Lmb/y4;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lmb/a7;->t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    new-instance p0, Lhb/a;

    const-string p1, "Class has no superclass"

    invoke-direct {p0, v1, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c0(Lmb/d4;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lmb/t6;->l:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    iget-object v1, v1, Lmb/d4;->g:Lmb/t0;

    invoke-virtual {v0, v1}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Lmb/a7;->q:Lmb/q;

    return-object v0

    :pswitch_2
    iget-object v2, v1, Lmb/d4;->g:Lmb/t0;

    iget-object v3, v1, Lmb/d4;->h:[Lmb/y4;

    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0, v2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    invoke-virtual {v4}, Lmb/x;->x()Lmb/x;

    move-result-object v4

    iget-object v5, v4, Lmb/x;->a:[Lmb/f6;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lmb/x;->h()[Lmb/f6;

    move-result-object v5

    iput-object v5, v4, Lmb/x;->a:[Lmb/f6;

    :goto_0
    array-length v4, v5

    if-eqz v4, :cond_9

    invoke-virtual {v0, v1, v5, v3, v2}, Lmb/a7;->C0(Lmb/k3;[Lmb/t;[Lmb/y4;Lmb/a5;)Lmb/t;

    move-result-object v4

    check-cast v4, Lmb/f6;

    iget-object v6, v1, Lmb/m3;->a:Lhb/c;

    iget-object v12, v1, Lmb/d4;->f:Lmb/y4;

    invoke-virtual {v4}, Lmb/t;->e()[Lmb/x;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "final"

    if-eqz v12, :cond_1

    new-instance v9, Lmb/p2;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v10

    new-instance v11, Lmb/c5;

    invoke-virtual {v0, v12}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v13

    invoke-direct {v11, v6, v13}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    const-string v13, "this$base"

    invoke-direct {v9, v6, v10, v11, v13}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v13, 0x0

    move v9, v13

    :goto_1
    array-length v10, v5

    if-ge v9, v10, :cond_2

    new-instance v10, Lmb/p2;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lmb/a7;->d(Lhb/c;[Ljava/lang/String;)[Lmb/x3;

    move-result-object v11

    new-instance v14, Lmb/c5;

    aget-object v15, v5, v9

    invoke-direct {v14, v6, v15}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    const-string v15, "p"

    invoke-static {v9, v15}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v6, v11, v14, v15}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v8, Lmb/q2;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lmb/p2;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmb/p2;

    invoke-direct {v8, v6, v7, v13}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    invoke-virtual {v4}, Lmb/t;->g()[Lmb/x;

    move-result-object v4

    array-length v9, v4

    new-array v9, v9, [Lmb/s5;

    move v10, v13

    :goto_2
    array-length v11, v4

    if-ge v10, v11, :cond_3

    new-instance v11, Lmb/c5;

    aget-object v14, v4, v10

    invoke-direct {v11, v6, v14}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    if-nez v12, :cond_4

    move v11, v13

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    new-instance v10, Lmb/r4;

    aget-object v11, v7, v13

    invoke-direct {v10, v6, v11}, Lmb/r4;-><init>(Lhb/c;Lmb/p2;)V

    const/4 v11, 0x1

    :goto_3
    array-length v15, v5

    new-array v15, v15, [Lmb/y4;

    move v4, v13

    const/16 v16, 0x1

    :goto_4
    array-length v14, v5

    if-ge v4, v14, :cond_5

    new-instance v14, Lmb/r4;

    add-int/lit8 v17, v11, 0x1

    aget-object v11, v7, v11

    invoke-direct {v14, v6, v11}, Lmb/r4;-><init>(Lhb/c;Lmb/p2;)V

    aput-object v14, v15, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v17

    goto :goto_4

    :cond_5
    new-instance v5, Lmb/s1;

    new-array v7, v13, [Lmb/x3;

    new-instance v4, Lmb/g5;

    invoke-direct {v4, v6, v10, v15}, Lmb/g5;-><init>(Lhb/c;Lmb/y4;[Lmb/y4;)V

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lmb/s1;-><init>(Lhb/c;[Lmb/x3;Lmb/q2;[Lmb/s5;Lmb/t1;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Lmb/e0;->x(Lmb/s1;)V

    iget-object v7, v2, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0, v2}, Lmb/a7;->D(Lmb/v5;)V

    invoke-virtual {v0, v2}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/a7;->O1(Lmb/k3;Lmb/b0;)V

    invoke-virtual {v0, v1}, Lmb/a7;->q0(Lmb/k3;)V

    if-nez v12, :cond_6

    move-object v5, v3

    goto :goto_5

    :cond_6
    array-length v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lmb/y4;

    aput-object v12, v2, v13

    array-length v5, v3

    move/from16 v8, v16

    invoke-static {v3, v13, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v2

    :goto_5
    iget-object v2, v1, Lmb/y4;->c:Lmb/a5;

    :goto_6
    instance-of v3, v2, Lmb/u5;

    if-nez v3, :cond_7

    invoke-interface {v2}, Lmb/a5;->b()Lmb/a5;

    move-result-object v2

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_7
    check-cast v2, Lmb/u5;

    invoke-static {v2}, Lmb/a7;->C1(Lmb/u5;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    new-instance v2, Lmb/m5;

    invoke-direct {v2, v6}, Lmb/y4;-><init>(Lhb/c;)V

    iget-object v3, v1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual {v2, v3}, Lmb/y4;->a(Lmb/a5;)V

    move-object v3, v2

    :goto_7
    iget-object v2, v1, Lmb/y4;->c:Lmb/a5;

    invoke-virtual/range {v0 .. v5}, Lmb/a7;->t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    iget-object v1, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v0, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v4}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/n;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v4

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    throw v0

    :cond_9
    new-instance v0, Lhb/b;

    iget-object v1, v1, Lmb/m3;->a:Lhb/c;

    const-string v2, "SNO: Superclass has no constructors"

    invoke-direct {v0, v1, v2}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Lmb/k2;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/e5;->c:Lmb/a5;

    check-cast v0, Lmb/v5;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v0

    iget-object v1, p1, Lmb/k2;->g:[Lmb/z5;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, p1, v5}, Lmb/a7;->P0(Lmb/k2;Lmb/z5;)Lmb/x0;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0, v5}, Lmb/a7;->f(Lmb/k3;)V

    move-object v7, v0

    check-cast v7, Lmb/x6;

    iget-object v7, v7, Lmb/x6;->J:Lmb/m0;

    instance-of v7, v7, Lmb/y2;

    if-nez v7, :cond_1

    invoke-virtual {p1}, Lmb/k2;->x()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v5, v0, v3}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v7, p1, Lmb/k2;->f:Lmb/s5;

    invoke-virtual {p0, v7}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v7

    check-cast v7, Lmb/x;

    iget-object v8, p0, Lmb/a7;->h:Lmb/b;

    iget v9, v5, Lmb/z5;->d:I

    invoke-virtual {v8, v7, v9}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lmb/a7;->A(Lmb/x0;Lmb/b0;)V

    iget-object v5, v5, Lmb/z5;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lmb/x;->j()Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/s;

    invoke-virtual {p0, p1, v5}, Lmb/a7;->V1(Lmb/m3;Lmb/s;)V
    :try_end_0
    .catch Lhb/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_3
    new-instance p1, Lhb/b;

    check-cast v6, Lmb/m3;

    iget-object v0, v6, Lmb/m3;->a:Lhb/c;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object v0, p1, Lmb/k2;->g:[Lmb/z5;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v5, p1, v4}, Lmb/a7;->P0(Lmb/k2;Lmb/z5;)Lmb/x0;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d0(Lmb/m4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->w(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/a7;->x(Lmb/p4;)V

    invoke-virtual {p0, p1}, Lmb/a7;->F(Lmb/e0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Lmb/q3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H(Lmb/v2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e0(Lmb/o3;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p1, Lmb/d0;->a:Lmb/s5;

    const/4 v0, 0x0

    new-array v0, v0, [Lmb/b2;

    invoke-virtual {p0, p1, v0}, Lmb/t6;->o(Lmb/s5;[Lmb/b2;)Lmb/v6;

    move-result-object p0

    return-object p0
.end method

.method public f(Lmb/s3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->I(Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public f0(Lmb/y0;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->k(Lmb/m3;)V

    sget-object p0, Lmb/x;->A:Lmb/w;

    return-object p0

    :pswitch_3
    iget-object v0, p1, Lmb/y0;->f:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    check-cast v0, Lmb/x;

    invoke-virtual {v0}, Lmb/x;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Cannot determine length of non-array type"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g(Lmb/o0;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/t1;->d:Lmb/a5;

    move-object v3, v0

    check-cast v3, Lmb/s1;

    iget-object v0, v3, Lmb/l0;->c:Lmb/v5;

    check-cast v0, Lmb/e0;

    iget-object v1, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v1, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    const/4 p0, 0x0

    invoke-virtual {v1, p1, v5, p0}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {v5}, Lmb/x;->v()Lmb/x;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v5}, Lmb/x;->v()Lmb/x;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {v1, p1, p0, v0}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    :cond_0
    const/4 v4, 0x0

    iget-object v6, p1, Lmb/t1;->c:[Lmb/y4;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lmb/a7;->t1(Lmb/k3;Lmb/a5;Lmb/y4;Lmb/b0;[Lmb/y4;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g0(Lmb/w4;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/e5;->c:Lmb/a5;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    :goto_0
    instance-of v2, v0, Lmb/e5;

    if-nez v2, :cond_4

    instance-of v2, v0, Lmb/l1;

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Lmb/r2;

    iget-object v2, p1, Lmb/w4;->e:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->T0(Lmb/r2;)Lmb/b0;

    move-result-object v3

    sget-object v4, Lmb/x;->v:Lmb/w;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_1

    iget-object v1, p1, Lmb/e5;->c:Lmb/a5;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->H1(Lmb/a5;Lmb/a5;)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object v5, p0, Lmb/k;->d:Lmb/p6;

    goto :goto_1

    :cond_1
    const-string p1, "Method must not return a value"

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v5

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v1

    invoke-virtual {p0, v2}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v3, v2}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    iget-object v1, p1, Lmb/e5;->c:Lmb/a5;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->H1(Lmb/a5;Lmb/a5;)V

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    invoke-static {v3}, Lmb/a7;->i1(Lmb/b0;)I

    move-result p1

    add-int/lit16 p1, p1, 0xac

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object v5, p0, Lmb/k;->d:Lmb/p6;

    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string p1, "Method must return a value"

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_2
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lmb/u2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->s(Lmb/e1;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p0, p1}, Lmb/a7;->G0(Lmb/f1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lmb/x1;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/x1;->h:Lmb/y4;

    iget-object v1, p1, Lmb/u1;->g:Lmb/f1;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lmb/a7;->q:Lmb/q;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1, v4}, Lmb/a7;->d0(Lmb/u1;Lmb/f1;[Lmb/y4;)Z

    move-result p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v2}, Lmb/n;->d()Lmb/d;

    move-result-object v2

    iput-object v4, p1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {p0, v1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p1, Lmb/u1;->f:Lmb/d;

    if-nez v1, :cond_3

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/j1;->e:Lmb/d;

    :cond_2
    :goto_0
    move p0, v3

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lmb/u1;->f:Lmb/d;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/u1;->f:Lmb/d;

    :cond_4
    invoke-virtual {p0, v0, v2, v3}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v4, p1, Lmb/j1;->e:Lmb/d;

    goto :goto_0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i0(Lmb/t0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H(Lmb/v2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Lmb/k1;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/k1;->f:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p1, Lmb/k1;->g:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmb/a7;->q:Lmb/q;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_6

    iget-object p1, p1, Lmb/k1;->f:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    sget-object p1, Lmb/x;->w:Lmb/w;

    if-ne p0, p1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object p1, Lmb/x;->C:Lmb/w;

    if-ne p0, p1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object p1, Lmb/x;->A:Lmb/w;

    if-ne p0, p1, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object p1, Lmb/x;->B:Lmb/w;

    if-ne p0, p1, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object p1, Lmb/x;->z:Lmb/w;

    if-ne p0, p1, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget-object p1, Lmb/x;->y:Lmb/w;

    if-ne p0, p1, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1

    :pswitch_2
    iget-object v0, p1, Lmb/k1;->f:Lmb/s5;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    iget-object v1, p1, Lmb/k1;->g:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v1

    sget-object v2, Lmb/a7;->q:Lmb/q;

    invoke-virtual {p0, p1, v1, v0, v2}, Lmb/a7;->h2(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, p1, v1, v0}, Lmb/a7;->i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, v1, v0}, Lmb/a7;->B1(Lmb/b0;Lmb/b0;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v1}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2, v0}, Lmb/a7;->F1(Lmb/b0;Lmb/b0;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, p1, v1, v2}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Lmb/a7;->D1(Lmb/b0;)Lmb/w;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2, v0}, Lmb/a7;->E1(Lmb/x;Lmb/b0;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, v1, v2}, Lmb/a7;->m2(Lmb/k3;Lmb/b0;Lmb/x;)V

    invoke-virtual {p0, p1, v2, v0}, Lmb/a7;->j2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot cast \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" to \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_9
    move-object v1, v0

    check-cast v1, Lmb/x;

    invoke-virtual {p0, p1}, Lmb/a7;->f(Lmb/k3;)V

    const/16 p1, 0xc0

    invoke-virtual {p0, p1}, Lmb/a7;->q2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lmb/a7;->v2(I)V

    iget-object p1, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p1}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-object v0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j0(Lmb/f5;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p0, p0, Lmb/a0;->r:Lmb/x;

    return-object p0

    :pswitch_1
    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-static {p1, p0}, Lmb/a7;->n2(Lhb/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k(Lmb/n4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/b4;->l:Ljava/lang/String;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->w(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/a7;->x(Lmb/p4;)V

    invoke-virtual {p0, p1}, Lmb/a7;->F(Lmb/e0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k0(Lmb/e4;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->h:Lmb/b;

    iget-object v1, p1, Lmb/e4;->f:Lmb/s5;

    invoke-virtual {p0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    iget-object v1, p1, Lmb/e4;->g:[Lmb/y4;

    array-length v1, v1

    iget p1, p1, Lmb/e4;->h:I

    add-int/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/e4;->g:[Lmb/y4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lmb/t6;->m:Lmb/a7;

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v4

    sget-object v5, Lmb/x;->A:Lmb/w;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, p1, v4}, Lmb/a7;->k2(Lmb/k3;Lmb/b0;)Lmb/w;

    move-result-object v4

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Invalid array size expression type"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v3, p1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p0, v0

    iget v0, p1, Lmb/e4;->h:I

    iget-object v1, p1, Lmb/e4;->f:Lmb/s5;

    invoke-virtual {v3, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    invoke-virtual {v3, p1, p0, v0, v1}, Lmb/a7;->P1(Lmb/m3;IILmb/b0;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public l(Lmb/i4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmb/x;->u:Lmb/w;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public l0(Lmb/b1;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/b1;->f:Lmb/n3;

    invoke-virtual {p0, p1}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/b1;->g:Ljava/lang/String;

    iget-object v1, p1, Lmb/b1;->h:Lmb/y4;

    iget-object v2, p1, Lmb/b1;->f:Lmb/n3;

    const-string v3, "="

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lmb/a7;->N(Lmb/y4;)I

    move-result v0

    invoke-virtual {p0, v2}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object v3

    invoke-virtual {p0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v4

    invoke-virtual {p0, v1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v3, v1}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lmb/a7;->t0(Lmb/y4;I)V

    invoke-virtual {p0, v2}, Lmb/a7;->X(Lmb/n3;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lmb/a7;->N(Lmb/y4;)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lmb/a7;->r0(Lmb/k3;I)V

    invoke-virtual {p0, v2}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Lmb/y4;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1, v4}, Lmb/a7;->K(Lmb/y4;Lmb/b0;Ljava/util/Iterator;Ljava/lang/String;)Lmb/b0;

    move-result-object v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v3}, Lmb/a7;->i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Lmb/a7;->s0(Lmb/y4;)V

    invoke-virtual {p0, v2}, Lmb/a7;->X(Lmb/n3;)V

    :goto_1
    return-object v3

    :cond_2
    new-instance p0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    const-string v1, "SNO: \""

    const-string v2, "\" reconversion failed"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p1, Lmb/b1;->g:Ljava/lang/String;

    iget-object v1, p1, Lmb/b1;->h:Lmb/y4;

    iget-object v2, p1, Lmb/b1;->f:Lmb/n3;

    const-string v3, "="

    const/4 v4, 0x0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v2}, Lmb/a7;->N(Lmb/y4;)I

    invoke-virtual {p0, v1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, v2}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object v3

    invoke-virtual {p0, v1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v3, v1}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lmb/a7;->X(Lmb/n3;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Lmb/a7;->N(Lmb/y4;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmb/a7;->r0(Lmb/k3;I)V

    invoke-virtual {p0, v2}, Lmb/a7;->T(Lmb/y4;)Lmb/b0;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1}, [Lmb/y4;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1, v5}, Lmb/a7;->K(Lmb/y4;Lmb/b0;Ljava/util/Iterator;Ljava/lang/String;)Lmb/b0;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v1, v3}, Lmb/a7;->i2(Lmb/k3;Lmb/b0;Lmb/b0;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v1}, Lmb/a7;->w1(Lmb/b0;)Lmb/x;

    move-result-object v5

    if-ne v5, v3, :cond_5

    invoke-virtual {p0, p1, v1, v3}, Lmb/a7;->q(Lmb/k3;Lmb/b0;Lmb/b0;)V

    goto :goto_2

    :cond_5
    const-string v1, "Operand types unsuitable for \""

    const-string v2, "\""

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lmb/a7;->X(Lmb/n3;)V

    :goto_3
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public m(Lmb/h5;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->p0(Lmb/h5;)Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->p0(Lmb/h5;)Lmb/y4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->p0(Lmb/h5;)Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->p0(Lmb/h5;)Lmb/y4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->f2(Lmb/c1;)Lmb/n3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->X(Lmb/n3;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public m0(Lmb/c5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p1, Lmb/c5;->d:Lmb/b0;

    return-object p0
.end method

.method public n(Lmb/r4;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p1, p1, Lmb/r4;->f:Lmb/p2;

    const/4 v0, 0x0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object p0

    iget-object p0, p0, Lmb/g3;->b:Lmb/b0;

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p1, Lmb/r4;->f:Lmb/p2;

    const/4 v1, 0x0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0, v1}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->I1(Lmb/k3;Lmb/g3;)Lmb/b0;

    iget-object p0, v0, Lmb/g3;->b:Lmb/b0;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public n0(Lmb/u0;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/u0;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    invoke-virtual {p0}, Lmb/x;->e()Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->X0(Lmb/n3;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->l(Lmb/x0;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public o(Lmb/s5;[Lmb/b2;)Lmb/v6;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    iget-object v4, v3, Lmb/b2;->a:Ljava/lang/String;

    iget-object v3, v3, Lmb/b2;->b:Lmb/z1;

    invoke-virtual {p0, v3}, Lmb/t6;->w(Lmb/z1;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lmb/v6;

    invoke-direct {p2, p0, v0, p1}, Lmb/v6;-><init>(Lmb/t6;Ljava/util/HashMap;Lmb/s5;)V

    return-object p2
.end method

.method public p(Lmb/v4;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lmb/v4;->e:[Ljava/lang/String;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/s5;->c:Lmb/a5;

    array-length v3, v0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1, v2, v0, v3}, Lmb/a7;->S0(Lhb/c;Lmb/a5;[Ljava/lang/String;I)Lmb/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reference type \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p0(Lmb/g1;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lmb/x;->D:Lmb/w;

    return-object p0

    :pswitch_1
    iget-object p0, p1, Lmb/d3;->f:Ljava/lang/String;

    const-string v0, "true"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "false"

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {v0, p1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public q(Lmb/w3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Compilation of method reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    const-string p0, "Compilation of method reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public q0(Lmb/s4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->f2(Lmb/c1;)Lmb/n3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->X(Lmb/n3;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lmb/a3;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/a3;->g:Lmb/e5;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v0

    iget-object v1, p1, Lmb/j1;->e:Lmb/d;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object v0, v1, Lmb/k;->d:Lmb/p6;

    iput-object v0, p0, Lmb/k;->d:Lmb/p6;

    :cond_1
    invoke-virtual {v1}, Lmb/k;->a()V

    const/4 p0, 0x0

    iput-object p0, p1, Lmb/j1;->e:Lmb/d;

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r0(Lmb/o4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/y2;->i:Ljava/lang/String;

    iget-object v1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v1, v0}, Lmb/a7;->w(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/a7;->x(Lmb/p4;)V

    invoke-virtual {p0, p1}, Lmb/a7;->I(Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public s(Lmb/o2;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v0}, Lmb/n;->q()V

    :try_start_0
    iget-object v0, p1, Lmb/o2;->h:Lmb/f1;

    iget-object v1, p1, Lmb/u1;->g:Lmb/f1;

    iget-object v2, p1, Lmb/o2;->j:[Lmb/y4;

    iget-object v3, p1, Lmb/o2;->i:Lmb/y4;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmb/a7;->E(Lmb/f1;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v1, v2}, Lmb/a7;->d0(Lmb/u1;Lmb/f1;[Lmb/y4;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    goto/16 :goto_4

    :cond_1
    :try_start_1
    invoke-virtual {p0, v3}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lmb/a7;->q:Lmb/q;

    if-eq v0, v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1, v2}, Lmb/a7;->d0(Lmb/u1;Lmb/f1;[Lmb/y4;)Z

    move-result p1

    goto :goto_1

    :cond_2
    new-instance v0, Lmb/d;

    iget-object v4, p0, Lmb/a7;->e:Lmb/n;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v4}, Lmb/k;-><init>(Lmb/n;)V

    iget-object v4, p0, Lmb/a7;->e:Lmb/n;

    iget-object v4, v4, Lmb/n;->g:Lmb/h;

    iget-object v4, v4, Lmb/k;->d:Lmb/p6;

    invoke-virtual {p0, v0}, Lmb/a7;->d1(Lmb/k;)V

    const/4 v5, 0x0

    iput-object v5, p1, Lmb/u1;->f:Lmb/d;

    iget-object v6, p0, Lmb/a7;->e:Lmb/n;

    iget-object v7, v6, Lmb/n;->g:Lmb/h;

    iput-object v4, v7, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v6}, Lmb/n;->d()Lmb/d;

    move-result-object v4

    invoke-virtual {p0, v1}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v1

    iget-object v6, p1, Lmb/u1;->f:Lmb/d;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lmb/k;->a()V

    :cond_3
    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    iget-object v1, p1, Lmb/u1;->f:Lmb/d;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    array-length v1, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_5

    aget-object v7, v2, v6

    invoke-virtual {p0, v7}, Lmb/a7;->C(Lmb/y4;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v5, p1, Lmb/u1;->f:Lmb/d;

    invoke-virtual {v0}, Lmb/k;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v4, v0}, Lmb/a7;->L(Lmb/y4;Lmb/k;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    iget-object p0, p1, Lmb/j1;->e:Lmb/d;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lmb/k;->a()V

    iput-object v5, p1, Lmb/j1;->e:Lmb/d;

    :cond_6
    move p1, v0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_5
    iget-object p0, p0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {p0}, Lmb/n;->p()V

    throw p1

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s0(Lmb/e2;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Compilation of enum constant NYI"

    iget-object p1, p1, Lmb/m0;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public t(Lmb/b5;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Lmb/b5;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p0, p0, Lmb/a0;->r:Lmb/x;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lmb/x;->u:Lmb/w;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid SimpleLiteral value type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p1, Lmb/b5;->f:Ljava/lang/String;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object v0, p1, Lmb/b5;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->f0(Lmb/k3;Ljava/lang/Object;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public t0(Lmb/j2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->o0(Lmb/j2;)Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/a7;->o0(Lmb/j2;)Lmb/y4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->o0(Lmb/j2;)Lmb/y4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->f2(Lmb/c1;)Lmb/n3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/a7;->X(Lmb/n3;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lmb/k5;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lmb/t6;->l:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    iget-object v2, v0, Lmb/a7;->e:Lmb/n;

    iget-object v2, v2, Lmb/n;->g:Lmb/h;

    iget-object v2, v2, Lmb/k;->d:Lmb/p6;

    iget-object v3, v1, Lmb/k5;->f:Lmb/y4;

    iget-object v4, v1, Lmb/k5;->g:Ljava/util/List;

    invoke-virtual {v0, v3}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object v5

    iget-object v6, v0, Lmb/a7;->h:Lmb/b;

    iget-object v7, v6, Lmb/a0;->r:Lmb/x;

    sget-object v8, Lmb/z6;->n:Lmb/z6;

    if-ne v7, v5, :cond_0

    move-object v7, v8

    goto :goto_0

    :cond_0
    iget-object v7, v6, Lmb/a0;->h:Lmb/x;

    move-object v9, v5

    check-cast v9, Lmb/x;

    invoke-virtual {v7, v9}, Lmb/x;->D(Lmb/x;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lmb/z6;->m:Lmb/z6;

    goto :goto_0

    :cond_1
    sget-object v7, Lmb/z6;->l:Lmb/z6;

    :goto_0
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lmb/k;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    const/16 p0, 0x0

    const-string v11, "\""

    const/16 v16, 0x0

    if-ge v13, v15, :cond_16

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmb/j5;

    new-instance v12, Lmb/d;

    move-object/from16 v18, v10

    iget-object v10, v0, Lmb/a7;->e:Lmb/n;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v12, v10}, Lmb/k;-><init>(Lmb/n;)V

    aput-object v12, v18, v13

    iget-object v10, v15, Lmb/j5;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmb/y4;

    move-object/from16 v19, v10

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move/from16 v20, v13

    const-string v13, "Duplicate \"case\" switch label value"

    if-eqz v10, :cond_d

    move-object/from16 v21, v14

    const/4 v14, 0x1

    if-eq v10, v14, :cond_5

    const/4 v14, 0x2

    if-ne v10, v14, :cond_4

    invoke-virtual {v0, v12}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v10

    instance-of v13, v10, Ljava/lang/String;

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Lmb/d;

    iget-object v13, v0, Lmb/a7;->e:Lmb/n;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v12, v13}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v9, v10, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v22, v2

    goto/16 :goto_6

    :cond_3
    const-string v1, "Value of \'case\' label is not a string constant"

    iget-object v2, v12, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    instance-of v10, v12, Lmb/p0;

    if-eqz v10, :cond_c

    iget-object v10, v12, Lmb/m3;->a:Lhb/c;

    check-cast v12, Lmb/p0;

    iget-object v12, v12, Lmb/p0;->f:[Ljava/lang/String;

    array-length v14, v12

    move-object/from16 v22, v12

    const/4 v12, 0x1

    if-ne v14, v12, :cond_b

    aget-object v12, v22, p0

    move-object v14, v5

    check-cast v14, Lmb/x;

    invoke-virtual {v14}, Lmb/x;->j()Ljava/util/Map;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    move-object/from16 v22, v2

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lmb/s;

    invoke-interface {v14, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmb/s;

    array-length v14, v2

    move/from16 v24, p0

    move-object/from16 v23, v2

    move/from16 v2, v24

    :goto_3
    if-ge v2, v14, :cond_a

    aget-object v25, v23, v2

    move/from16 v26, v2

    invoke-interface/range {v25 .. v25}, Lmb/u;->b()I

    move-result v2

    move/from16 v27, v14

    const/4 v14, 0x4

    if-ne v2, v14, :cond_9

    invoke-virtual/range {v25 .. v25}, Lmb/s;->f()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {v25 .. v25}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    aget-object v10, v18, v20

    invoke-virtual {v9, v2, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v10, v13}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_8
    add-int/lit8 v24, v24, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v2, v26, 0x1

    move/from16 v14, v27

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum constant \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_b
    const-string v1, "Case label must be a plain enum constant"

    invoke-virtual {v0, v10, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_c
    const-string v1, "Case label must be an enum constant"

    iget-object v2, v12, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_d
    move-object/from16 v22, v2

    move-object/from16 v21, v14

    invoke-virtual {v0, v12}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v2

    iget-object v10, v12, Lmb/m3;->a:Lhb/c;

    sget-object v12, Lmb/a7;->q:Lmb/q;

    if-eq v2, v12, :cond_12

    instance-of v12, v2, Ljava/lang/Integer;

    if-eqz v12, :cond_e

    check-cast v2, Ljava/lang/Integer;

    goto :goto_5

    :cond_e
    instance-of v12, v2, Ljava/lang/Number;

    if-eqz v12, :cond_f

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_f
    instance-of v12, v2, Ljava/lang/Character;

    if-eqz v12, :cond_11

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    invoke-virtual {v9, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    aget-object v10, v18, v20

    invoke-virtual {v9, v2, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v10, v19

    move/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v2, v22

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v0, v10, v13}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_11
    const-string v1, "Value of case label must be a char, byte, short or int constant"

    invoke-virtual {v0, v10, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_12
    const-string v1, "Value of \'case\' label does not pose a constant value"

    invoke-virtual {v0, v10, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_13
    move-object/from16 v22, v2

    move/from16 v20, v13

    move-object/from16 v21, v14

    iget-boolean v2, v15, Lmb/j5;->d:Z

    if-eqz v2, :cond_15

    if-nez v21, :cond_14

    aget-object v14, v18, v20

    goto :goto_7

    :cond_14
    const-string v1, "Duplicate \"default\" switch label"

    iget-object v2, v15, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v16

    :cond_15
    move-object/from16 v14, v21

    :goto_7
    add-int/lit8 v13, v20, 0x1

    move-object/from16 v10, v18

    move-object/from16 v2, v22

    goto/16 :goto_1

    :cond_16
    move-object/from16 v22, v2

    move-object/from16 v18, v10

    move-object/from16 v21, v14

    if-nez v21, :cond_17

    invoke-virtual {v0, v1}, Lmb/a7;->b1(Lmb/j1;)Lmb/k;

    move-result-object v14

    goto :goto_8

    :cond_17
    move-object/from16 v14, v21

    :goto_8
    invoke-virtual {v0, v3}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v12, 0x1

    if-eq v2, v12, :cond_19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    invoke-virtual {v0, v1}, Lmb/a7;->q0(Lmb/k3;)V

    iget-object v2, v0, Lmb/a7;->e:Lmb/n;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3, v3, v12}, Lmb/n;->b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;

    move-result-object v2

    iget-short v2, v2, Lmb/j3;->a:S

    iget-object v3, v6, Lmb/a0;->r:Lmb/x;

    invoke-virtual {v0, v1, v3, v2}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    iget-object v3, v6, Lmb/a0;->B:Lmb/v;

    invoke-virtual {v0, v1, v3}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_19
    iget-object v2, v6, Lmb/a0;->x:Lmb/v;

    invoke-virtual {v0, v1, v2}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    goto :goto_9

    :cond_1a
    sget-object v2, Lmb/x;->A:Lmb/w;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v5, v2, v3}, Lmb/a7;->n(Lmb/k3;Lmb/b0;Lmb/b0;Ljava/lang/Object;)V

    :goto_9
    const/4 v2, -0x1

    :goto_a
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lmb/x;->A:Lmb/w;

    invoke-virtual {v0, v1, v3}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    goto/16 :goto_e

    :cond_1b
    invoke-virtual {v9}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v10

    sub-int/2addr v3, v10

    if-lt v5, v3, :cond_1d

    iget-object v3, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->f()Lmb/k;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object v12, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v12}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v12, v0, Lmb/a7;->e:Lmb/n;

    iget-object v12, v12, Lmb/n;->g:Lmb/h;

    iget-object v12, v12, Lmb/k;->d:Lmb/p6;

    const/16 v13, 0xaa

    invoke-virtual {v0, v13}, Lmb/a7;->q2(I)V

    new-instance v13, Lmb/q4;

    iget-object v15, v0, Lmb/a7;->e:Lmb/n;

    invoke-direct {v13, v15}, Lmb/q4;-><init>(Lmb/n;)V

    invoke-virtual {v13}, Lmb/k;->a()V

    iput-object v12, v14, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0, v3, v14}, Lmb/a7;->u2(Lmb/k;Lmb/k;)V

    invoke-virtual {v0, v5}, Lmb/a7;->s2(I)V

    invoke-virtual {v0, v10}, Lmb/a7;->s2(I)V

    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmb/k;

    iput-object v12, v13, Lmb/k;->d:Lmb/p6;

    :goto_c
    if-ge v5, v15, :cond_1c

    invoke-virtual {v0, v3, v14}, Lmb/a7;->u2(Lmb/k;Lmb/k;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v0, v3, v13}, Lmb/a7;->u2(Lmb/k;Lmb/k;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1d
    iget-object v3, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v3}, Lmb/n;->f()Lmb/k;

    move-result-object v3

    invoke-virtual {v0, v1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object v5, v0, Lmb/a7;->e:Lmb/n;

    invoke-virtual {v5}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    iget-object v5, v0, Lmb/a7;->e:Lmb/n;

    iget-object v5, v5, Lmb/n;->g:Lmb/h;

    iget-object v5, v5, Lmb/k;->d:Lmb/p6;

    const/16 v10, 0xab

    invoke-virtual {v0, v10}, Lmb/a7;->q2(I)V

    new-instance v10, Lmb/q4;

    iget-object v12, v0, Lmb/a7;->e:Lmb/n;

    invoke-direct {v10, v12}, Lmb/q4;-><init>(Lmb/n;)V

    invoke-virtual {v10}, Lmb/k;->a()V

    iput-object v5, v14, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v0, v3, v14}, Lmb/a7;->u2(Lmb/k;Lmb/k;)V

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Lmb/a7;->s2(I)V

    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmb/k;

    iput-object v5, v12, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lmb/a7;->s2(I)V

    invoke-virtual {v0, v3, v12}, Lmb/a7;->u2(Lmb/k;Lmb/k;)V

    goto :goto_d

    :cond_1e
    :goto_e
    if-ne v7, v8, :cond_23

    iget-object v3, v0, Lmb/a7;->e:Lmb/n;

    iget-object v3, v3, Lmb/n;->g:Lmb/h;

    iget-object v3, v3, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmb/k;

    invoke-virtual {v7}, Lmb/k;->a()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move/from16 v9, p0

    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_22

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmb/j5;

    iget-object v12, v0, Lmb/a7;->e:Lmb/n;

    iget-object v12, v12, Lmb/n;->g:Lmb/h;

    iput-object v3, v12, Lmb/k;->d:Lmb/p6;

    iget-object v12, v10, Lmb/j5;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmb/y4;

    invoke-virtual {v0, v13}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v17, v3

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v19, v5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_1f

    :goto_12
    move-object/from16 v3, v17

    move-object/from16 v5, v19

    goto :goto_11

    :cond_1f
    iget-object v3, v6, Lmb/a0;->r:Lmb/x;

    invoke-virtual {v0, v10, v3, v2}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    invoke-virtual {v0, v13, v15}, Lmb/a7;->l0(Lmb/k3;Ljava/lang/String;)V

    iget-object v3, v6, Lmb/a0;->A:Lmb/v;

    invoke-virtual {v0, v13, v3}, Lmb/a7;->u1(Lmb/k3;Lmb/v;)V

    aget-object v3, v18, v9

    const/4 v5, 0x1

    invoke-virtual {v0, v10, v5, v3}, Lmb/a7;->f1(Lmb/k3;ILmb/k;)V

    goto :goto_12

    :cond_20
    const-string v1, "Duplicate case label \""

    invoke-static {v1, v15, v11}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v13, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, v2, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16

    :cond_21
    move-object/from16 v17, v3

    move-object/from16 v19, v5

    const/4 v5, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v19

    goto :goto_10

    :cond_22
    move-object/from16 v17, v3

    move-object/from16 v19, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v14}, Lmb/a7;->d1(Lmb/k;)V

    move-object/from16 v5, v19

    goto/16 :goto_f

    :cond_23
    const/4 v5, 0x1

    move/from16 v11, p0

    move v14, v5

    :goto_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_26

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/j5;

    aget-object v3, v18, v11

    invoke-virtual {v3}, Lmb/k;->a()V

    iget-object v3, v0, Lmb/a7;->e:Lmb/n;

    iget-object v3, v3, Lmb/n;->g:Lmb/h;

    move-object/from16 v6, v22

    iput-object v6, v3, Lmb/k;->d:Lmb/p6;

    iget-object v2, v2, Lmb/j5;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v5

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/f1;

    if-eqz v14, :cond_24

    invoke-virtual {v0, v3}, Lmb/a7;->E(Lmb/f1;)Z

    move-result v14

    goto :goto_14

    :cond_24
    check-cast v3, Lmb/m3;

    iget-object v1, v3, Lmb/m3;->a:Lhb/c;

    const-string v2, "Statement is unreachable"

    invoke-virtual {v0, v1, v2}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16

    :cond_25
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v22, v6

    goto :goto_13

    :cond_26
    iget-object v2, v1, Lmb/j1;->e:Lmb/d;

    if-nez v2, :cond_27

    move v12, v14

    goto :goto_15

    :cond_27
    if-nez v14, :cond_28

    iget-object v0, v0, Lmb/a7;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iget-object v3, v2, Lmb/k;->d:Lmb/p6;

    iput-object v3, v0, Lmb/k;->d:Lmb/p6;

    :cond_28
    invoke-virtual {v2}, Lmb/k;->a()V

    const/4 v3, 0x0

    iput-object v3, v1, Lmb/j1;->e:Lmb/d;

    move v12, v5

    :goto_15
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lmb/h2;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lmb/h2;->e:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    :try_start_0
    invoke-virtual {p0, p1}, Lmb/a7;->C(Lmb/y4;)V
    :try_end_0
    .catch Lhb/b; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lhb/b;

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v0(Lmb/n5;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/n5;->e:Lmb/y4;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    iget-object v1, p1, Lmb/e5;->c:Lmb/a5;

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->y(Lmb/k3;Lmb/b0;Lmb/a5;)V

    invoke-virtual {p0, p1}, Lmb/a7;->o(Lmb/k3;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    const-string v0, "Explicit constructor invocation not allowed here"

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public visitPackage(Lmb/j4;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown variable or type \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/j4;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lm2/j;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->Y0(Lmb/y4;)Lmb/b0;

    move-result-object p0

    return-object p0

    :sswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public visitType(Lmb/s5;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lmb/q;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lmb/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public w(Lmb/z1;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lm2/j;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Lhb/a;

    if-eqz p1, :cond_0

    check-cast p0, Lhb/a;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public w0(Lmb/p1;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p0, p0, Lmb/a0;->f:Lmb/x;

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lmb/t6;->m:Lmb/a7;

    iget-object p0, v0, Lmb/a7;->h:Lmb/b;

    iget-object v1, p1, Lmb/p1;->f:Lmb/s5;

    invoke-virtual {v0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    check-cast v1, Lmb/x;

    invoke-virtual {v1}, Lmb/x;->H()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lmb/x;->v:Lmb/w;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmb/a0;->v:Lmb/x;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lmb/x;->w:Lmb/w;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmb/a0;->d:Lmb/x;

    goto :goto_0

    :cond_1
    sget-object v2, Lmb/x;->x:Lmb/w;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmb/a0;->e:Lmb/x;

    goto :goto_0

    :cond_2
    sget-object v2, Lmb/x;->y:Lmb/w;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmb/a0;->g:Lmb/x;

    goto :goto_0

    :cond_3
    sget-object v2, Lmb/x;->z:Lmb/w;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lmb/a0;->j:Lmb/x;

    goto :goto_0

    :cond_4
    sget-object v2, Lmb/x;->A:Lmb/w;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lmb/a0;->k:Lmb/x;

    goto :goto_0

    :cond_5
    sget-object v2, Lmb/x;->B:Lmb/w;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lmb/a0;->m:Lmb/x;

    goto :goto_0

    :cond_6
    sget-object v2, Lmb/x;->C:Lmb/w;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lmb/a0;->q:Lmb/x;

    goto :goto_0

    :cond_7
    sget-object v2, Lmb/x;->D:Lmb/w;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lmb/a0;->c:Lmb/x;

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lmb/a0;->f:Lmb/x;

    const/4 v5, 0x1

    const-string v3, "TYPE"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmb/a7;->c1(Lmb/k3;Lmb/x;Ljava/lang/String;Lmb/x;Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0, p1}, Lmb/a7;->f(Lmb/k3;)V

    iget-object p1, v0, Lmb/a7;->e:Lmb/n;

    iget-object p1, p1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {v0, p1}, Lmb/a7;->t2(S)V

    iget-object p1, v0, Lmb/a7;->e:Lmb/n;

    const-string v0, "Ljava/lang/Class;"

    invoke-virtual {p1, v0}, Lmb/n;->l(Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lmb/a0;->f:Lmb/x;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public x(Lmb/o1;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "Compilation of class instance creation reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    const-string p0, "Compilation of class instance creation reference NYI"

    invoke-static {p1, p0}, Lmb/a7;->S(Lmb/k3;Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lmb/d0;->a:Lmb/s5;

    iget-object p1, p1, Lmb/h4;->b:[Lmb/b2;

    invoke-virtual {p0, v0, p1}, Lmb/t6;->o(Lmb/s5;[Lmb/b2;)Lmb/v6;

    move-result-object p0

    return-object p0
.end method

.method public y(Lmb/m5;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->K0(Lmb/m5;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->K0(Lmb/m5;)Lmb/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmb/a7;->J1(Lmb/k3;Lmb/b0;I)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/a7;->U1(Lmb/k3;Lmb/b0;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public y0(Lmb/f3;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/f3;->e:Lmb/e3;

    iget-object v1, v0, Lmb/b4;->l:Ljava/lang/String;

    invoke-static {p1, v1}, Lmb/a7;->z0(Lmb/a5;Ljava/lang/String;)Lmb/e3;

    move-result-object p1

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redeclaration of local class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"; previously declared in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lmb/a7;->D(Lmb/v5;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(Lmb/h3;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmb/t6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p1, Lmb/h3;->f:Lmb/g3;

    iget-object p0, p0, Lmb/g3;->b:Lmb/b0;

    return-object p0

    :pswitch_0
    iget-object v0, p1, Lmb/h3;->f:Lmb/g3;

    iget-object v1, v0, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v0}, Lmb/g3;->a()S

    move-result v0

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    invoke-virtual {p0, p1, v1, v0}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public z0(Lmb/y3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmb/t6;->m:Lmb/a7;

    const/4 p1, 0x0

    const-string v0, "Compilation of modular compilation unit not implemented"

    invoke-virtual {p0, p1, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw p1
.end method
