.class public final Ll0/r;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lp2/m0;

.field public final c:Lt2/d;

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp2/m0;Lt2/d;IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/r;->a:Ljava/lang/String;

    iput-object p2, p0, Ll0/r;->b:Lp2/m0;

    iput-object p3, p0, Ll0/r;->c:Lt2/d;

    iput p4, p0, Ll0/r;->d:I

    iput-boolean p5, p0, Ll0/r;->e:Z

    iput p6, p0, Ll0/r;->f:I

    iput p7, p0, Ll0/r;->g:I

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 2

    new-instance v0, Ll0/u;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object v1, p0, Ll0/r;->a:Ljava/lang/String;

    iput-object v1, v0, Ll0/u;->z:Ljava/lang/String;

    iget-object v1, p0, Ll0/r;->b:Lp2/m0;

    iput-object v1, v0, Ll0/u;->A:Lp2/m0;

    iget-object v1, p0, Ll0/r;->c:Lt2/d;

    iput-object v1, v0, Ll0/u;->B:Lt2/d;

    iget v1, p0, Ll0/r;->d:I

    iput v1, v0, Ll0/u;->C:I

    iget-boolean v1, p0, Ll0/r;->e:Z

    iput-boolean v1, v0, Ll0/u;->D:Z

    iget v1, p0, Ll0/r;->f:I

    iput v1, v0, Ll0/u;->E:I

    iget p0, p0, Ll0/r;->g:I

    iput p0, v0, Ll0/u;->F:I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ll0/r;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ll0/r;

    iget-object v0, p0, Ll0/r;->a:Ljava/lang/String;

    iget-object v1, p1, Ll0/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ll0/r;->b:Lp2/m0;

    iget-object v1, p1, Ll0/r;->b:Lp2/m0;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ll0/r;->c:Lt2/d;

    iget-object v1, p1, Ll0/r;->c:Lt2/d;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Ll0/r;->d:I

    iget v1, p1, Ll0/r;->d:I

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Ll0/r;->e:Z

    iget-boolean v1, p1, Ll0/r;->e:Z

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Ll0/r;->f:I

    iget v1, p1, Ll0/r;->f:I

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget p0, p0, Ll0/r;->g:I

    iget p1, p1, Ll0/r;->g:I

    if-eq p0, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 10

    check-cast p1, Ll0/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Ll0/u;->A:Lp2/m0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Ll0/r;->b:Lp2/m0;

    if-eq v3, v0, :cond_1

    iget-object v4, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v0, v0, Lp2/m0;->a:Lp2/e0;

    invoke-virtual {v4, v0}, Lp2/e0;->b(Lp2/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move v0, v1

    :goto_1
    iget-object v4, p1, Ll0/u;->z:Ljava/lang/String;

    iget-object v5, p0, Ll0/r;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iput-object v5, p1, Ll0/u;->z:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p1, Ll0/u;->J:Ll0/t;

    move v1, v2

    :goto_2
    iget-object v4, p1, Ll0/u;->A:Lp2/m0;

    invoke-virtual {v4, v3}, Lp2/m0;->c(Lp2/m0;)Z

    move-result v4

    xor-int/2addr v4, v2

    iput-object v3, p1, Ll0/u;->A:Lp2/m0;

    iget v3, p1, Ll0/u;->F:I

    iget v5, p0, Ll0/r;->g:I

    if-eq v3, v5, :cond_3

    iput v5, p1, Ll0/u;->F:I

    move v4, v2

    :cond_3
    iget v3, p1, Ll0/u;->E:I

    iget v5, p0, Ll0/r;->f:I

    if-eq v3, v5, :cond_4

    iput v5, p1, Ll0/u;->E:I

    move v4, v2

    :cond_4
    iget-boolean v3, p1, Ll0/u;->D:Z

    iget-boolean v5, p0, Ll0/r;->e:Z

    if-eq v3, v5, :cond_5

    iput-boolean v5, p1, Ll0/u;->D:Z

    move v4, v2

    :cond_5
    iget-object v3, p1, Ll0/u;->B:Lt2/d;

    iget-object v5, p0, Ll0/r;->c:Lt2/d;

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v5, p1, Ll0/u;->B:Lt2/d;

    move v4, v2

    :cond_6
    iget v3, p1, Ll0/u;->C:I

    iget p0, p0, Ll0/r;->d:I

    if-ne v3, p0, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    iput p0, p1, Ll0/u;->C:I

    :goto_3
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Ll0/u;->M0()Ll0/e;

    move-result-object p0

    iget-object v3, p1, Ll0/u;->z:Ljava/lang/String;

    iget-object v4, p1, Ll0/u;->A:Lp2/m0;

    iget-object v5, p1, Ll0/u;->B:Lt2/d;

    iget v6, p1, Ll0/u;->C:I

    iget-boolean v7, p1, Ll0/u;->D:Z

    iget v8, p1, Ll0/u;->E:I

    iget v9, p1, Ll0/u;->F:I

    iput-object v3, p0, Ll0/e;->a:Ljava/lang/String;

    iput-object v4, p0, Ll0/e;->b:Lp2/m0;

    iput-object v5, p0, Ll0/e;->c:Lt2/d;

    iput v6, p0, Ll0/e;->d:I

    iput-boolean v7, p0, Ll0/e;->e:Z

    iput v8, p0, Ll0/e;->f:I

    iput v9, p0, Ll0/e;->g:I

    iget-wide v3, p0, Ll0/e;->s:J

    const/4 v5, 0x2

    shl-long/2addr v3, v5

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    iput-wide v3, p0, Ll0/e;->s:J

    invoke-virtual {p0}, Ll0/e;->c()V

    :cond_9
    iget-boolean p0, p1, Lf1/q;->y:Z

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    if-nez v1, :cond_b

    if-eqz v0, :cond_c

    iget-object p0, p1, Ll0/u;->I:Ll0/s;

    if-eqz p0, :cond_c

    :cond_b
    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    :cond_c
    if-nez v1, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    invoke-static {p1}, Le2/l;->l(Le2/x;)V

    invoke-static {p1}, Le2/l;->k(Le2/n;)V

    :cond_e
    if-eqz v0, :cond_f

    invoke-static {p1}, Le2/l;->k(Le2/n;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ll0/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ll0/r;->b:Lp2/m0;

    invoke-static {v0, v1, v2}, La6/q;->d(IILp2/m0;)I

    move-result v0

    iget-object v2, p0, Ll0/r;->c:Lt2/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Ll0/r;->d:I

    invoke-static {v0, v2, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Ll0/r;->e:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget v2, p0, Ll0/r;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Ll0/r;->g:I

    add-int/2addr v0, p0

    mul-int/2addr v0, v1

    return v0
.end method
