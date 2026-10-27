.class public final synthetic Lb0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lb0/r1;Lk1/u;ZLm0/v1;Lu2/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/i0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/i0;->o:Ljava/lang/Object;

    iput-boolean p3, p0, Lb0/i0;->m:Z

    iput-object p4, p0, Lb0/i0;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/i0;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLn/i0;Lr0/u0;Ln/d1;Ln/d1;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb0/i0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb0/i0;->m:Z

    iput-object p2, p0, Lb0/i0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/i0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/i0;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/i0;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lb0/i0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/i0;->n:Ljava/lang/Object;

    check-cast v0, Ln/i0;

    iget-object v0, v0, Ln/i0;->c:Lr0/e1;

    iget-object v1, p0, Lb0/i0;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lb0/i0;->p:Ljava/lang/Object;

    check-cast v2, Lr0/r2;

    iget-object v3, p0, Lb0/i0;->q:Ljava/lang/Object;

    check-cast v3, Lr0/r2;

    check-cast p1, Lm1/f0;

    iget-boolean p0, p0, Lb0/i0;->m:Z

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {p1, v6}, Lm1/f0;->i(F)V

    if-nez p0, :cond_2

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Lm1/f0;->j(F)V

    if-nez p0, :cond_4

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v5}, Lm1/f0;->c(F)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm1/k0;

    iget-wide v0, p0, Lm1/k0;->a:J

    invoke-virtual {p1, v0, v1}, Lm1/f0;->p(J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/i0;->n:Ljava/lang/Object;

    check-cast v0, Lb0/r1;

    iget-object v1, p0, Lb0/i0;->o:Ljava/lang/Object;

    check-cast v1, Lk1/u;

    iget-object v2, p0, Lb0/i0;->p:Ljava/lang/Object;

    check-cast v2, Lm0/v1;

    iget-object v3, p0, Lb0/i0;->q:Ljava/lang/Object;

    check-cast v3, Lu2/q;

    check-cast p1, Ll1/b;

    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lk1/u;->a(Lk1/u;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lb0/r1;->c:Lf2/k2;

    if-eqz v1, :cond_7

    check-cast v1, Lf2/n1;

    invoke-virtual {v1}, Lf2/n1;->b()V

    :cond_7
    :goto_3
    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean p0, p0, Lb0/i0;->m:Z

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Lb0/r1;->a()Lb0/e1;

    move-result-object p0

    sget-object v1, Lb0/e1;->m:Lb0/e1;

    if-eq p0, v1, :cond_8

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-wide v1, p1, Ll1/b;->a:J

    iget-object p1, v0, Lb0/r1;->d:Lg5/e;

    iget-object v4, v0, Lb0/r1;->v:Lb0/h0;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v1, v2}, Lb0/z2;->b(ZJ)I

    move-result p0

    invoke-interface {v3, p0}, Lu2/q;->j(I)I

    move-result p0

    iget-object p1, p1, Lg5/e;->m:Ljava/lang/Object;

    check-cast p1, Lu2/x;

    invoke-static {p0, p0}, Lp2/d0;->b(II)J

    move-result-wide v1

    const/4 p0, 0x5

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, p0}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object p0

    invoke-virtual {v4, p0}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lb0/r1;->a:Lb0/b2;

    iget-object p0, p0, Lb0/b2;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9

    sget-object p0, Lb0/e1;->n:Lb0/e1;

    iget-object p1, v0, Lb0/r1;->k:Lr0/e1;

    invoke-virtual {p1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v2, p1}, Lm0/v1;->g(Ll1/b;)V

    :cond_9
    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
