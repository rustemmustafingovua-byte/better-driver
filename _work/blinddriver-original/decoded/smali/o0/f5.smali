.class public final Lo0/f5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ljava/lang/Object;

.field public synthetic o:F


# direct methods
.method public constructor <init>(Ll2/c;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo0/f5;->l:I

    .line 1
    iput-object p1, p0, Lo0/f5;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo0/g5;FLy8/c;I)V
    .locals 0

    .line 2
    iput p4, p0, Lo0/f5;->l:I

    iput-object p1, p0, Lo0/f5;->n:Ljava/lang/Object;

    iput p2, p0, Lo0/f5;->o:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lo0/f5;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lo0/f5;

    iget-object p0, p0, Lo0/f5;->n:Ljava/lang/Object;

    check-cast p0, Ll2/c;

    invoke-direct {v0, p0, p2}, Lo0/f5;-><init>(Ll2/c;Ly8/c;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Lo0/f5;->o:F

    return-object v0

    :pswitch_0
    new-instance p1, Lo0/f5;

    iget-object v0, p0, Lo0/f5;->n:Ljava/lang/Object;

    check-cast v0, Lo0/g5;

    iget p0, p0, Lo0/f5;->o:F

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, Lo0/f5;-><init>(Lo0/g5;FLy8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lo0/f5;

    iget-object v0, p0, Lo0/f5;->n:Ljava/lang/Object;

    check-cast v0, Lo0/g5;

    iget p0, p0, Lo0/f5;->o:F

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Lo0/f5;-><init>(Lo0/g5;FLy8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo0/f5;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ly8/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo0/f5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/f5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/f5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lo0/f5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/f5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/f5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lo0/f5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/f5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/f5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lo0/f5;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/f5;->n:Ljava/lang/Object;

    check-cast v0, Ll2/c;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lo0/f5;->m:I

    const/4 v3, 0x1

    const-wide v4, 0xffffffffL

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget p1, p0, Lo0/f5;->o:F

    iget-object v2, v0, Ll2/c;->a:Lm2/p;

    iget-object v2, v2, Lm2/p;->d:Lm2/m;

    sget-object v6, Lm2/l;->e:Lm2/w;

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    invoke-virtual {v2, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    check-cast v2, Li9/e;

    if-eqz v2, :cond_4

    iget-object v0, v0, Ll2/c;->a:Lm2/p;

    iget-object v0, v0, Lm2/p;->d:Lm2/m;

    sget-object v6, Lm2/t;->v:Lm2/w;

    invoke-virtual {v0, v6}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/i;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v8, p1

    const/16 p1, 0x20

    shl-long/2addr v6, p1

    and-long/2addr v8, v4

    or-long/2addr v6, v8

    new-instance p1, Ll1/b;

    invoke-direct {p1, v6, v7}, Ll1/b;-><init>(J)V

    iput v3, p0, Lo0/f5;->m:I

    invoke-interface {v2, p1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ll1/b;

    iget-wide p0, p1, Ll1/b;->a:J

    and-long/2addr p0, v4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p0}, Ljava/lang/Float;-><init>(F)V

    :goto_1
    return-object v1

    :cond_4
    const-string p0, "Required value was null."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lo0/f5;->n:Ljava/lang/Object;

    check-cast v0, Lo0/g5;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lo0/f5;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v3, :cond_5

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lo0/g5;->D:Ln/c;

    if-eqz v2, :cond_9

    iget p1, p0, Lo0/f5;->o:F

    move v4, v3

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    iget-boolean p1, v0, Lo0/g5;->C:Z

    if-eqz p1, :cond_7

    sget-object p1, Lo0/w4;->f:Ln/p0;

    goto :goto_2

    :cond_7
    iget-object p1, v0, Lo0/g5;->B:Ln/r0;

    :goto_2
    iput v4, p0, Lo0/f5;->m:I

    const/4 v5, 0x0

    const/16 v7, 0xc

    move-object v6, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    check-cast p1, Ln/h;

    :cond_9
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_4
    return-object v1

    :pswitch_1
    move-object v6, p0

    iget-object p0, v6, Lo0/f5;->n:Ljava/lang/Object;

    check-cast p0, Lo0/g5;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lo0/f5;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    if-ne v1, v2, :cond_a

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    move p1, v2

    iget-object v2, p0, Lo0/g5;->E:Ln/c;

    if-eqz v2, :cond_e

    iget v1, v6, Lo0/f5;->o:F

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    iget-boolean v1, p0, Lo0/g5;->C:Z

    if-eqz v1, :cond_c

    sget-object p0, Lo0/w4;->f:Ln/p0;

    :goto_5
    move-object v4, p0

    goto :goto_6

    :cond_c
    iget-object p0, p0, Lo0/g5;->B:Ln/r0;

    goto :goto_5

    :goto_6
    iput p1, v6, Lo0/f5;->m:I

    const/4 v5, 0x0

    const/16 v7, 0xc

    invoke-static/range {v2 .. v7}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    check-cast p1, Ln/h;

    :cond_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
