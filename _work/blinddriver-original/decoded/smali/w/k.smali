.class public final Lw/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s0;


# instance fields
.field public final a:Lw/l;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Lc2/s0;

.field public final f:F

.field public final g:Z

.field public final h:Lu9/t;

.field public final i:Lb3/c;

.field public final j:J

.field public final k:Ljava/lang/Object;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Lr/m1;

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Lw/l;IZFLc2/s0;FZLu9/t;Lb3/c;JLjava/util/List;IIILr/m1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/k;->a:Lw/l;

    iput p2, p0, Lw/k;->b:I

    iput-boolean p3, p0, Lw/k;->c:Z

    iput p4, p0, Lw/k;->d:F

    iput-object p5, p0, Lw/k;->e:Lc2/s0;

    iput p6, p0, Lw/k;->f:F

    iput-boolean p7, p0, Lw/k;->g:Z

    iput-object p8, p0, Lw/k;->h:Lu9/t;

    iput-object p9, p0, Lw/k;->i:Lb3/c;

    iput-wide p10, p0, Lw/k;->j:J

    iput-object p12, p0, Lw/k;->k:Ljava/lang/Object;

    iput p13, p0, Lw/k;->l:I

    iput p14, p0, Lw/k;->m:I

    iput p15, p0, Lw/k;->n:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lw/k;->o:Lr/m1;

    move/from16 p1, p17

    iput p1, p0, Lw/k;->p:I

    move/from16 p1, p18

    iput p1, p0, Lw/k;->q:I

    return-void
.end method


# virtual methods
.method public final a(IZ)Lw/k;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lw/k;->g:Z

    if-nez v2, :cond_b

    iget-object v15, v0, Lw/k;->k:Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lw/k;->a:Lw/l;

    if-eqz v2, :cond_b

    iget v2, v2, Lw/l;->n:I

    iget v3, v0, Lw/k;->b:I

    sub-int v5, v3, v1

    if-ltz v5, :cond_b

    if-ge v5, v2, :cond_b

    invoke-static {v15}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/l;

    invoke-static {v15}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    iget-boolean v4, v2, Lw/l;->p:Z

    if-nez v4, :cond_b

    iget-boolean v4, v3, Lw/l;->p:Z

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v4, v0, Lw/k;->m:I

    iget v6, v0, Lw/k;->l:I

    if-gez v1, :cond_1

    iget v7, v2, Lw/l;->l:I

    iget v2, v2, Lw/l;->n:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v6

    iget v2, v3, Lw/l;->l:I

    iget v3, v3, Lw/l;->n:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v3, v1

    if-le v2, v3, :cond_b

    goto :goto_0

    :cond_1
    iget v2, v2, Lw/l;->l:I

    sub-int/2addr v6, v2

    iget v2, v3, Lw/l;->l:I

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_b

    :goto_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_8

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw/l;

    iget-boolean v7, v6, Lw/l;->c:Z

    iget-object v8, v6, Lw/l;->r:[I

    iget-boolean v9, v6, Lw/l;->p:Z

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v6, Lw/l;->l:I

    add-int/2addr v9, v1

    iput v9, v6, Lw/l;->l:I

    array-length v9, v8

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_6

    and-int/lit8 v11, v10, 0x1

    if-eqz v7, :cond_3

    if-nez v11, :cond_4

    :cond_3
    if-nez v7, :cond_5

    if-nez v11, :cond_5

    :cond_4
    aget v11, v8, v10

    add-int/2addr v11, v1

    aput v11, v8, v10

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    iget-object v7, v6, Lw/l;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_3
    if-ge v8, v7, :cond_7

    iget-object v9, v6, Lw/l;->k:Lx/s;

    iget-object v10, v6, Lw/l;->i:Ljava/lang/Object;

    iget-object v9, v9, Lx/s;->a:Lk/m0;

    invoke-virtual {v9, v10}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lr0/i;->p(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    new-instance v2, Lw/k;

    iget-boolean v4, v0, Lw/k;->c:Z

    if-nez v4, :cond_a

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v3

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v3, 0x1

    goto :goto_5

    :goto_7
    int-to-float v7, v1

    iget v1, v0, Lw/k;->p:I

    iget v3, v0, Lw/k;->q:I

    iget-object v4, v0, Lw/k;->a:Lw/l;

    iget-object v8, v0, Lw/k;->e:Lc2/s0;

    iget v9, v0, Lw/k;->f:F

    iget-boolean v10, v0, Lw/k;->g:Z

    iget-object v11, v0, Lw/k;->h:Lu9/t;

    iget-object v12, v0, Lw/k;->i:Lb3/c;

    iget-wide v13, v0, Lw/k;->j:J

    move/from16 v20, v1

    iget v1, v0, Lw/k;->l:I

    move/from16 v16, v1

    iget v1, v0, Lw/k;->m:I

    move/from16 v17, v1

    iget v1, v0, Lw/k;->n:I

    iget-object v0, v0, Lw/k;->o:Lr/m1;

    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v21, v3

    move-object v3, v2

    invoke-direct/range {v3 .. v21}, Lw/k;-><init>(Lw/l;IZFLc2/s0;FZLu9/t;Lb3/c;JLjava/util/List;IIILr/m1;II)V

    return-object v3

    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->c()V

    return-void
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public final f()Li9/c;
    .locals 0

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->f()Li9/c;

    move-result-object p0

    return-object p0
.end method

.method public final g()J
    .locals 6

    iget-object p0, p0, Lw/k;->e:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result v0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
