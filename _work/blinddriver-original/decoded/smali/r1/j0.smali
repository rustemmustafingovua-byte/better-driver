.class public final Lr1/j0;
.super Lq1/b;
.source "SourceFile"


# instance fields
.field public final e:Lr0/e1;

.field public final f:Lr0/e1;

.field public final g:Lr1/e0;

.field public final h:Lr0/e1;

.field public i:F

.field public j:Lm1/j;


# direct methods
.method public constructor <init>(Lr1/c;)V
    .locals 3

    invoke-direct {p0}, Lq1/b;-><init>()V

    new-instance v0, Ll1/e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ll1/e;-><init>(J)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lr1/j0;->e:Lr0/e1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lr1/j0;->f:Lr0/e1;

    new-instance v0, Lr1/e0;

    invoke-direct {v0, p1}, Lr1/e0;-><init>(Lr1/c;)V

    new-instance p1, Lc2/l0;

    const/16 v1, 0xf

    invoke-direct {p1, v1, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lr1/e0;->f:Lj9/o;

    iput-object v0, p0, Lr1/j0;->g:Lr1/e0;

    sget-object p1, Lr0/e;->o:Lr0/e;

    new-instance v0, Lr0/e1;

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-direct {v0, v1, p1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v0, p0, Lr1/j0;->h:Lr0/e1;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lr1/j0;->i:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lr1/j0;->i:F

    return-void
.end method

.method public final b(Lm1/j;)V
    .locals 0

    iput-object p1, p0, Lr1/j0;->j:Lm1/j;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Lr1/j0;->e:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/e;

    iget-wide v0, p0, Ll1/e;->a:J

    return-wide v0
.end method

.method public final e(Le2/j0;)V
    .locals 10

    iget-object v0, p1, Le2/j0;->l:Lo1/b;

    iget-object v1, p0, Lr1/j0;->j:Lm1/j;

    iget-object v2, p0, Lr1/j0;->g:Lr1/e0;

    if-nez v1, :cond_0

    iget-object v1, v2, Lr1/e0;->g:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/j;

    :cond_0
    iget-object v3, p0, Lr1/j0;->f:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Le2/j0;->getLayoutDirection()Lb3/m;

    move-result-object v3

    sget-object v4, Lb3/m;->m:Lb3/m;

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Lo1/d;->j0()J

    move-result-wide v3

    iget-object v0, v0, Lo1/b;->m:Lg5/m;

    invoke-virtual {v0}, Lg5/m;->m()J

    move-result-wide v5

    invoke-virtual {v0}, Lg5/m;->h()Lm1/o;

    move-result-object v7

    invoke-interface {v7}, Lm1/o;->h()V

    :try_start_0
    iget-object v7, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v7, Lm2/j;

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v3, v4}, Lm2/j;->A(FFJ)V

    iget v3, p0, Lr1/j0;->i:F

    invoke-virtual {v2, p1, v3, v1}, Lr1/e0;->e(Lo1/d;FLm1/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v5, v6}, Lm/a;->t(Lg5/m;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v5, v6}, Lm/a;->t(Lg5/m;J)V

    throw p0

    :cond_1
    iget v0, p0, Lr1/j0;->i:F

    invoke-virtual {v2, p1, v0, v1}, Lr1/e0;->e(Lo1/d;FLm1/j;)V

    :goto_0
    iget-object p0, p0, Lr1/j0;->h:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    return-void
.end method
