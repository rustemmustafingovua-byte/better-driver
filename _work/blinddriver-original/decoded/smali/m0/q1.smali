.class public final Lm0/q1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Z

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm0/v1;ZLy8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm0/q1;->l:I

    .line 1
    iput-object p1, p0, Lm0/q1;->o:Ljava/lang/Object;

    iput-boolean p2, p0, Lm0/q1;->n:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(ZLr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm0/q1;->l:I

    .line 2
    iput-boolean p1, p0, Lm0/q1;->n:Z

    iput-object p2, p0, Lm0/q1;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lm0/q1;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lm0/q1;

    iget-object v0, p0, Lm0/q1;->o:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-boolean p0, p0, Lm0/q1;->n:Z

    invoke-direct {p1, p0, v0, p2}, Lm0/q1;-><init>(ZLr0/u0;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lm0/q1;

    iget-object v0, p0, Lm0/q1;->o:Ljava/lang/Object;

    check-cast v0, Lm0/v1;

    iget-boolean p0, p0, Lm0/q1;->n:Z

    invoke-direct {p1, v0, p0, p2}, Lm0/q1;-><init>(Lm0/v1;ZLy8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/q1;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lm0/q1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/q1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/q1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lm0/q1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/q1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/q1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lm0/q1;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-boolean v2, p0, Lm0/q1;->n:Z

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x1

    iget-object v5, p0, Lm0/q1;->o:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Lr0/u0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lm0/q1;->m:I

    if-eqz v6, :cond_1

    if-ne v6, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    if-eqz v2, :cond_3

    iput v4, p0, Lm0/q1;->m:I

    const-wide/16 v6, 0x2bc

    invoke-static {v6, v7, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v5, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1

    :pswitch_0
    check-cast v5, Lm0/v1;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lm0/q1;->m:I

    if-eqz v6, :cond_5

    if-ne v6, v4, :cond_4

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lm0/v1;->n()Lu2/x;

    move-result-object p1

    iget-wide v6, p1, Lu2/x;->b:J

    invoke-static {v6, v7}, Lp2/l0;->c(J)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v5, Lm0/v1;->f:Lu2/d0;

    instance-of p1, p1, Lu2/r;

    if-nez p1, :cond_7

    invoke-virtual {v5}, Lm0/v1;->n()Lu2/x;

    move-result-object p1

    invoke-static {p1}, Lpc/h;->m(Lu2/x;)Lp2/g;

    move-result-object p1

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    iget-wide v2, v2, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->e(J)I

    move-result v2

    invoke-virtual {v5}, Lm0/v1;->n()Lu2/x;

    move-result-object v3

    iget-object v3, v3, Lu2/x;->a:Lp2/g;

    invoke-static {v2, v2}, Lp2/d0;->b(II)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v2

    iget-object v3, v5, Lm0/v1;->c:Li9/c;

    invoke-interface {v3, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {v5, v2}, Lm0/v1;->q(Lb0/e1;)V

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, v5, Lm0/v1;->h:Lf2/g1;

    if-eqz v2, :cond_9

    invoke-static {p1}, Lt/c;->a(Lp2/g;)Lf2/f1;

    move-result-object p1

    iput v4, p0, Lm0/q1;->m:I

    check-cast v2, Lf2/i;

    invoke-virtual {v2, p1}, Lf2/i;->a(Lf2/f1;)V

    if-ne v1, v0, :cond_9

    move-object v1, v0

    :cond_9
    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
