.class public final Lr1/h;
.super Lr1/c0;
.source "SourceFile"


# instance fields
.field public b:Lm1/m;

.field public c:F

.field public d:Ljava/util/List;

.field public e:F

.field public f:F

.field public g:Lm1/m;

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lo1/h;

.field public final r:Lm1/g;

.field public s:Lm1/g;

.field public t:Lm1/g;

.field public final u:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr1/h;->c:F

    sget v1, Lr1/h0;->a:I

    sget-object v1, Lu8/r;->l:Lu8/r;

    iput-object v1, p0, Lr1/h;->d:Ljava/util/List;

    iput v0, p0, Lr1/h;->e:F

    const/4 v1, 0x0

    iput v1, p0, Lr1/h;->h:I

    iput v1, p0, Lr1/h;->i:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lr1/h;->j:F

    iput v0, p0, Lr1/h;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/h;->n:Z

    iput-boolean v0, p0, Lr1/h;->o:Z

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    iput-object v0, p0, Lr1/h;->r:Lm1/g;

    iput-object v0, p0, Lr1/h;->s:Lm1/g;

    sget-object v0, Lt8/h;->m:Lt8/h;

    sget-object v1, Lr1/g;->m:Lr1/g;

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    iput-object v0, p0, Lr1/h;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lo1/d;)V
    .locals 13

    iget-boolean v0, p0, Lr1/h;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr1/h;->d:Ljava/util/List;

    iget-object v1, p0, Lr1/h;->r:Lm1/g;

    invoke-static {v0, v1}, Lr1/b;->e(Ljava/util/List;Lm1/g;)V

    invoke-virtual {p0}, Lr1/h;->e()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lr1/h;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr1/h;->e()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/h;->n:Z

    iput-boolean v0, p0, Lr1/h;->p:Z

    iget-object v3, p0, Lr1/h;->b:Lm1/m;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lr1/h;->s:Lm1/g;

    iget v4, p0, Lr1/h;->c:F

    const/4 v5, 0x0

    const/16 v6, 0x38

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iget-object v9, p0, Lr1/h;->g:Lm1/m;

    if-eqz v9, :cond_5

    iget-object p1, p0, Lr1/h;->q:Lo1/h;

    iget-boolean v2, p0, Lr1/h;->o:Z

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v11, p1

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v3, Lo1/h;

    iget v7, p0, Lr1/h;->f:F

    iget v8, p0, Lr1/h;->j:F

    iget v4, p0, Lr1/h;->h:I

    iget v5, p0, Lr1/h;->i:I

    const/16 v6, 0x10

    invoke-direct/range {v3 .. v8}, Lo1/h;-><init>(IIIFF)V

    iput-object v3, p0, Lr1/h;->q:Lo1/h;

    iput-boolean v0, p0, Lr1/h;->o:Z

    move-object v11, v3

    :goto_3
    iget-object v8, p0, Lr1/h;->s:Lm1/g;

    iget v10, p0, Lr1/h;->e:F

    const/16 v12, 0x30

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lo1/d;->t(Lo1/d;Lm1/g;Lm1/m;FLo1/h;I)V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 8

    iget v0, p0, Lr1/h;->k:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    iget-object v2, p0, Lr1/h;->r:Lm1/g;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lr1/h;->l:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_0

    iput-object v2, p0, Lr1/h;->s:Lm1/g;

    return-void

    :cond_0
    iget-object v0, p0, Lr1/h;->s:Lm1/g;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    iput-object v0, p0, Lr1/h;->s:Lm1/g;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lr1/h;->s:Lm1/g;

    iget-object v0, v0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v6, 0x1

    if-ne v0, v5, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iget-object v7, p0, Lr1/h;->s:Lm1/g;

    invoke-virtual {v7}, Lm1/g;->h()V

    iget-object v7, p0, Lr1/h;->s:Lm1/g;

    iget-object v7, v7, Lm1/g;->a:Landroid/graphics/Path;

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1
    invoke-virtual {v7, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_2
    iget-object v0, p0, Lr1/h;->u:Ljava/lang/Object;

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm1/h;

    iget-object v5, v5, Lm1/h;->a:Landroid/graphics/PathMeasure;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lm1/g;->a:Landroid/graphics/Path;

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/h;

    iget-object v2, v2, Lm1/h;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v4, p0, Lr1/h;->k:F

    iget v5, p0, Lr1/h;->m:F

    add-float/2addr v4, v5

    rem-float/2addr v4, v3

    mul-float/2addr v4, v2

    iget v6, p0, Lr1/h;->l:F

    add-float/2addr v6, v5

    rem-float/2addr v6, v3

    mul-float/2addr v6, v2

    cmpl-float v3, v4, v6

    if-lez v3, :cond_6

    iget-object v3, p0, Lr1/h;->t:Lm1/g;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v3

    iput-object v3, p0, Lr1/h;->t:Lm1/g;

    :goto_4
    invoke-virtual {v3}, Lm1/g;->g()V

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm1/h;

    invoke-virtual {v5, v4, v2, v3}, Lm1/h;->a(FFLm1/g;)Z

    iget-object v2, p0, Lr1/h;->s:Lm1/g;

    invoke-static {v2, v3}, Lm1/g;->a(Lm1/g;Lm1/g;)V

    invoke-virtual {v3}, Lm1/g;->g()V

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/h;

    invoke-virtual {v0, v1, v6, v3}, Lm1/h;->a(FFLm1/g;)Z

    iget-object p0, p0, Lr1/h;->s:Lm1/g;

    invoke-static {p0, v3}, Lm1/g;->a(Lm1/g;Lm1/g;)V

    return-void

    :cond_6
    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/h;

    iget-object p0, p0, Lr1/h;->s:Lm1/g;

    invoke-virtual {v0, v4, v6, p0}, Lm1/h;->a(FFLm1/g;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr1/h;->r:Lm1/g;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
