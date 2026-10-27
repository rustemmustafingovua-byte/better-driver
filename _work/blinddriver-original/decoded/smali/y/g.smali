.class public final Ly/g;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Lj2/a;
.implements Le2/w;


# instance fields
.field public A:Z

.field public z:Lr/i;


# direct methods
.method public static final M0(Ly/g;Le2/h1;Ld5/a;)Ll1/c;
    .locals 2

    iget-boolean v0, p0, Lf1/q;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Ly/g;->A:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    invoke-virtual {p1}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ld5/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll1/c;

    if-nez p2, :cond_4

    :goto_1
    return-object v1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le2/h1;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    invoke-virtual {p0}, Ll1/c;->e()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ll1/c;->j(J)Ll1/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final U(Le2/h1;Ld5/a;La9/c;)Ljava/lang/Object;
    .locals 6

    new-instance v4, Lb0/c3;

    const/16 v0, 0x12

    invoke-direct {v4, p0, p1, p2, v0}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lod/g2;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lod/g2;-><init>(Ly/g;Le2/h1;Ld5/a;Lb0/c3;Ly8/c;)V

    invoke-static {v0, p3}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final u(Lc2/u;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly/g;->A:Z

    return-void
.end method
