.class public final synthetic Lb0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:F

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLm1/e;Lm1/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb0/f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb0/f;->m:F

    iput-object p2, p0, Lb0/f;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/f;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc2/f1;Lo0/g5;F)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb0/f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/f;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/f;->o:Ljava/lang/Object;

    iput p3, p0, Lb0/f;->m:F

    return-void
.end method

.method public synthetic constructor <init>(Lr/a3;FLi9/c;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lb0/f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/f;->n:Ljava/lang/Object;

    iput p2, p0, Lb0/f;->m:F

    iput-object p3, p0, Lb0/f;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lb0/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/f;->n:Ljava/lang/Object;

    check-cast v0, Lr/a3;

    iget-object v1, p0, Lb0/f;->o:Ljava/lang/Object;

    check-cast v1, Li9/c;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lr/a3;->b:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p1, v4, v6

    if-nez p1, :cond_0

    iput-wide v2, v0, Lr/a3;->b:J

    :cond_0
    new-instance v7, Ln/l;

    iget p1, v0, Lr/a3;->e:F

    invoke-direct {v7, p1}, Ln/l;-><init>(F)V

    const/4 v4, 0x0

    iget p0, p0, Lb0/f;->m:F

    cmpg-float v4, p0, v4

    sget-object v8, Lr/a3;->f:Ln/l;

    if-nez v4, :cond_1

    iget-object p0, v0, Lr/a3;->a:Ln/q1;

    new-instance v4, Ln/l;

    invoke-direct {v4, p1}, Ln/l;-><init>(F)V

    iget-object p1, v0, Lr/a3;->c:Ln/l;

    invoke-interface {p0, v4, v8, p1}, Ln/q1;->b(Ln/p;Ln/p;Ln/p;)J

    move-result-wide p0

    :goto_0
    move-wide v5, p0

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Lr/a3;->b:J

    sub-long v4, v2, v4

    long-to-float p1, v4

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ll9/a;->A(D)J

    move-result-wide p0

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lr/a3;->a:Ln/q1;

    iget-object v9, v0, Lr/a3;->c:Ln/l;

    invoke-interface/range {v4 .. v9}, Ln/q1;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    check-cast p0, Ln/l;

    iget p0, p0, Ln/l;->a:F

    iget-object v4, v0, Lr/a3;->a:Ln/q1;

    iget-object v9, v0, Lr/a3;->c:Ln/l;

    invoke-interface/range {v4 .. v9}, Ln/q1;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p1

    check-cast p1, Ln/l;

    iput-object p1, v0, Lr/a3;->c:Ln/l;

    iput-wide v2, v0, Lr/a3;->b:J

    iget p1, v0, Lr/a3;->e:F

    sub-float/2addr p1, p0

    iput p0, v0, Lr/a3;->e:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/f;->n:Ljava/lang/Object;

    check-cast v0, Lc2/f1;

    iget-object v1, p0, Lb0/f;->o:Ljava/lang/Object;

    check-cast v1, Lo0/g5;

    check-cast p1, Lc2/e1;

    iget-object v1, v1, Lo0/g5;->D:Ln/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ln/c;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_3
    float-to-int p0, p0

    goto :goto_4

    :cond_2
    iget p0, p0, Lb0/f;->m:F

    goto :goto_3

    :goto_4
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lb0/f;->m:F

    iget-object v1, p0, Lb0/f;->n:Ljava/lang/Object;

    check-cast v1, Lm1/e;

    iget-object p0, p0, Lb0/f;->o:Ljava/lang/Object;

    check-cast p0, Lm1/j;

    check-cast p1, Le2/j0;

    invoke-virtual {p1}, Le2/j0;->b()V

    iget-object p1, p1, Le2/j0;->l:Lo1/b;

    iget-object v2, p1, Lo1/b;->m:Lg5/m;

    invoke-virtual {v2}, Lg5/m;->m()J

    move-result-wide v3

    invoke-virtual {v2}, Lg5/m;->h()Lm1/o;

    move-result-object v5

    invoke-interface {v5}, Lm1/o;->h()V

    :try_start_0
    iget-object v5, v2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v5, Lm2/j;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lm2/j;->F(FF)V

    const/high16 v0, 0x42340000    # 45.0f

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v0, v6, v7}, Lm2/j;->w(FJ)V

    invoke-virtual {p1, v1, p0}, Lo1/b;->e(Lm1/e;Lm1/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v4}, Lm/a;->t(Lg5/m;J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3, v4}, Lm/a;->t(Lg5/m;J)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
