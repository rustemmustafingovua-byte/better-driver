.class public final Ll0/f;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lp2/g;

.field public final b:Lp2/m0;

.field public final c:Lt2/d;

.field public final d:Li9/c;

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/List;

.field public final j:Li9/c;

.field public final k:Ll0/i;


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/f;->a:Lp2/g;

    iput-object p2, p0, Ll0/f;->b:Lp2/m0;

    iput-object p3, p0, Ll0/f;->c:Lt2/d;

    iput-object p4, p0, Ll0/f;->d:Li9/c;

    iput p5, p0, Ll0/f;->e:I

    iput-boolean p6, p0, Ll0/f;->f:Z

    iput p7, p0, Ll0/f;->g:I

    iput p8, p0, Ll0/f;->h:I

    iput-object p9, p0, Ll0/f;->i:Ljava/util/List;

    iput-object p10, p0, Ll0/f;->j:Li9/c;

    iput-object p11, p0, Ll0/f;->k:Ll0/i;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 12

    new-instance v0, Ll0/g;

    iget-object v10, p0, Ll0/f;->j:Li9/c;

    iget-object v11, p0, Ll0/f;->k:Ll0/i;

    iget-object v1, p0, Ll0/f;->a:Lp2/g;

    iget-object v2, p0, Ll0/f;->b:Lp2/m0;

    iget-object v3, p0, Ll0/f;->c:Lt2/d;

    iget-object v4, p0, Ll0/f;->d:Li9/c;

    iget v5, p0, Ll0/f;->e:I

    iget-boolean v6, p0, Ll0/f;->f:Z

    iget v7, p0, Ll0/f;->g:I

    iget v8, p0, Ll0/f;->h:I

    iget-object v9, p0, Ll0/f;->i:Ljava/util/List;

    invoke-direct/range {v0 .. v11}, Ll0/g;-><init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Ll0/f;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Ll0/f;

    iget-object v0, p0, Ll0/f;->a:Lp2/g;

    iget-object v1, p1, Ll0/f;->a:Lp2/g;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ll0/f;->b:Lp2/m0;

    iget-object v1, p1, Ll0/f;->b:Lp2/m0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ll0/f;->i:Ljava/util/List;

    iget-object v1, p1, Ll0/f;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ll0/f;->c:Lt2/d;

    iget-object v1, p1, Ll0/f;->c:Lt2/d;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ll0/f;->d:Li9/c;

    iget-object v1, p1, Ll0/f;->d:Li9/c;

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p0, Ll0/f;->e:I

    iget v1, p1, Ll0/f;->e:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Ll0/f;->f:Z

    iget-boolean v1, p1, Ll0/f;->f:Z

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget v0, p0, Ll0/f;->g:I

    iget v1, p1, Ll0/f;->g:I

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget v0, p0, Ll0/f;->h:I

    iget v1, p1, Ll0/f;->h:I

    if-eq v0, v1, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Ll0/f;->j:Li9/c;

    iget-object v1, p1, Ll0/f;->j:Li9/c;

    if-eq v0, v1, :cond_a

    goto :goto_1

    :cond_a
    iget-object p0, p0, Ll0/f;->k:Ll0/i;

    iget-object p1, p1, Ll0/f;->k:Ll0/i;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_c
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 11

    check-cast p1, Ll0/g;

    iget-object v0, p1, Ll0/g;->C:Ll0/q;

    iget-object v1, v0, Ll0/q;->A:Lp2/m0;

    iget-object v3, p0, Ll0/f;->b:Lp2/m0;

    if-eq v3, v1, :cond_1

    iget-object v2, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v1, v1, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {v2, v1}, Lp2/e0;->b(Lp2/e0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Ll0/f;->a:Lp2/g;

    invoke-virtual {v0, v2}, Ll0/q;->R0(Lp2/g;)Z

    move-result v10

    iget-object v2, p1, Ll0/g;->C:Ll0/q;

    iget-object v4, p0, Ll0/f;->i:Ljava/util/List;

    iget v5, p0, Ll0/f;->h:I

    iget v6, p0, Ll0/f;->g:I

    iget-boolean v7, p0, Ll0/f;->f:Z

    iget-object v8, p0, Ll0/f;->c:Lt2/d;

    iget v9, p0, Ll0/f;->e:I

    invoke-virtual/range {v2 .. v9}, Ll0/q;->Q0(Lp2/m0;Ljava/util/List;IIZLt2/d;I)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Ll0/f;->d:Li9/c;

    iget-object v5, p0, Ll0/f;->j:Li9/c;

    iget-object p0, p0, Ll0/f;->k:Ll0/i;

    invoke-virtual {v0, v4, v5, p0, v3}, Ll0/q;->P0(Li9/c;Li9/c;Ll0/i;Li9/c;)Z

    move-result v3

    invoke-virtual {v0, v1, v10, v2, v3}, Ll0/q;->M0(ZZZZ)V

    iput-object p0, p1, Ll0/g;->B:Ll0/i;

    invoke-static {p1}, Le2/l;->l(Le2/x;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Ll0/f;->a:Lp2/g;

    invoke-virtual {v0}, Lp2/g;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ll0/f;->b:Lp2/m0;

    invoke-static {v0, v1, v2}, La6/q;->d(IILp2/m0;)I

    move-result v0

    iget-object v2, p0, Ll0/f;->c:Lt2/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Ll0/f;->d:Li9/c;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Ll0/f;->e:I

    invoke-static {v3, v2, v1}, Lm/a;->e(III)I

    move-result v2

    iget-boolean v3, p0, Ll0/f;->f:Z

    invoke-static {v2, v1, v3}, Lm/a;->g(IIZ)I

    move-result v2

    iget v3, p0, Ll0/f;->g:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Ll0/f;->h:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Ll0/f;->i:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Ll0/f;->j:Li9/c;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Ll0/f;->k:Ll0/i;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_3
    add-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3c1

    return v2
.end method
