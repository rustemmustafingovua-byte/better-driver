.class public final Lm1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/c;


# instance fields
.field public A:Lb3/c;

.field public B:Lb3/m;

.field public C:I

.field public D:Lm1/v;

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:J

.field public s:J

.field public t:F

.field public u:F

.field public v:J

.field public w:Lm1/h0;

.field public x:Z

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lm1/f0;->m:F

    iput v0, p0, Lm1/f0;->n:F

    iput v0, p0, Lm1/f0;->o:F

    sget-wide v0, Lm1/w;->a:J

    iput-wide v0, p0, Lm1/f0;->r:J

    iput-wide v0, p0, Lm1/f0;->s:J

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lm1/f0;->u:F

    sget-wide v0, Lm1/k0;->b:J

    iput-wide v0, p0, Lm1/f0;->v:J

    sget-object v0, Lm1/v;->b:Lm1/e0;

    iput-object v0, p0, Lm1/f0;->w:Lm1/h0;

    const/4 v0, 0x0

    iput v0, p0, Lm1/f0;->y:I

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Lm1/f0;->z:J

    invoke-static {}, Lpc/h;->b()Lb3/d;

    move-result-object v0

    iput-object v0, p0, Lm1/f0;->A:Lb3/c;

    sget-object v0, Lb3/m;->l:Lb3/m;

    iput-object v0, p0, Lm1/f0;->B:Lb3/m;

    const/4 v0, 0x3

    iput v0, p0, Lm1/f0;->C:I

    return-void
.end method


# virtual methods
.method public final S()F
    .locals 0

    iget-object p0, p0, Lm1/f0;->A:Lb3/c;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lm1/f0;->A:Lb3/c;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lm1/f0;->i(F)V

    invoke-virtual {p0, v0}, Lm1/f0;->j(F)V

    invoke-virtual {p0, v0}, Lm1/f0;->c(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm1/f0;->u(F)V

    invoke-virtual {p0, v0}, Lm1/f0;->k(F)V

    sget-wide v1, Lm1/w;->a:J

    invoke-virtual {p0, v1, v2}, Lm1/f0;->e(J)V

    invoke-virtual {p0, v1, v2}, Lm1/f0;->o(J)V

    iget v1, p0, Lm1/f0;->t:F

    cmpg-float v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lm1/f0;->l:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lm1/f0;->l:I

    iput v0, p0, Lm1/f0;->t:F

    :goto_0
    iget v0, p0, Lm1/f0;->u:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lm1/f0;->l:I

    iput v1, p0, Lm1/f0;->u:F

    :goto_1
    sget-wide v0, Lm1/k0;->b:J

    invoke-virtual {p0, v0, v1}, Lm1/f0;->p(J)V

    sget-object v0, Lm1/v;->b:Lm1/e0;

    invoke-virtual {p0, v0}, Lm1/f0;->l(Lm1/h0;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm1/f0;->f(Z)V

    iget v1, p0, Lm1/f0;->C:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lm1/f0;->l:I

    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    iput v1, p0, Lm1/f0;->l:I

    iput v2, p0, Lm1/f0;->C:I

    :goto_2
    iget v1, p0, Lm1/f0;->y:I

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Lm1/f0;->l:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lm1/f0;->l:I

    iput v0, p0, Lm1/f0;->y:I

    :goto_3
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v1, p0, Lm1/f0;->z:J

    const/4 v1, 0x0

    iput-object v1, p0, Lm1/f0;->D:Lm1/v;

    iput v0, p0, Lm1/f0;->l:I

    return-void
.end method

.method public final c(F)V
    .locals 1

    iget v0, p0, Lm1/f0;->o:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lm1/f0;->l:I

    iput p1, p0, Lm1/f0;->o:F

    return-void
.end method

.method public final e(J)V
    .locals 2

    iget-wide v0, p0, Lm1/f0;->r:J

    invoke-static {v0, v1, p1, p2}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lm1/f0;->l:I

    iput-wide p1, p0, Lm1/f0;->r:J

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lm1/f0;->x:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lm1/f0;->l:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lm1/f0;->l:I

    iput-boolean p1, p0, Lm1/f0;->x:Z

    :cond_0
    return-void
.end method

.method public final i(F)V
    .locals 1

    iget v0, p0, Lm1/f0;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm1/f0;->l:I

    iput p1, p0, Lm1/f0;->m:F

    return-void
.end method

.method public final j(F)V
    .locals 1

    iget v0, p0, Lm1/f0;->n:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lm1/f0;->l:I

    iput p1, p0, Lm1/f0;->n:F

    return-void
.end method

.method public final k(F)V
    .locals 1

    iget v0, p0, Lm1/f0;->q:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lm1/f0;->l:I

    iput p1, p0, Lm1/f0;->q:F

    return-void
.end method

.method public final l(Lm1/h0;)V
    .locals 1

    iget-object v0, p0, Lm1/f0;->w:Lm1/h0;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lm1/f0;->l:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lm1/f0;->l:I

    iput-object p1, p0, Lm1/f0;->w:Lm1/h0;

    :cond_0
    return-void
.end method

.method public final o(J)V
    .locals 2

    iget-wide v0, p0, Lm1/f0;->s:J

    invoke-static {v0, v1, p1, p2}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lm1/f0;->l:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lm1/f0;->l:I

    iput-wide p1, p0, Lm1/f0;->s:J

    :cond_0
    return-void
.end method

.method public final p(J)V
    .locals 2

    iget-wide v0, p0, Lm1/f0;->v:J

    invoke-static {v0, v1, p1, p2}, Lm1/k0;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lm1/f0;->l:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lm1/f0;->l:I

    iput-wide p1, p0, Lm1/f0;->v:J

    :cond_0
    return-void
.end method

.method public final u(F)V
    .locals 1

    iget v0, p0, Lm1/f0;->p:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm1/f0;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lm1/f0;->l:I

    iput p1, p0, Lm1/f0;->p:F

    return-void
.end method
