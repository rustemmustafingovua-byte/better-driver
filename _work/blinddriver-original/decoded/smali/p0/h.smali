.class public abstract Lp0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp2/w;

.field public static b:Lr1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp2/w;

    new-instance v1, Lp2/u;

    invoke-direct {v1}, Lp2/u;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lp2/w;-><init>(Lp2/v;Lp2/u;)V

    sput-object v0, Lp0/h;->a:Lp2/w;

    return-void
.end method

.method public static final a(JLp2/m0;Li9/e;Lr0/q;I)V
    .locals 7

    const v0, -0x28d355e8

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0, p1}, Lr0/q;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_3

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {p4, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/m0;

    invoke-virtual {v2, p2}, Lp2/m0;->d(Lp2/m0;)Lp2/m0;

    move-result-object v2

    sget-object v3, Lo0/z0;->a:Lr0/a0;

    new-instance v4, Lm1/p;

    invoke-direct {v4, p0, p1}, Lm1/p;-><init>(J)V

    invoke-virtual {v3, v4}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v3

    invoke-virtual {v1, v2}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    filled-new-array {v3, v1}, [Lj6/g0;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p3, p4, v0}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p4}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p4

    if-eqz p4, :cond_6

    new-instance v0, Lp0/o;

    const/4 v6, 0x0

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lp0/o;-><init>(JLp2/m0;Li9/e;II)V

    iput-object v0, p4, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final b(Lc2/q0;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lc2/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lc2/y;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lc2/y;->z:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final c(II)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    sub-int/2addr p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method
