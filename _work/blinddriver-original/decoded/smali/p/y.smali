.class final Lp/y;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Ls/i;

.field public final b:Lp/e1;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Li9/a;


# direct methods
.method public constructor <init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/y;->a:Ls/i;

    iput-object p2, p0, Lp/y;->b:Lp/e1;

    iput-boolean p3, p0, Lp/y;->c:Z

    iput-boolean p4, p0, Lp/y;->d:Z

    iput-object p5, p0, Lp/y;->e:Ljava/lang/String;

    iput-object p6, p0, Lp/y;->f:Li9/a;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 8

    new-instance v0, Lp/a0;

    const/4 v6, 0x0

    iget-object v7, p0, Lp/y;->f:Li9/a;

    iget-object v1, p0, Lp/y;->a:Ls/i;

    iget-object v2, p0, Lp/y;->b:Lp/e1;

    iget-boolean v3, p0, Lp/y;->c:Z

    iget-boolean v4, p0, Lp/y;->d:Z

    iget-object v5, p0, Lp/y;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lp/g;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

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
    const-class v0, Lp/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lp/y;

    iget-object v0, p0, Lp/y;->a:Ls/i;

    iget-object v1, p1, Lp/y;->a:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lp/y;->b:Lp/e1;

    iget-object v1, p1, Lp/y;->b:Lp/e1;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lp/y;->c:Z

    iget-boolean v1, p1, Lp/y;->c:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lp/y;->d:Z

    iget-boolean v1, p1, Lp/y;->d:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lp/y;->e:Ljava/lang/String;

    iget-object v1, p1, Lp/y;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lp/y;->f:Li9/a;

    iget-object p1, p1, Lp/y;->f:Li9/a;

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

    check-cast v0, Lp/a0;

    const/4 v6, 0x0

    iget-object v7, p0, Lp/y;->f:Li9/a;

    iget-object v1, p0, Lp/y;->a:Ls/i;

    iget-object v2, p0, Lp/y;->b:Lp/e1;

    iget-boolean v3, p0, Lp/y;->c:Z

    iget-boolean v4, p0, Lp/y;->d:Z

    iget-object v5, p0, Lp/y;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lp/g;->a1(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    return-void
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lp/y;->a:Ls/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lp/y;->b:Lp/e1;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lp/e1;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lp/y;->c:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lp/y;->d:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object v2, p0, Lp/y;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_2
    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object p0, p0, Lp/y;->f:Li9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
