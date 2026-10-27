.class public final Lm0/s1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:J

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm0/u;Ljava/lang/String;JLp2/l0;Lm0/v1;Lu2/q;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm0/s1;->l:I

    .line 1
    iput-object p1, p0, Lm0/s1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lm0/s1;->p:Ljava/lang/Object;

    iput-wide p3, p0, Lm0/s1;->n:J

    iput-object p5, p0, Lm0/s1;->q:Ljava/lang/Object;

    iput-object p6, p0, Lm0/s1;->r:Ljava/lang/Object;

    iput-object p7, p0, Lm0/s1;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lr/a3;Lr/i;Lr/d;JLu9/v0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm0/s1;->l:I

    .line 2
    iput-object p1, p0, Lm0/s1;->p:Ljava/lang/Object;

    iput-object p2, p0, Lm0/s1;->q:Ljava/lang/Object;

    iput-object p3, p0, Lm0/s1;->r:Ljava/lang/Object;

    iput-wide p4, p0, Lm0/s1;->n:J

    iput-object p6, p0, Lm0/s1;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 11

    iget v0, p0, Lm0/s1;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lm0/s1;

    iget-object v0, p0, Lm0/s1;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr/a3;

    iget-object v0, p0, Lm0/s1;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lr/i;

    iget-object v0, p0, Lm0/s1;->r:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lr/d;

    iget-object v0, p0, Lm0/s1;->s:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lu9/v0;

    iget-wide v5, p0, Lm0/s1;->n:J

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lm0/s1;-><init>(Lr/a3;Lr/i;Lr/d;JLu9/v0;Ly8/c;)V

    iput-object p1, v1, Lm0/s1;->o:Ljava/lang/Object;

    return-object v1

    :pswitch_0
    move-object v8, p2

    new-instance v2, Lm0/s1;

    iget-object p1, p0, Lm0/s1;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm0/u;

    iget-object p1, p0, Lm0/s1;->p:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lm0/s1;->q:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lp2/l0;

    iget-object p1, p0, Lm0/s1;->r:Ljava/lang/Object;

    check-cast p1, Lm0/v1;

    iget-object p2, p0, Lm0/s1;->s:Ljava/lang/Object;

    move-object v9, p2

    check-cast v9, Lu2/q;

    iget-wide v5, p0, Lm0/s1;->n:J

    move-object v10, v8

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lm0/s1;-><init>(Lm0/u;Ljava/lang/String;JLp2/l0;Lm0/v1;Lu2/q;Ly8/c;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/s1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lm0/s1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/s1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/s1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lm0/s1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/s1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/s1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lm0/s1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/s1;->r:Ljava/lang/Object;

    check-cast v0, Lr/d;

    iget-object v1, p0, Lm0/s1;->q:Ljava/lang/Object;

    check-cast v1, Lr/i;

    iget-object v2, p0, Lm0/s1;->p:Ljava/lang/Object;

    check-cast v2, Lr/a3;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lm0/s1;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/s1;->o:Ljava/lang/Object;

    check-cast p1, Lr/l2;

    iget-wide v6, p0, Lm0/s1;->n:J

    invoke-static {v1, v0, v6, v7}, Lr/i;->M0(Lr/i;Lr/d;J)F

    move-result v4

    iput v4, v2, Lr/a3;->e:F

    iget-object v4, p0, Lm0/s1;->s:Ljava/lang/Object;

    check-cast v4, Lu9/v0;

    new-instance v6, Lb0/o;

    invoke-direct {v6, v1, v2, v4, p1}, Lb0/o;-><init>(Lr/i;Lr/a3;Lu9/v0;Lr/l2;)V

    new-instance p1, Lb0/c3;

    const/16 v4, 0xe

    invoke-direct {p1, v1, v2, v0, v4}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v5, p0, Lm0/s1;->m:I

    invoke-virtual {v2, v6, p1, p0}, Lr/a3;->a(Lb0/o;Lb0/c3;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v3

    :pswitch_0
    iget-object v0, p0, Lm0/s1;->s:Ljava/lang/Object;

    check-cast v0, Lu2/q;

    iget-object v1, p0, Lm0/s1;->p:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v1, p0, Lm0/s1;->r:Ljava/lang/Object;

    check-cast v1, Lm0/v1;

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lm0/s1;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/s1;->o:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lm0/u;

    iput v3, p0, Lm0/s1;->m:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v9, 0x0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Lm0/s1;->n:J

    invoke-static {v3, v4}, Lp2/l0;->c(J)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    move-object p1, v9

    goto :goto_3

    :cond_6
    new-instance v2, Lm0/t;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lm0/t;-><init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V

    iget-object p1, v6, Lm0/u;->a:Ly8/h;

    new-instance v3, Landroidx/lifecycle/j0;

    invoke-direct {v3, v6, v2, v9}, Landroidx/lifecycle/j0;-><init>(Lm0/u;Li9/e;Ly8/c;)V

    invoke-static {p1, v3, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    if-ne p1, v8, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    check-cast p1, Lp2/l0;

    sget-object v8, Lt8/z;->a:Lt8/z;

    if-eqz p1, :cond_8

    iget-wide v2, p1, Lp2/l0;->a:J

    const/16 p1, 0x20

    shr-long v6, v2, p1

    long-to-int p1, v6

    invoke-interface {v0, p1}, Lu2/q;->j(I)I

    move-result p1

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    invoke-interface {v0, v2}, Lu2/q;->j(I)I

    move-result v2

    invoke-static {p1, v2}, Lp2/d0;->b(II)J

    move-result-wide v2

    iget-object p0, p0, Lm0/s1;->q:Ljava/lang/Object;

    check-cast p0, Lp2/l0;

    invoke-static {v2, v3, p0}, Lp2/l0;->a(JLjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v1}, Lm0/v1;->n()Lu2/x;

    move-result-object p0

    iget-object p0, p0, Lu2/x;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-static {p0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v1, Lm0/v1;->b:Lu2/q;

    if-ne v0, p0, :cond_8

    iget-object p0, v1, Lm0/v1;->c:Li9/c;

    invoke-virtual {v1}, Lm0/v1;->n()Lu2/x;

    move-result-object p1

    iget-object p1, p1, Lu2/x;->a:Lp2/g;

    invoke-static {p1, v2, v3}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object p1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lp2/l0;

    invoke-direct {p0, v2, v3}, Lp2/l0;-><init>(J)V

    iput-object p0, v1, Lm0/v1;->w:Lp2/l0;

    :cond_8
    :goto_5
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
