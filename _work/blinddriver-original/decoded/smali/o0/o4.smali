.class public final Lo0/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Li9/a;

.field public final c:Lo9/a;

.field public final d:Lr0/a1;

.field public e:Li9/c;

.field public final f:Z

.field public final g:[F

.field public final h:Lr0/b1;

.field public final i:Lr0/b1;

.field public j:Z

.field public final k:Lr0/b1;

.field public final l:Lr0/b1;

.field public final m:Lr/m1;

.field public final n:Lr0/e1;

.field public final o:Lad/t;

.field public final p:Lr0/a1;

.field public final q:Lr0/a1;

.field public final r:Lo0/n4;

.field public final s:Lp/r1;


# direct methods
.method public constructor <init>(FILi9/a;Lo9/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo0/o4;->a:I

    iput-object p3, p0, Lo0/o4;->b:Li9/a;

    iput-object p4, p0, Lo0/o4;->c:Lo9/a;

    new-instance p3, Lr0/a1;

    invoke-direct {p3, p1}, Lr0/a1;-><init>(F)V

    iput-object p3, p0, Lo0/o4;->d:Lr0/a1;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lo0/o4;->f:Z

    const/4 p4, 0x0

    if-nez p2, :cond_0

    new-array p2, p4, [F

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p2, 0x2

    new-array v1, v0, [F

    move v2, p4

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    add-int/lit8 v4, p2, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lo0/o4;->g:[F

    new-instance p2, Lr0/b1;

    invoke-direct {p2, p4}, Lr0/b1;-><init>(I)V

    iput-object p2, p0, Lo0/o4;->h:Lr0/b1;

    new-instance p2, Lr0/b1;

    invoke-direct {p2, p4}, Lr0/b1;-><init>(I)V

    iput-object p2, p0, Lo0/o4;->i:Lr0/b1;

    new-instance p2, Lr0/b1;

    invoke-direct {p2, p4}, Lr0/b1;-><init>(I)V

    iput-object p2, p0, Lo0/o4;->k:Lr0/b1;

    new-instance p2, Lr0/b1;

    invoke-direct {p2, p4}, Lr0/b1;-><init>(I)V

    iput-object p2, p0, Lo0/o4;->l:Lr0/b1;

    sget-object p2, Lr/m1;->m:Lr/m1;

    iput-object p2, p0, Lo0/o4;->m:Lr/m1;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, p0, Lo0/o4;->n:Lr0/e1;

    new-instance p2, Lad/t;

    const/16 p3, 0x1b

    invoke-direct {p2, p3, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lo0/o4;->o:Lad/t;

    iget-object p2, p0, Lo0/o4;->c:Lo9/a;

    iget p3, p2, Lo9/a;->a:F

    iget p2, p2, Lo9/a;->b:F

    sub-float/2addr p2, p3

    const/4 p4, 0x0

    cmpg-float v0, p2, p4

    if-nez v0, :cond_2

    move p1, p4

    goto :goto_2

    :cond_2
    sub-float/2addr p1, p3

    div-float/2addr p1, p2

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p4, p2}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-static {p4, p4, p1}, Lg5/f;->C(FFF)F

    move-result p1

    new-instance p2, Lr0/a1;

    invoke-direct {p2, p1}, Lr0/a1;-><init>(F)V

    iput-object p2, p0, Lo0/o4;->p:Lr0/a1;

    new-instance p1, Lr0/a1;

    invoke-direct {p1, p4}, Lr0/a1;-><init>(F)V

    iput-object p1, p0, Lo0/o4;->q:Lr0/a1;

    new-instance p1, Lo0/n4;

    invoke-direct {p1, p0}, Lo0/n4;-><init>(Lo0/o4;)V

    iput-object p1, p0, Lo0/o4;->r:Lo0/n4;

    new-instance p1, Lp/r1;

    invoke-direct {p1}, Lp/r1;-><init>()V

    iput-object p1, p0, Lo0/o4;->s:Lp/r1;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    iget-object v0, p0, Lo0/o4;->m:Lr/m1;

    sget-object v1, Lr/m1;->l:Lr/m1;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo0/o4;->i:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo0/o4;->l:Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/o4;->h:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo0/o4;->k:Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    iget-object v3, p0, Lo0/o4;->p:Lr0/a1;

    invoke-virtual {v3}, Lr0/a1;->g()F

    move-result v4

    add-float/2addr v4, p1

    iget-object p1, p0, Lo0/o4;->q:Lr0/a1;

    invoke-virtual {p1}, Lr0/a1;->g()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lr0/a1;->h(F)V

    invoke-virtual {p1, v2}, Lr0/a1;->h(F)V

    invoke-virtual {v3}, Lr0/a1;->g()F

    move-result p1

    iget-object v3, p0, Lo0/o4;->g:[F

    invoke-static {p1, v3, v1, v0}, Lo0/m4;->e(F[FFF)F

    move-result p1

    iget-object v3, p0, Lo0/o4;->c:Lo9/a;

    iget v4, v3, Lo9/a;->a:F

    iget v3, v3, Lo9/a;->b:F

    sub-float/2addr v0, v1

    cmpg-float v5, v0, v2

    if-nez v5, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v0}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-static {v4, v3, p1}, Lg5/f;->C(FFF)F

    move-result p1

    iget-object v0, p0, Lo0/o4;->d:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lo0/o4;->e:Li9/c;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lo0/o4;->c(F)V

    return-void
.end method

.method public final b()F
    .locals 4

    iget-object v0, p0, Lo0/o4;->c:Lo9/a;

    iget v1, v0, Lo9/a;->a:F

    iget v0, v0, Lo9/a;->b:F

    iget-object p0, p0, Lo0/o4;->d:Lr0/a1;

    invoke-virtual {p0}, Lr0/a1;->g()F

    move-result p0

    invoke-static {p0, v1, v0}, Lg6/c1;->e(FFF)F

    move-result p0

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-nez v3, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    sub-float/2addr p0, v1

    div-float/2addr p0, v0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v2, v0}, Lg6/c1;->e(FFF)F

    move-result p0

    return p0
.end method

.method public final c(F)V
    .locals 3

    iget-boolean v0, p0, Lo0/o4;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/o4;->c:Lo9/a;

    iget v1, v0, Lo9/a;->a:F

    iget v0, v0, Lo9/a;->b:F

    invoke-static {p1, v1, v0}, Lg6/c1;->e(FFF)F

    move-result p1

    iget-object v2, p0, Lo0/o4;->g:[F

    invoke-static {p1, v2, v1, v0}, Lo0/m4;->e(F[FFF)F

    move-result p1

    :cond_0
    iget-object p0, p0, Lo0/o4;->d:Lr0/a1;

    invoke-virtual {p0, p1}, Lr0/a1;->h(F)V

    return-void
.end method
