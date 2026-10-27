.class public abstract Lf2/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf2/e2;->m:Lf2/e2;

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lf2/h2;->a:Lr0/s2;

    return-void
.end method

.method public static final a(Lk0/n;Landroidx/lifecycle/j0;La9/c;)V
    .locals 4

    instance-of v0, p2, Lf2/f2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf2/f2;

    iget v1, v0, Lf2/f2;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf2/f2;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf2/f2;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lf2/f2;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v1, v0, Lf2/f2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object p2, p0

    check-cast p2, Lf1/q;

    iget-object p2, p2, Lf1/q;->l:Lf1/q;

    iget-boolean p2, p2, Lf1/q;->y:Z

    if-eqz p2, :cond_4

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p2

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->N:Lr0/z;

    check-cast p0, Lz0/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lf2/h2;->a:Lr0/s2;

    invoke-static {p0, v1}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    iput v2, v0, Lf2/f2;->m:I

    invoke-static {p2, p1, v0}, Lf2/h2;->b(Le2/q1;Li9/e;La9/c;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "establishTextInputSession called from an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Le2/q1;Li9/e;La9/c;)V
    .locals 4

    instance-of v0, p2, Lf2/g2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf2/g2;

    iget v1, v0, Lf2/g2;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf2/g2;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf2/g2;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lf2/g2;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v1, v0, Lf2/g2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iput v2, v0, Lf2/g2;->m:I

    check-cast p0, Lf2/y;

    invoke-virtual {p0, p1, v0}, Lf2/y;->K(Li9/e;La9/c;)V

    return-void
.end method
