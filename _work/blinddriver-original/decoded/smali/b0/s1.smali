.class public final Lb0/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/s1;->l:I

    iput-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/s1;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx9/h;Li9/e;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lb0/s1;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lb0/s1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lb0/s1;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lx9/s;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/s;

    iget v1, v0, Lx9/s;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/s;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/s;

    invoke-direct {v0, p0, p2}, Lx9/s;-><init>(Lb0/s1;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/s;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/s;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lx9/s;->p:Lx9/h;

    iget-object p1, v0, Lx9/s;->o:Ljava/lang/Object;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, Lx9/h;

    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, La9/i;

    iput-object p1, v0, Lx9/s;->o:Ljava/lang/Object;

    iput-object p2, v0, Lx9/s;->p:Lx9/h;

    iput v4, v0, Lx9/s;->m:I

    invoke-interface {p0, p1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object p0, p2

    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Lx9/s;->o:Ljava/lang/Object;

    iput-object p2, v0, Lx9/s;->p:Lx9/h;

    iput v3, v0, Lx9/s;->m:I

    invoke-interface {p0, p1, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v1

    :pswitch_0
    instance-of v0, p2, Lx9/q;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lx9/q;

    iget v1, v0, Lx9/q;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_6

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/q;->n:I

    goto :goto_4

    :cond_6
    new-instance v0, Lx9/q;

    invoke-direct {v0, p0, p2}, Lx9/q;-><init>(Lb0/s1;Ly8/c;)V

    :goto_4
    iget-object p2, v0, Lx9/q;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/q;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    if-ne v2, v3, :cond_7

    iget-object p1, v0, Lx9/q;->p:Ljava/lang/Object;

    iget-object p0, v0, Lx9/q;->l:Lb0/s1;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, Li9/e;

    iput-object p0, v0, Lx9/q;->l:Lb0/s1;

    iput-object p1, v0, Lx9/q;->p:Ljava/lang/Object;

    iput v3, v0, Lx9/q;->n:I

    invoke-interface {p2, p1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object v1

    :cond_a
    iget-object p2, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p2, Lj9/y;

    iput-object p1, p2, Lj9/y;->m:Ljava/lang/Object;

    new-instance p1, Ly9/a;

    invoke-direct {p1, p0}, Ly9/a;-><init>(Lx9/h;)V

    throw p1

    :pswitch_1
    check-cast p1, Ls/h;

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    instance-of v0, p1, Ls/d;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    instance-of v0, p1, Ls/e;

    if-eqz v0, :cond_c

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Ls/h;

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, La6/k;

    instance-of v0, p1, Ls/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget p1, p2, La6/k;->m:I

    add-int/2addr p1, v1

    iput p1, p2, La6/k;->m:I

    goto :goto_8

    :cond_d
    instance-of v0, p1, Ls/l;

    if-eqz v0, :cond_e

    iget p1, p2, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La6/k;->m:I

    goto :goto_8

    :cond_e
    instance-of p1, p1, Ls/j;

    if-eqz p1, :cond_f

    iget p1, p2, La6/k;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La6/k;->m:I

    :cond_f
    :goto_8
    iget p1, p2, La6/k;->m:I

    if-lez p1, :cond_10

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, Lo0/g5;

    iget-boolean p1, p0, Lo0/g5;->C:Z

    if-eq p1, v1, :cond_11

    iput-boolean v1, p0, Lo0/g5;->C:Z

    invoke-static {p0}, Le2/l;->l(Le2/x;)V

    :cond_11
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Ls/h;

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, Ln0/a;

    instance-of v0, p1, Ls/m;

    if-eqz v0, :cond_13

    iget-boolean p0, p2, Ln0/a;->H:Z

    if-eqz p0, :cond_12

    check-cast p1, Ls/m;

    invoke-virtual {p2, p1}, Ln0/a;->M0(Ls/m;)V

    goto/16 :goto_f

    :cond_12
    iget-object p0, p2, Ln0/a;->I:Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_13
    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, Lu9/t;

    iget-object v0, p2, Ln0/a;->E:Lf8/p2;

    if-nez v0, :cond_14

    new-instance v0, Lf8/p2;

    iget-boolean v1, p2, Ln0/a;->A:Z

    iget-object v2, p2, Ln0/a;->D:Lo0/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lf8/p2;->a:Z

    iput-object v2, v0, Lf8/p2;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ln/d;->a(F)Ln/c;

    move-result-object v1

    iput-object v1, v0, Lf8/p2;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/p2;->d:Ljava/lang/Object;

    invoke-static {p2}, Le2/l;->k(Le2/n;)V

    iput-object v0, p2, Ln0/a;->E:Lf8/p2;

    :cond_14
    iget-object p2, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    instance-of v1, p1, Ls/f;

    if-eqz v1, :cond_15

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    instance-of v1, p1, Ls/g;

    if-eqz v1, :cond_16

    check-cast p1, Ls/g;

    iget-object p1, p1, Ls/g;->a:Ls/f;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    instance-of v1, p1, Ls/d;

    if-eqz v1, :cond_17

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    instance-of v1, p1, Ls/e;

    if-eqz v1, :cond_18

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    instance-of v1, p1, Ls/b;

    if-eqz v1, :cond_19

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    instance-of v1, p1, Ls/c;

    if-eqz v1, :cond_1a

    check-cast p1, Ls/c;

    iget-object p1, p1, Ls/c;->a:Ls/b;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1a
    instance-of v1, p1, Ls/a;

    if-eqz v1, :cond_25

    check-cast p1, Ls/a;

    iget-object p1, p1, Ls/a;->a:Ls/b;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    invoke-static {p2}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/h;

    iget-object p2, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p2, Ls/h;

    invoke-static {p2, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    const/4 p2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_21

    iget-object v3, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v3, Lo0/d1;

    invoke-virtual {v3}, Lo0/d1;->invoke()Ljava/lang/Object;

    instance-of v3, p1, Ls/f;

    if-eqz v3, :cond_1b

    const v4, 0x3da3d70a    # 0.08f

    goto :goto_b

    :cond_1b
    instance-of v4, p1, Ls/d;

    if-eqz v4, :cond_1c

    const v4, 0x3dcccccd    # 0.1f

    goto :goto_b

    :cond_1c
    instance-of v4, p1, Ls/b;

    if-eqz v4, :cond_1d

    const v4, 0x3e23d70a    # 0.16f

    goto :goto_b

    :cond_1d
    const/4 v4, 0x0

    :goto_b
    sget-object v5, Ln0/f;->a:Ln/n1;

    if-eqz v3, :cond_1e

    goto :goto_c

    :cond_1e
    instance-of v3, p1, Ls/d;

    const/16 v6, 0x2d

    if-eqz v3, :cond_1f

    new-instance v5, Ln/n1;

    sget-object v3, Ln/w;->b:Lc2/c0;

    invoke-direct {v5, v6, v1, v3}, Ln/n1;-><init>(IILn/v;)V

    goto :goto_c

    :cond_1f
    instance-of v3, p1, Ls/b;

    if-eqz v3, :cond_20

    new-instance v5, Ln/n1;

    sget-object v3, Ln/w;->b:Lc2/c0;

    invoke-direct {v5, v6, v1, v3}, Ln/n1;-><init>(IILn/v;)V

    :cond_20
    :goto_c
    new-instance v1, Ln/f1;

    invoke-direct {v1, v0, v4, v5, v2}, Ln/f1;-><init>(Lf8/p2;FLn/j;Ly8/c;)V

    invoke-static {p0, v2, v2, v1, p2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_e

    :cond_21
    iget-object v3, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v3, Ls/h;

    sget-object v4, Ln0/f;->a:Ln/n1;

    instance-of v5, v3, Ls/f;

    if-eqz v5, :cond_22

    goto :goto_d

    :cond_22
    instance-of v5, v3, Ls/d;

    if-eqz v5, :cond_23

    goto :goto_d

    :cond_23
    instance-of v3, v3, Ls/b;

    if-eqz v3, :cond_24

    new-instance v4, Ln/n1;

    const/16 v3, 0x96

    sget-object v5, Ln/w;->b:Lc2/c0;

    invoke-direct {v4, v3, v1, v5}, Ln/n1;-><init>(IILn/v;)V

    :cond_24
    :goto_d
    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v3, 0x16

    invoke-direct {v1, v0, v4, v2, v3}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p0, v2, v2, v1, p2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_e
    iput-object p1, v0, Lf8/p2;->e:Ljava/lang/Object;

    :cond_25
    :goto_f
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Ll1/b;

    iget-wide v2, p1, Ll1/b;->a:J

    iget-object p1, p0, Lb0/s1;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ln/c;

    invoke-virtual {v1}, Ln/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/b;

    iget-wide v4, p1, Ll1/b;->a:J

    const-wide v6, 0x7fffffff7fffffffL

    and-long/2addr v4, v6

    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v4, v8

    sget-object v10, Lt8/z;->a:Lt8/z;

    if-eqz p1, :cond_27

    and-long v4, v2, v6

    cmp-long p1, v4, v8

    if-eqz p1, :cond_27

    invoke-virtual {v1}, Ln/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/b;

    iget-wide v4, p1, Ll1/b;->a:J

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    and-long v4, v2, v6

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_26

    goto :goto_10

    :cond_26
    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, Lu9/t;

    new-instance v0, Le3/h;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Le3/h;-><init>(Ljava/lang/Object;JLy8/c;I)V

    const/4 p1, 0x3

    invoke-static {p0, v4, v4, v0, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_11

    :cond_27
    :goto_10
    new-instance p0, Ll1/b;

    invoke-direct {p0, v2, v3}, Ll1/b;-><init>(J)V

    invoke-virtual {v1, p0, p2}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_28

    move-object v10, p0

    :cond_28
    :goto_11
    return-object v10

    :pswitch_5
    check-cast p1, Lc5/c;

    iget-object p2, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p2, Lc5/i;

    iget-object p0, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p0, Lg5/o;

    invoke-interface {p2, p0, p1}, Lc5/i;->c(Lg5/o;Lc5/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    check-cast p1, Ls/h;

    iget-object p2, p0, Lb0/s1;->n:Ljava/lang/Object;

    check-cast p2, Lb0/t1;

    iget-object p0, p0, Lb0/s1;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    instance-of v0, p1, Ls/f;

    if-nez v0, :cond_2d

    instance-of v0, p1, Ls/d;

    if-nez v0, :cond_2d

    instance-of v0, p1, Ls/k;

    if-eqz v0, :cond_29

    goto :goto_12

    :cond_29
    instance-of v0, p1, Ls/g;

    if-eqz v0, :cond_2a

    check-cast p1, Ls/g;

    iget-object p1, p1, Ls/g;->a:Ls/f;

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2a
    instance-of v0, p1, Ls/e;

    if-eqz v0, :cond_2b

    check-cast p1, Ls/e;

    iget-object p1, p1, Ls/e;->a:Ls/d;

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2b
    instance-of v0, p1, Ls/l;

    if-eqz v0, :cond_2c

    check-cast p1, Ls/l;

    iget-object p1, p1, Ls/l;->a:Ls/k;

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2c
    instance-of v0, p1, Ls/j;

    if-eqz v0, :cond_2e

    check-cast p1, Ls/j;

    iget-object p1, p1, Ls/j;->a:Ls/k;

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    :goto_12
    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_2e
    :goto_13
    iget-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v0, p0, :cond_32

    aget-object v2, p1, v0

    check-cast v2, Ls/h;

    instance-of v3, v2, Ls/f;

    if-eqz v3, :cond_2f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x2

    goto :goto_15

    :cond_2f
    instance-of v3, v2, Ls/d;

    if-eqz v3, :cond_30

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_30
    instance-of v2, v2, Ls/k;

    if-eqz v2, :cond_31

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v1, 0x4

    :cond_31
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_32
    iget-object p0, p2, Lb0/t1;->b:Lr0/b1;

    invoke-virtual {p0, v1}, Lr0/b1;->h(I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
