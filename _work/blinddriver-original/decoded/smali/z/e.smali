.class final Lz/e;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ls/i;

.field public final c:Z

.field public final d:Lm2/h;

.field public final e:Li9/c;


# direct methods
.method public constructor <init>(ZLs/i;ZLm2/h;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz/e;->a:Z

    iput-object p2, p0, Lz/e;->b:Ls/i;

    iput-boolean p3, p0, Lz/e;->c:Z

    iput-object p4, p0, Lz/e;->d:Lm2/h;

    iput-object p5, p0, Lz/e;->e:Li9/c;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 6

    new-instance v0, Lz/h;

    iget-object v4, p0, Lz/e;->d:Lm2/h;

    iget-object v5, p0, Lz/e;->e:Li9/c;

    iget-boolean v1, p0, Lz/e;->a:Z

    iget-object v2, p0, Lz/e;->b:Ls/i;

    iget-boolean v3, p0, Lz/e;->c:Z

    invoke-direct/range {v0 .. v5}, Lz/h;-><init>(ZLs/i;ZLm2/h;Li9/c;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lz/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lz/e;

    iget-boolean v0, p0, Lz/e;->a:Z

    iget-boolean v1, p1, Lz/e;->a:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz/e;->b:Ls/i;

    iget-object v1, p1, Lz/e;->b:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lz/e;->c:Z

    iget-boolean v1, p1, Lz/e;->c:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lz/e;->d:Lm2/h;

    iget-object v1, p1, Lz/e;->d:Lm2/h;

    invoke-virtual {v0, v1}, Lm2/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lz/e;->e:Li9/c;

    iget-object p1, p1, Lz/e;->e:Li9/c;

    if-eq p0, p1, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lz/h;

    iget-boolean p1, v0, Lz/h;->Y:Z

    iget-boolean v1, p0, Lz/e;->a:Z

    if-eq p1, v1, :cond_0

    iput-boolean v1, v0, Lz/h;->Y:Z

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    :cond_0
    iget-object p1, p0, Lz/e;->e:Li9/c;

    iput-object p1, v0, Lz/h;->Z:Li9/c;

    const/4 v5, 0x0

    iget-object v7, v0, Lz/h;->a0:Lod/x4;

    iget-object v1, p0, Lz/e;->b:Ls/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lz/e;->c:Z

    iget-object v6, p0, Lz/e;->d:Lm2/h;

    invoke-virtual/range {v0 .. v7}, Lp/g;->a1(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lz/e;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lz/e;->b:Ls/i;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lz/e;->c:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lz/e;->d:Lm2/h;

    iget v2, v2, Lm2/h;->a:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lz/e;->e:Li9/c;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
