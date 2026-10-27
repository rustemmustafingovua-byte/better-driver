.class public final Ll0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lp2/g;

.field public b:Lt2/d;

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Ll0/b;

.field public i:J

.field public j:Lb3/c;

.field public k:Lp2/m0;

.field public l:Landroidx/lifecycle/a1;

.field public m:Lb3/m;

.field public n:Lp2/j0;

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;Lt2/d;IZIILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/d;->a:Lp2/g;

    iput-object p3, p0, Ll0/d;->b:Lt2/d;

    iput p4, p0, Ll0/d;->c:I

    iput-boolean p5, p0, Ll0/d;->d:Z

    iput p6, p0, Ll0/d;->e:I

    iput p7, p0, Ll0/d;->f:I

    iput-object p8, p0, Ll0/d;->g:Ljava/util/List;

    sget-wide p3, Ll0/a;->a:J

    iput-wide p3, p0, Ll0/d;->i:J

    iput-object p2, p0, Ll0/d;->k:Lp2/m0;

    const/4 p1, -0x1

    iput p1, p0, Ll0/d;->o:I

    iput p1, p0, Ll0/d;->p:I

    return-void
.end method


# virtual methods
.method public final a(ILb3/m;)I
    .locals 6

    iget v0, p0, Ll0/d;->o:I

    iget v1, p0, Ll0/d;->p:I

    if-ne p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {v1, p1, v1, v0}, Lb3/b;->a(IIII)J

    move-result-wide v0

    iget v2, p0, Ll0/d;->f:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Ll0/d;->h:Ll0/b;

    iget-object v3, p0, Ll0/d;->k:Lp2/m0;

    iget-object v4, p0, Ll0/d;->j:Lb3/c;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v5, p0, Ll0/d;->b:Lt2/d;

    invoke-static {v2, p2, v3, v4, v5}, Lg6/c1;->n(Ll0/b;Lb3/m;Lp2/m0;Lb3/c;Lt2/d;)Ll0/b;

    move-result-object v2

    iput-object v2, p0, Ll0/d;->h:Ll0/b;

    iget v3, p0, Ll0/d;->f:I

    invoke-virtual {v2, v3, v0, v1}, Ll0/b;->a(IJ)J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0, v0, v1, p2}, Ll0/d;->b(JLb3/m;)Lp2/n;

    move-result-object p2

    iget p2, p2, Lp2/n;->e:F

    invoke-static {p2}, Lb0/n1;->o(F)I

    move-result p2

    invoke-static {v0, v1}, Lb3/a;->i(J)I

    move-result v0

    if-ge p2, v0, :cond_2

    move p2, v0

    :cond_2
    iput p1, p0, Ll0/d;->o:I

    iput p2, p0, Ll0/d;->p:I

    return p2
.end method

.method public final b(JLb3/m;)Lp2/n;
    .locals 6

    invoke-virtual {p0, p3}, Ll0/d;->e(Lb3/m;)Landroidx/lifecycle/a1;

    move-result-object v1

    new-instance v0, Lp2/n;

    iget-boolean p3, p0, Ll0/d;->d:Z

    iget v2, p0, Ll0/d;->c:I

    invoke-virtual {v1}, Landroidx/lifecycle/a1;->d()F

    move-result v3

    invoke-static {p1, p2, p3, v2, v3}, Lg5/f;->w(JZIF)J

    move-result-wide v2

    iget-boolean p1, p0, Ll0/d;->d:Z

    iget v5, p0, Ll0/d;->c:I

    iget p0, p0, Ll0/d;->e:I

    const/4 p2, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-ne v5, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    if-ne v5, p1, :cond_2

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_2
    if-ge p0, p2, :cond_3

    goto :goto_0

    :cond_3
    move v4, p0

    :goto_1
    invoke-direct/range {v0 .. v5}, Lp2/n;-><init>(Landroidx/lifecycle/a1;JII)V

    return-object v0
.end method

.method public final c(JLb3/m;)Z
    .locals 6

    iget-wide v0, p0, Ll0/d;->q:J

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x3

    or-long/2addr v0, v2

    iput-wide v0, p0, Ll0/d;->q:J

    iget v0, p0, Ll0/d;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ll0/d;->h:Ll0/b;

    iget-object v2, p0, Ll0/d;->k:Lp2/m0;

    iget-object v3, p0, Ll0/d;->j:Lb3/c;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Ll0/d;->b:Lt2/d;

    invoke-static {v0, p3, v2, v3, v4}, Lg6/c1;->n(Ll0/b;Lb3/m;Lp2/m0;Lb3/c;Lt2/d;)Ll0/b;

    move-result-object v0

    iput-object v0, p0, Ll0/d;->h:Ll0/b;

    iget v2, p0, Ll0/d;->f:I

    invoke-virtual {v0, v2, p1, p2}, Ll0/b;->a(IJ)J

    move-result-wide p1

    :cond_0
    iget-object v0, p0, Ll0/d;->n:Lp2/j0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lp2/j0;->b:Lp2/n;

    iget-object v0, v0, Lp2/j0;->a:Lp2/i0;

    iget-object v3, v2, Lp2/n;->a:Landroidx/lifecycle/a1;

    invoke-virtual {v3}, Landroidx/lifecycle/a1;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lp2/i0;->h:Lb3/m;

    iget-wide v4, v0, Lp2/i0;->j:J

    if-eq p3, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v4, v5}, Lb3/a;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-static {v4, v5}, Lb3/a;->h(J)I

    move-result v3

    if-eq v0, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, Lb3/a;->j(J)I

    move-result v0

    invoke-static {v4, v5}, Lb3/a;->j(J)I

    move-result v3

    if-eq v0, v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    int-to-float v0, v0

    iget v3, v2, Lp2/n;->e:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_9

    iget-boolean v0, v2, Lp2/n;->c:Z

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Ll0/d;->n:Lp2/j0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lp2/j0;->a:Lp2/i0;

    iget-wide v2, v0, Lp2/i0;->j:J

    invoke-static {p1, p2, v2, v3}, Lb3/a;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Ll0/d;->n:Lp2/j0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p0, p3, p1, p2, v0}, Ll0/d;->f(Lb3/m;JLp2/n;)Lp2/j0;

    move-result-object p1

    iput-object p1, p0, Ll0/d;->n:Lp2/j0;

    return v1

    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ll0/d;->b(JLb3/m;)Lp2/n;

    move-result-object v0

    invoke-virtual {p0, p3, p1, p2, v0}, Ll0/d;->f(Lb3/m;JLp2/n;)Lp2/j0;

    move-result-object p1

    iput-object p1, p0, Ll0/d;->n:Lp2/j0;

    return v1
