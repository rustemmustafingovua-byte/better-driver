.class public final Le2/z;
.super Le2/h1;
.source "SourceFile"


# static fields
.field public static final e0:Lf6/v;


# instance fields
.field public c0:Le2/x;

.field public d0:Le2/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v0

    sget-wide v1, Lm1/p;->e:J

    invoke-virtual {v0, v1, v2}, Lf6/v;->p(J)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lf6/v;->v(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf6/v;->w(I)V

    sput-object v0, Le2/z;->e0:Lf6/v;

    return-void
.end method

.method public constructor <init>(Le2/g0;Le2/x;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/h1;-><init>(Le2/g0;)V

    iput-object p2, p0, Le2/z;->c0:Le2/x;

    iget-object p1, p1, Le2/g0;->t:Le2/g0;

    if-eqz p1, :cond_0

    new-instance p1, Le2/y;

    invoke-direct {p1, p0}, Le2/y;-><init>(Le2/z;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le2/z;->d0:Le2/y;

    check-cast p2, Lf1/q;

    iget-object p0, p2, Lf1/q;->l:Lf1/q;

    iget p0, p0, Lf1/q;->n:I

    and-int/lit16 p0, p0, 0x200

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final C(J)Lc2/f1;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lc2/f1;->r0(J)V

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    iget-object v1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1, p2}, Le2/x;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Le2/h1;->n1(Lc2/s0;)V

    invoke-virtual {p0}, Le2/h1;->e1()V

    return-object p0
.end method

.method public final P0()V
    .locals 1

    iget-object v0, p0, Le2/z;->d0:Le2/y;

    if-nez v0, :cond_0

    new-instance v0, Le2/y;

    invoke-direct {v0, p0}, Le2/y;-><init>(Le2/z;)V

    iput-object v0, p0, Le2/z;->d0:Le2/y;

    :cond_0
    return-void
.end method

.method public final S0()Le2/q0;
    .locals 0

    iget-object p0, p0, Le2/z;->d0:Le2/y;

    return-object p0
.end method

.method public final U0()Lf1/q;
    .locals 0

    iget-object p0, p0, Le2/z;->c0:Le2/x;

    check-cast p0, Lf1/q;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    return-object p0
.end method

.method public final b0(I)I
    .locals 2

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    iget-object v1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1}, Le2/x;->I(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 2

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    iget-object v1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1}, Le2/x;->b0(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final j1(Lm1/o;Lp1/b;)V
    .locals 8

    iget-object v0, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Le2/h1;->N0(Lm1/o;Lp1/b;)V

    iget-object p2, p0, Le2/h1;->z:Le2/g0;

    invoke-static {p2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p2

    check-cast p2, Lf2/y;

    invoke-virtual {p2}, Lf2/y;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le2/h1;->A:Le2/h1;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lc2/f1;->n:J

    iget-wide v2, p2, Lc2/f1;->n:J

    invoke-static {v0, v1, v2, v3}, Lb3/l;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Le2/h1;->K:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lb3/j;->a(JJ)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-wide v0, p0, Lc2/f1;->n:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    int-to-float p0, p0

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float v5, p0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    int-to-float p0, p0

    sub-float v6, p0, p2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v7, Le2/z;->e0:Lf6/v;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lm1/o;->j(FFFFLf6/v;)V

    :cond_1
    return-void
.end method

.method public final o0(JFLi9/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Le2/h1;->k1(JFLi9/c;)V

    iget-boolean p1, p0, Le2/p0;->u:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le2/h1;->f1()V

    iget-object p1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean p2, p0, Le2/p0;->v:Z

    iput-boolean p2, p1, Le2/p0;->v:Z

    invoke-virtual {p0}, Le2/h1;->C0()Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->c()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Le2/p0;->v:Z

    :goto_0
    return-void
.end method

.method public final t0(Lc2/a;)I
    .locals 1

    iget-object v0, p0, Le2/z;->d0:Le2/y;

    if-eqz v0, :cond_1

    iget-object p0, v0, Le2/q0;->E:Lk/d0;

    invoke-virtual {p0, p1}, Lk/d0;->d(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lk/d0;->c:[I

    aget p0, p0, p1

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0

    :cond_1
    invoke-static {p0, p1}, Le2/l;->c(Le2/p0;Lc2/a;)I

    move-result p0

    return p0
.end method

.method public final u(I)I
    .locals 2

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    iget-object v1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1}, Le2/x;->x0(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method

.method public final v1(Le2/x;)V
    .locals 1

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget v0, v0, Lf1/q;->n:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Le2/z;->c0:Le2/x;

    return-void
.end method

.method public final z(I)I
    .locals 2

    iget-object v0, p0, Le2/z;->c0:Le2/x;

    iget-object v1, p0, Le2/h1;->A:Le2/h1;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1}, Le2/x;->o(Le2/p0;Lc2/q0;I)I

    move-result p0

    return p0
.end method
