.class public final Ll0/n;
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

.field public final k:Li9/c;


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/n;->a:Lp2/g;

    iput-object p2, p0, Ll0/n;->b:Lp2/m0;

    iput-object p3, p0, Ll0/n;->c:Lt2/d;

    iput-object p4, p0, Ll0/n;->d:Li9/c;

    iput p5, p0, Ll0/n;->e:I

    iput-boolean p6, p0, Ll0/n;->f:Z

    iput p7, p0, Ll0/n;->g:I

    iput p8, p0, Ll0/n;->h:I

    iput-object p9, p0, Ll0/n;->i:Ljava/util/List;

    iput-object p10, p0, Ll0/n;->j:Li9/c;

    iput-object p11, p0, Ll0/n;->k:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 13

    new-instance v0, Ll0/q;

    const/4 v11, 0x0

    iget-object v12, p0, Ll0/n;->k:Li9/c;

    iget-object v1, p0, Ll0/n;->a:Lp2/g;

    iget-object v2, p0, Ll0/n;->b:Lp2/m0;

    iget-object v3, p0, Ll0/n;->c:Lt2/d;

    iget-object v4, p0, Ll0/n;->d:Li9/c;

    iget v5, p0, Ll0/n;->e:I

    iget-boolean v6, p0, Ll0/n;->f:Z

    iget v7, p0, Ll0/n;->g:I

    iget v8, p0, Ll0/n;->h:I

    iget-object v9, p0, Ll0/n;->i:Ljava/util/List;

    iget-object v10, p0, Ll0/n;->j:Li9/c;

    invoke-direct/range {v0 .. v12}, Ll0/q;-><init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Ll0/n;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Ll0/n;

    iget-object v0, p0, Ll0/n;->a:Lp2/g;

    iget-object v1, p1, Ll0/n;->a:Lp2/g;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ll0/n;->b:Lp2/m0;

    iget-object v1, p1, Ll0/n;->b:Lp2/m0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ll0/n;->i:Ljava/util/List;

    iget-object v1, p1, Ll0/n;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ll0/n;->c:Lt2/d;

    iget-object v1, p1, Ll0/n;->c:Lt2/d;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ll0/n;->d:Li9/c;

    iget-object v1, p1, Ll0/n;->d:Li9/c;

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ll0/n;->k:Li9/c;

    iget-object v1, p1, Ll0/n;->k:Li9/c;

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget v0, p0, Ll0/n;->e:I

    iget v1, p1, Ll0/n;->e:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Ll0/n;->f:Z

    iget-boolean v1, p1, Ll0/n;->f:Z

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget v0, p0, Ll0/n;->g:I

    iget v1, p1, Ll0/n;->g:I

    if-eq v0, v1, :cond_9

    goto :goto_1

    :cond_9
    iget v0, p0, Ll0/n;->h:I

    iget v1, p1, Ll0/n;->h:I

    if-eq v0, v1, :cond_a

    goto :goto_1

    :cond_a
    iget-object p0, p0, Ll0/n;->j:Li9/c;

    iget-object p1, p1, Ll0/n;->j:Li9/c;

    if-eq p0, p1, :cond_b

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
    .locals 9

    move-object v0, p1

    check-cast v0, Ll0/q;

    iget-object p1, v0, Ll0/q;->A:Lp2/m0;

    iget-object v1, p0, Ll0/n;->b:Lp2/m0;

    if-eq v1, p1, :cond_1

    iget-object v1, v1, Lp2/m0;->a:Lp2/e0;

    iget-object p1, p1, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {v1, p1}, Lp2/e0;->b(Lp2/e0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Ll0/n;->a:Lp2/g;

    invoke-virtual {v0, v1}, Ll0/q;->R0(Lp2/g;)Z

    move-result v8

    iget-object v6, p0, Ll0/n;->c:Lt2/d;

    iget v7, p0, Ll0/n;->e:I

    iget-object v1, p0, Ll0/n;->b:Lp2/m0;

    iget-object v2, p0, Ll0/n;->i:Ljava/util/List;

    iget v3, p0, Ll0/n;->h:I

    iget v4, p0, Ll0/n;->g:I

    iget-boolean v5, p0, Ll0/n;->f:Z

    invoke-virtual/range {v0 .. v7}, Ll0/q;->Q0(Lp2/m0;Ljava/util/List;IIZLt2/d;I)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Ll0/n;->k:Li9/c;

    iget-object v4, p0, Ll0/n;->d:Li9/c;

    iget-object p0, p0, Ll0/n;->j:Li9/c;

    invoke-virtual {v0, v4, p0, v2, v3}, Ll0/q;->P0(Li9/c;Li9/c;Ll0/i;Li9/c;)Z

    move-result p0

    invoke-virtual {v0, p1, v8, v1, p0}, Ll0/q;->M0(ZZZZ)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Ll0/n;->a:Lp2/g;

    invoke-virtual {v0}, Lp2/g;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ll0/n;->b:Lp2/m0;

    invoke-static {v0, v1, v2}, La6/q;->d(IILp2/m0;)I

    move-result v0

    iget-object v2, p0, Ll0/n;->c:Lt2/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Ll0/n;->d:Li9/c;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Ll0/n;->e:I

    invoke-static {v3, v2, v1}, Lm/a;->e(III)I

    move-result v2

    iget-boolean v3, p0, Ll0/n;->f:Z

    invoke-static {v2, v1, v3}, Lm/a;->g(IIZ)I

    move-result v2

    iget v3, p0, Ll0/n;->g:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Ll0/n;->h:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Ll0/n;->i:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v1, p0, Ll0/n;->j:Li9/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x745f

    iget-object p0, p0, Ll0/n;->k:Li9/c;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_3
    add-int/2addr v2, v0

    return v2
.end method