.end method

.method public final d(Lb3/c;)V
    .locals 5

    iget-object v0, p0, Ll0/d;->j:Lb3/c;

    if-eqz p1, :cond_0

    sget v1, Ll0/a;->b:I

    invoke-interface {p1}, Lb3/c;->a()F

    move-result v1

    invoke-interface {p1}, Lb3/c;->S()F

    move-result v2

    invoke-static {v1, v2}, Ll0/a;->a(FF)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-wide v1, Ll0/a;->a:J

    :goto_0
    if-nez v0, :cond_1

    iput-object p1, p0, Ll0/d;->j:Lb3/c;

    iput-wide v1, p0, Ll0/d;->i:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v3, p0, Ll0/d;->i:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Ll0/d;->j:Lb3/c;

    iput-wide v1, p0, Ll0/d;->i:J

    iget-wide v0, p0, Ll0/d;->q:J

    const/4 p1, 0x2

    shl-long/2addr v0, p1

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Ll0/d;->q:J

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/d;->l:Landroidx/lifecycle/a1;

    iput-object p1, p0, Ll0/d;->n:Lp2/j0;

    const/4 p1, -0x1

    iput p1, p0, Ll0/d;->p:I

    iput p1, p0, Ll0/d;->o:I

    return-void
.end method

.method public final e(Lb3/m;)Landroidx/lifecycle/a1;
    .locals 8

    iget-object v0, p0, Ll0/d;->l:Landroidx/lifecycle/a1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll0/d;->m:Lb3/m;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/a1;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object p1, p0, Ll0/d;->m:Lb3/m;

    iget-object v3, p0, Ll0/d;->a:Lp2/g;

    iget-object v0, p0, Ll0/d;->k:Lp2/m0;

    invoke-static {v0, p1}, Lp2/d0;->h(Lp2/m0;Lb3/m;)Lp2/m0;

    move-result-object v4

    iget-object v6, p0, Ll0/d;->j:Lb3/c;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v7, p0, Ll0/d;->b:Lt2/d;

    iget-object p1, p0, Ll0/d;->g:Ljava/util/List;

    if-nez p1, :cond_1

    sget-object p1, Lu8/r;->l:Lu8/r;

    :cond_1
    move-object v5, p1

    new-instance v2, Landroidx/lifecycle/a1;

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/a1;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;Lb3/c;Lt2/d;)V

    move-object v0, v2

    :cond_2
    iput-object v0, p0, Ll0/d;->l:Landroidx/lifecycle/a1;

    return-object v0
.end method

.method public final f(Lb3/m;JLp2/n;)Lp2/j0;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v1, Lp2/n;->a:Landroidx/lifecycle/a1;

    invoke-virtual {v2}, Landroidx/lifecycle/a1;->d()F

    move-result v2

    iget v3, v1, Lp2/n;->d:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    new-instance v3, Lp2/j0;

    new-instance v4, Lp2/i0;

    iget-object v5, v0, Ll0/d;->a:Lp2/g;

    iget-object v6, v0, Ll0/d;->k:Lp2/m0;

    iget-object v7, v0, Ll0/d;->g:Ljava/util/List;

    if-nez v7, :cond_0

    sget-object v7, Lu8/r;->l:Lu8/r;

    :cond_0
    iget v8, v0, Ll0/d;->e:I

    iget-boolean v9, v0, Ll0/d;->d:Z

    iget v10, v0, Ll0/d;->c:I

    iget-object v11, v0, Ll0/d;->j:Lb3/c;

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v13, v0, Ll0/d;->b:Lt2/d;

    move-object/from16 v12, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v4 .. v15}, Lp2/i0;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;IZILb3/c;Lb3/m;Lt2/d;J)V

    invoke-static {v2}, Lb0/n1;->o(F)I

    move-result v0

    iget v2, v1, Lp2/n;->e:F

    invoke-static {v2}, Lb0/n1;->o(F)I

    move-result v2

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    int-to-long v7, v2

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    invoke-static {v14, v15, v5, v6}, Lb3/b;->d(JJ)J

    move-result-wide v5

    invoke-direct {v3, v4, v1, v5, v6}, Lp2/j0;-><init>(Lp2/i0;Lp2/n;J)V

    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiParagraphLayoutCache(textLayoutResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ll0/d;->n:Lp2/j0;

    const-string v2, "null"

    if-eqz v1, :cond_0

    const-string v1, "<TextLayoutResult>"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/d;->i:J

    invoke-static {v3, v4}, Ll0/a;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ll0/d;->q:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll0/d;->n:Lp2/j0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lp2/j0;->a:Lp2/i0;

    if-eqz p0, :cond_1

    iget-wide v1, p0, Lp2/i0;->j:J

    new-instance p0, Lb3/a;

    invoke-direct {p0, v1, v2}, Lb3/a;-><init>(J)V

    move-object v2, p0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
