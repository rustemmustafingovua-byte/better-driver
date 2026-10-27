.class final Lz/a;
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

.field public final c:Lp/e1;

.field public final d:Z

.field public final e:Lm2/h;

.field public final f:Li9/a;


# direct methods
.method public constructor <init>(ZLs/i;Lp/e1;ZLm2/h;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz/a;->a:Z

    iput-object p2, p0, Lz/a;->b:Ls/i;

    iput-object p3, p0, Lz/a;->c:Lp/e1;

    iput-boolean p4, p0, Lz/a;->d:Z

    iput-object p5, p0, Lz/a;->e:Lm2/h;

    iput-object p6, p0, Lz/a;->f:Li9/a;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 8

    new-instance v0, Lz/d;

    iget-object v7, p0, Lz/a;->f:Li9/a;

    const/4 v5, 0x0

    iget-object v1, p0, Lz/a;->b:Ls/i;

    iget-object v2, p0, Lz/a;->c:Lp/e1;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lz/a;->d:Z

    iget-object v6, p0, Lz/a;->e:Lm2/h;

    invoke-direct/range {v0 .. v7}, Lp/g;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    iget-boolean p0, p0, Lz/a;->a:Z

    iput-boolean p0, v0, Lz/d;->Y:Z

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
    const-class v0, Lz/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lz/a;

    iget-boolean v0, p0, Lz/a;->a:Z

    iget-boolean v1, p1, Lz/a;->a:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lz/a;->b:Ls/i;

    iget-object v1, p1, Lz/a;->b:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lz/a;->c:Lp/e1;

    iget-object v1, p1, Lz/a;->c:Lp/e1;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lz/a;->d:Z

    iget-boolean v1, p1, Lz/a;->d:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lz/a;->e:Lm2/h;

    iget-object v1, p1, Lz/a;->e:Lm2/h;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lz/a;->f:Li9/a;

    iget-object p1, p1, Lz/a;->f:Li9/a;

    if-eq p0, p1, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lz/d;

    iget-boolean p1, v0, Lz/d;->Y:Z

    iget-boolean v1, p0, Lz/a;->a:Z

    if-eq p1, v1, :cond_0

    iput-boolean v1, v0, Lz/d;->Y:Z

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    :cond_0
    const/4 v5, 0x0

    iget-object v1, p0, Lz/a;->b:Ls/i;

    iget-object v2, p0, Lz/a;->c:Lp/e1;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lz/a;->d:Z

    iget-object v6, p0, Lz/a;->e:Lm2/h;

    iget-object v7, p0, Lz/a;->f:Li9/a;

    invoke-virtual/range {v0 .. v7}, Lp/g;->a1(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lz/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lz/a;->b:Ls/i;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lz/a;->c:Lp/e1;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lp/e1;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lz/a;->d:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lz/a;->e:Lm2/h;

    if-eqz v3, :cond_2

    iget v2, v3, Lm2/h;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lz/a;->f:Li9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
