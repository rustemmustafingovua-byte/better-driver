.class final Lp/d0;
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

.field public final b:Z

.field public final c:Li9/a;

.field public final d:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;Li9/a;Ls/i;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lp/d0;->a:Ls/i;

    iput-boolean p4, p0, Lp/d0;->b:Z

    iput-object p1, p0, Lp/d0;->c:Li9/a;

    iput-object p2, p0, Lp/d0;->d:Li9/a;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 4

    new-instance v0, Lp/h0;

    iget-object v1, p0, Lp/d0;->a:Ls/i;

    iget-boolean v2, p0, Lp/d0;->b:Z

    iget-object v3, p0, Lp/d0;->c:Li9/a;

    iget-object p0, p0, Lp/d0;->d:Li9/a;

    invoke-direct {v0, v3, p0, v1, v2}, Lp/h0;-><init>(Li9/a;Li9/a;Ls/i;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v1, Lp/d0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lp/d0;

    iget-object v1, p0, Lp/d0;->a:Ls/i;

    iget-object v2, p1, Lp/d0;->a:Ls/i;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lp/d0;->b:Z

    iget-boolean v2, p1, Lp/d0;->b:Z

    if-eq v1, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lp/d0;->c:Li9/a;

    iget-object v2, p1, Lp/d0;->c:Li9/a;

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lp/d0;->d:Li9/a;

    iget-object p1, p1, Lp/d0;->d:Li9/a;

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lp/h0;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lp/h0;->Y:Z

    iget-object v1, v0, Lp/h0;->X:Li9/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lp/d0;->d:Li9/a;

    if-nez v3, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_2

    invoke-virtual {v0}, Lp/g;->S0()V

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    move v2, p1

    :cond_2
    iput-object v3, v0, Lp/h0;->X:Li9/a;

    iget-boolean v1, v0, Lp/g;->G:Z

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    iget-object v1, p0, Lp/d0;->a:Ls/i;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lp/d0;->b:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lp/d0;->c:Li9/a;

    invoke-virtual/range {v0 .. v7}, Lp/g;->a1(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    if-eqz p1, :cond_4

    iget-object p0, v0, Lp/g;->K:Ly1/k0;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ly1/k0;->O0()V

    :cond_4
    return-void
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lp/d0;->a:Ls/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit16 v1, v1, 0x3c1

    iget-boolean v2, p0, Lp/d0;->b:Z

    const/16 v3, 0x1f

    invoke-static {v1, v3, v2}, Lm/a;->g(IIZ)I

    move-result v1

    const/16 v2, 0x745f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object v2, p0, Lp/d0;->c:Li9/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3c1

    iget-object p0, p0, Lp/d0;->d:Li9/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3c1

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method
