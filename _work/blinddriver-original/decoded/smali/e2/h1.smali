.class public abstract Le2/h1;
.super Le2/p0;
.source "SourceFile"

# interfaces
.implements Lc2/q0;
.implements Lc2/u;
.implements Le2/r1;


# static fields
.field public static final X:Lm1/f0;

.field public static final Y:Le2/v;

.field public static final Z:[F

.field public static final a0:Le2/d1;

.field public static final b0:Le2/d1;


# instance fields
.field public A:Le2/h1;

.field public B:Le2/h1;

.field public C:Z

.field public D:Z

.field public E:Li9/c;

.field public F:Lb3/c;

.field public G:Lb3/m;

.field public H:F

.field public I:Lc2/s0;

.field public J:Lk/d0;

.field public K:J

.field public L:F

.field public M:Ll1/a;

.field public N:Le2/v;

.field public O:Lm1/h0;

.field public P:Z

.field public Q:Z

.field public R:Lp1/b;

.field public S:Lm1/o;

.field public T:Lc2/m0;

.field public final U:Le2/e1;

.field public V:Z

.field public W:Le2/p1;

.field public final z:Le2/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm1/f0;

    invoke-direct {v0}, Lm1/f0;-><init>()V

    sput-object v0, Le2/h1;->X:Lm1/f0;

    new-instance v0, Le2/v;

    invoke-direct {v0}, Le2/v;-><init>()V

    sput-object v0, Le2/h1;->Y:Le2/v;

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v0

    sput-object v0, Le2/h1;->Z:[F

    new-instance v0, Le2/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/d1;-><init>(I)V

    sput-object v0, Le2/h1;->a0:Le2/d1;

    new-instance v0, Le2/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le2/d1;-><init>(I)V

    sput-object v0, Le2/h1;->b0:Le2/d1;

    return-void
.end method

.method public constructor <init>(Le2/g0;)V
    .locals 2

    invoke-direct {p0}, Le2/p0;-><init>()V

    iput-object p1, p0, Le2/h1;->z:Le2/g0;

    iget-object v0, p1, Le2/g0;->K:Lb3/c;

    iput-object v0, p0, Le2/h1;->F:Lb3/c;

    iget-object p1, p1, Le2/g0;->L:Lb3/m;

    iput-object p1, p0, Le2/h1;->G:Lb3/m;

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Le2/h1;->H:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/h1;->K:J

    sget-object p1, Lm1/v;->b:Lm1/e0;

    iput-object p1, p0, Le2/h1;->O:Lm1/h0;

    new-instance p1, Le2/e1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le2/e1;-><init>(Le2/h1;I)V

    iput-object p1, p0, Le2/h1;->U:Le2/e1;

    return-void
.end method

.method public static o1(Lc2/u;)Le2/h1;
    .locals 1

    instance-of v0, p0, Lc2/p0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc2/p0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Le2/h1;

    return-object p0
.end method


# virtual methods
.method public final A(J)J
    .locals 1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Le2/h1;->R(J)J

    move-result-wide p1

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0, p1, p2}, Lf2/y;->t(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final A0()Z
    .locals 0

    iget-object p0, p0, Le2/h1;->I:Lc2/s0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B0()Le2/g0;
    .locals 0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    return-object p0
.end method

.method public final C0()Lc2/s0;
    .locals 1

    iget-object p0, p0, Le2/h1;->I:Lc2/s0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Asking for measurement result of unmeasured layout modifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D0()Le2/p0;
    .locals 0

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    return-object p0
.end method

.method public final E(J)J
    .locals 3

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    iget-object v1, p0, Le2/h1;->z:Le2/g0;

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->D()V

    iget-object v1, v1, Lf2/y;->n0:[F

    invoke-static {p1, p2, v1}, Lm1/z;->b(J[F)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lc2/u;->R(J)J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ll1/b;->d(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final E0()J
    .locals 2

    iget-wide v0, p0, Le2/h1;->K:J

    return-wide v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Le2/c1;->d(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    iget-object p0, v0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    move-object v0, v3

    :goto_0
    if-eqz p0, :cond_8

    iget v1, p0, Lf1/q;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    move-object v1, p0

    move-object v4, v3

    :goto_1
    if-eqz v1, :cond_7

    instance-of v5, v1, Le2/t1;

    if-eqz v5, :cond_0

    check-cast v1, Le2/t1;

    invoke-interface {v1, v0}, Le2/t1;->v0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_0
    iget v5, v1, Lf1/q;->n:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_6

    instance-of v5, v1, Le2/k;

    if-eqz v5, :cond_6

    move-object v5, v1

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-eqz v5, :cond_5

    iget v8, v5, Lf1/q;->n:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v1, v5

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Lt0/b;

    const/16 v7, 0x10

    new-array v7, v7, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v4, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_5
    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    return-object v3
.end method

.method public final I()Lc2/u;
    .locals 4

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    iget-object v1, p0, Le2/h1;->z:Le2/g0;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "\n|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isAttached="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le2/g0;->H()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " modifier="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Le2/g0;->W:Lf1/r;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tail="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Le2/h1;->d1()V

    iget-object p0, v1, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->d:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    return-object p0
.end method

.method public final I0()V
    .locals 4

    iget-wide v0, p0, Le2/h1;->K:J

    iget v2, p0, Le2/h1;->L:F

    iget-object v3, p0, Le2/h1;->E:Li9/c;

    invoke-virtual {p0, v0, v1, v2, v3}, Lc2/f1;->o0(JFLi9/c;)V

    return-void
.end method

.method public final J0(Le2/h1;Ll1/a;Z)V
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le2/h1;->B:Le2/h1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Le2/h1;->J0(Le2/h1;Ll1/a;Z)V

    :cond_1
    iget-wide v0, p0, Le2/h1;->K:J

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int v2, v2

    iget v3, p2, Ll1/a;->a:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iput v3, p2, Ll1/a;->a:F

    iget v3, p2, Ll1/a;->c:F

    sub-float/2addr v3, v2

    iput v3, p2, Ll1/a;->c:F

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p2, Ll1/a;->b:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p2, Ll1/a;->b:F

    iget v1, p2, Ll1/a;->d:F

    sub-float/2addr v1, v0

    iput v1, p2, Ll1/a;->d:F

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    check-cast v0, Lf2/r1;

    invoke-virtual {v0, p2, v1}, Lf2/r1;->c(Ll1/a;Z)V

    iget-boolean v0, p0, Le2/h1;->D:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-wide v0, p0, Lc2/f1;->n:J

    shr-long p0, v0, p1

    long-to-int p0, p0

    int-to-float p0, p0

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p0, p1}, Ll1/a;->a(FFFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final K(Lc2/u;J)J
    .locals 3

    instance-of v0, p1, Lc2/p0;

    if-eqz v0, :cond_0

    check-cast p1, Lc2/p0;

    iget-object v0, p1, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {v0}, Le2/h1;->d1()V

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr p2, v0

    invoke-virtual {p1, p0, p2, p3}, Lc2/p0;->K(Lc2/u;J)J

    move-result-wide p0

    xor-long/2addr p0, v0

    return-wide p0

    :cond_0
    invoke-static {p1}, Le2/h1;->o1(Lc2/u;)Le2/h1;

    move-result-object p1

    invoke-virtual {p1}, Le2/h1;->d1()V

    invoke-virtual {p0, p1}, Le2/h1;->Q0(Le2/h1;)Le2/h1;

    move-result-object v0

    :goto_0
    if-eq p1, v0, :cond_2

    iget-object v1, p1, Le2/h1;->W:Le2/p1;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    check-cast v1, Lf2/r1;

    invoke-virtual {v1, v2, p2, p3}, Lf2/r1;->d(ZJ)J

    move-result-wide p2

    :cond_1
    iget-wide v1, p1, Le2/h1;->K:J

    invoke-static {p2, p3, v1, v2}, Lr5/h1;->v(JJ)J

    move-result-wide p2

    iget-object p1, p1, Le2/h1;->B:Le2/h1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Le2/h1;->K0(Le2/h1;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final K0(Le2/h1;J)J
    .locals 2

    if-ne p1, p0, :cond_0

    return-wide p2

    :cond_0
    iget-object v0, p0, Le2/h1;->B:Le2/h1;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Le2/h1;->K0(Le2/h1;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Le2/h1;->R0(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Le2/h1;->R0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final L(Lc2/u;J)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final L0(J)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long v0, v4, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final M0(JJ)F
    .locals 8

    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v0, v0, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const-wide v3, 0xffffffffL

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result v0

    int-to-float v0, v0

    and-long v5, p3, v3

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p3, p4}, Le2/h1;->L0(J)J

    move-result-wide p3

    shr-long v5, p3, v1

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr p3, v3

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    shr-long v5, p1, v1

    long-to-int p4, v5

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    const/4 v5, 0x0

    cmpg-float v6, p4, v5

    if-gez v6, :cond_1

    neg-float p4, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p4, v6

    :goto_0
    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p2, p1, v5

    if-gez p2, :cond_2

    neg-float p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, p1, p0

    :goto_1
    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v6, p0

    shl-long p0, p1, v1

    and-long/2addr v6, v3

    or-long/2addr p0, v6

    cmpl-float p2, v0, v5

    if-gtz p2, :cond_3

    cmpl-float p2, p3, v5

    if-lez p2, :cond_4

    :cond_3
    shr-long v5, p0, v1

    long-to-int p2, v5

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    cmpg-float p4, p4, v0

    if-gtz p4, :cond_4

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p1, p1

    mul-float/2addr p0, p0

    add-float/2addr p0, p1

    return p0

    :cond_4
    return v2
.end method

.method public final N0(Lm1/o;Lp1/b;)V
    .locals 5

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_1

    check-cast v0, Lf2/r1;

    iget-object p0, v0, Lf2/r1;->x:Lo1/b;

    invoke-virtual {v0}, Lf2/r1;->g()V

    iget-object v1, v0, Lf2/r1;->l:Lp1/b;

    iget-object v1, v1, Lp1/b;->a:Lp1/c;

    iget v1, v1, Lp1/c;->m:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lf2/r1;->E:Z

    iget-object v1, p0, Lo1/b;->m:Lg5/m;

    invoke-virtual {v1, p1}, Lg5/m;->t(Lm1/o;)V

    iput-object p2, v1, Lg5/m;->n:Ljava/lang/Object;

    iget-object p1, v0, Lf2/r1;->l:Lp1/b;

    invoke-static {p0, p1}, Ll9/a;->h(Lo1/d;Lp1/b;)V

    return-void

    :cond_1
    iget-wide v0, p0, Le2/h1;->K:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Lm1/o;->p(FF)V

    invoke-virtual {p0, p1, p2}, Le2/h1;->O0(Lm1/o;Lp1/b;)V

    neg-float p0, v2

    neg-float p2, v0

    invoke-interface {p1, p0, p2}, Lm1/o;->p(FF)V

    return-void
.end method

.method public final O(J)J
    .locals 1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0, p1, p2}, Lf2/y;->H(J)J

    move-result-wide p1

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final O0(Lm1/o;Lp1/b;)V
    .locals 11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Le2/h1;->V0(I)Lf1/q;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Le2/h1;->j1(Lm1/o;Lp1/b;)V

    return-void

    :cond_0
    iget-object v2, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v2

    check-cast v2, Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getSharedDrawScope()Le2/j0;

    move-result-object v3

    iget-wide v4, p0, Lc2/f1;->n:J

    invoke-static {v4, v5}, Ly4/s;->E(J)J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    if-eqz v1, :cond_8

    instance-of v4, v1, Le2/n;

    if-eqz v4, :cond_1

    move-object v8, v1

    check-cast v8, Le2/n;

    move-object v7, p0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Le2/j0;->c(Lm1/o;JLe2/h1;Le2/n;Lp1/b;)V

    goto :goto_4

    :cond_1
    move-object v7, p0

    move-object v4, p1

    move-object v9, p2

    iget p0, v1, Lf1/q;->n:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    instance-of p0, v1, Le2/k;

    if-eqz p0, :cond_7

    move-object p0, v1

    check-cast p0, Le2/k;

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x1

    if-eqz p0, :cond_6

    iget v8, p0, Lf1/q;->n:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_5

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_2

    move-object v1, p0

    goto :goto_2

    :cond_2
    if-nez v10, :cond_3

    new-instance v10, Lt0/b;

    const/16 p2, 0x10

    new-array p2, p2, [Lf1/q;

    invoke-direct {v10, p2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v10, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v10, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_6
    if-ne p1, p2, :cond_7

    :goto_3
    move-object p1, v4

    move-object p0, v7

    move-object p2, v9

    goto :goto_0

    :cond_7
    :goto_4
    invoke-static {v10}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public abstract P0()V
.end method

.method public final Q0(Le2/h1;)Le2/h1;
    .locals 5

    iget-object v0, p1, Le2/h1;->z:Le2/g0;

    iget-object v1, p0, Le2/h1;->z:Le2/g0;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v1

    iget-object v2, v1, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_0

    const-string v2, "visitLocalAncestors called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    :goto_0
    if-eqz v1, :cond_7

    iget v2, v1, Lf1/q;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, v0, Le2/g0;->B:I

    iget v3, v1, Le2/g0;->B:I

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_2
    iget v3, v2, Le2/g0;->B:I

    iget v4, v0, Le2/g0;->B:I

    if-le v3, v4, :cond_4

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_3
    if-eq v0, v2, :cond_6

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layouts are not part of the same hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ne v2, v1, :cond_8

    :cond_7
    return-object p0

    :cond_8
    iget-object p0, p1, Le2/h1;->z:Le2/g0;

    if-ne v0, p0, :cond_9

    :goto_4
    return-object p1

    :cond_9
    iget-object p0, v0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    return-object p0
.end method

.method public final R(J)J
    .locals 4

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Le2/h1;->d1()V

    :goto_0
    if-eqz p0, :cond_3

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    if-ne p0, v1, :cond_1

    iget-boolean v1, v0, Le2/g0;->n:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln2/b;->b(Le2/g0;)J

    move-result-wide v0

    const-wide v2, 0x7fffffff7fffffffL

    invoke-static {v0, v1, v2, v3}, Lb3/j;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, p2, v0, v1}, Lr5/h1;->v(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    check-cast v0, Lf2/r1;

    invoke-virtual {v0, v1, p1, p2}, Lf2/r1;->d(ZJ)J

    move-result-wide p1

    :cond_2
    iget-wide v0, p0, Le2/h1;->K:J

    invoke-static {p1, p2, v0, v1}, Lr5/h1;->v(JJ)J

    move-result-wide p1

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    goto :goto_0

    :cond_3
    return-wide p1
.end method

.method public final R0(J)J
    .locals 6

    iget-wide v0, p0, Le2/h1;->K:J

    const/16 v2, 0x20

    shr-long v3, p1, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    shr-long v4, v0, v2

    long-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    and-long/2addr v0, v4

    long-to-int p2, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long/2addr v0, v2

    and-long/2addr p1, v4

    or-long/2addr p1, v0

    iget-object p0, p0, Le2/h1;->W:Le2/p1;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    check-cast p0, Lf2/r1;

    invoke-virtual {p0, v0, p1, p2}, Lf2/r1;->d(ZJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public abstract S0()Le2/q0;
.end method

.method public final T0()J
    .locals 3

    iget-object v0, p0, Le2/h1;->F:Lb3/c;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->M:Lf2/p2;

    invoke-interface {p0}, Lf2/p2;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lb3/c;->l0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final U(Lc2/u;Z)Ll1/c;
    .locals 7

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutCoordinates "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not attached!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Le2/h1;->o1(Lc2/u;)Le2/h1;

    move-result-object v0

    invoke-virtual {v0}, Le2/h1;->d1()V

    invoke-virtual {p0, v0}, Le2/h1;->Q0(Le2/h1;)Le2/h1;

    move-result-object v1

    iget-object v2, p0, Le2/h1;->M:Ll1/a;

    if-nez v2, :cond_2

    new-instance v2, Ll1/a;

    invoke-direct {v2}, Ll1/a;-><init>()V

    iput-object v2, p0, Le2/h1;->M:Ll1/a;

    :cond_2
    const/4 v3, 0x0

    iput v3, v2, Ll1/a;->a:F

    iput v3, v2, Ll1/a;->b:F

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Ll1/a;->c:F

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int p1, v3

    int-to-float p1, p1

    iput p1, v2, Ll1/a;->d:F

    :goto_0
    if-eq v0, v1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, v2, p2, p1}, Le2/h1;->l1(Ll1/a;ZZ)V

    invoke-virtual {v2}, Ll1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0

    :cond_3
    iget-object v0, v0, Le2/h1;->B:Le2/h1;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, v2, p2}, Le2/h1;->J0(Le2/h1;Ll1/a;Z)V

    new-instance p0, Ll1/c;

    iget p1, v2, Ll1/a;->a:F

    iget p2, v2, Ll1/a;->b:F

    iget v0, v2, Ll1/a;->c:F

    iget v1, v2, Ll1/a;->d:F

    invoke-direct {p0, p1, p2, v0, v1}, Ll1/c;-><init>(FFFF)V

    return-object p0
.end method

.method public abstract U0()Lf1/q;
.end method

.method public final V0(I)Lf1/q;
    .locals 2

    invoke-static {p1}, Le2/i1;->g(I)Z

    move-result v0

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    iget v0, p0, Lf1/q;->o:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    iget v0, p0, Lf1/q;->n:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    if-eq p0, v1, :cond_3

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final W0(Z)Lf1/q;
    .locals 2

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v1, v0, Le2/c1;->d:Le2/h1;

    if-ne v1, p0, :cond_0

    iget-object p0, v0, Le2/c1;->f:Lf1/q;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final X0(Lf1/q;Le2/d1;JLe2/q;IZ)V
    .locals 7

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Le2/h1;->a1(Le2/d1;JLe2/q;IZ)V

    return-void

    :cond_0
    iget v0, p5, Le2/q;->n:I

    iget-object v1, p5, Le2/q;->l:Lk/h0;

    add-int/lit8 v2, v0, 0x1

    iget v3, v1, Lk/h0;->b:I

    invoke-virtual {p5, v2, v3}, Le2/q;->b(II)V

    iget v2, p5, Le2/q;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p5, Le2/q;->n:I

    invoke-virtual {v1, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    iget-object v1, p5, Le2/q;->m:Lk/a0;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-static {v2, p7, v3}, Le2/l;->a(FZZ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lk/a0;->a(J)V

    invoke-virtual {p2}, Le2/d1;->b()I

    move-result v1

    invoke-static {p1, v1}, Le2/l;->d(Le2/j;I)Lf1/q;

    move-result-object p1

    invoke-virtual/range {p0 .. p7}, Le2/h1;->X0(Lf1/q;Le2/d1;JLe2/q;IZ)V

    iput v0, p5, Le2/q;->n:I

    return-void
.end method

.method public final Y0(Lf1/q;Le2/d1;JLe2/q;IZF)V
    .locals 11

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Le2/h1;->a1(Le2/d1;JLe2/q;IZ)V

    return-void

    :cond_0
    move-object/from16 v4, p5

    iget v10, v4, Le2/q;->n:I

    iget-object v0, v4, Le2/q;->l:Lk/h0;

    add-int/lit8 v1, v10, 0x1

    iget v2, v0, Lk/h0;->b:I

    invoke-virtual {v4, v1, v2}, Le2/q;->b(II)V

    iget v1, v4, Le2/q;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Le2/q;->n:I

    invoke-virtual {v0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    iget-object v0, v4, Le2/q;->m:Lk/a0;

    const/4 v1, 0x0

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static {v8, v7, v1}, Le2/l;->a(FZZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk/a0;->a(J)V

    invoke-virtual {p2}, Le2/d1;->b()I

    move-result v0

    invoke-static {p1, v0}, Le2/l;->d(Le2/j;I)Lf1/q;

    move-result-object v1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p2

    move/from16 v6, p6

    move-object v5, v4

    move-wide v3, p3

    invoke-virtual/range {v0 .. v9}, Le2/h1;->i1(Lf1/q;Le2/d1;JLe2/q;IZFZ)V

    move-object v4, v5

    iput v10, v4, Le2/q;->n:I

    return-void
.end method

.method public final Z0(Le2/d1;JLe2/q;IZ)V
    .locals 14

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {p1}, Le2/d1;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Le2/h1;->V0(I)Lf1/q;

    move-result-object v1

    invoke-virtual {p0, v3, v4}, Le2/h1;->u1(J)Z

    move-result v0

    const/4 v8, 0x0

    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    const v10, 0x7fffffff

    const/4 v11, 0x1

    if-nez v0, :cond_2

    if-ne v6, v11, :cond_1

    invoke-virtual {p0}, Le2/h1;->T0()J

    move-result-wide v11

    invoke-virtual {p0, v3, v4, v11, v12}, Le2/h1;->M0(JJ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    and-int/2addr v2, v10

    if-ge v2, v9, :cond_1

    iget v2, v5, Le2/q;->n:I

    invoke-static {v5}, Lg5/f;->A(Ljava/util/List;)I

    move-result v7

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v8, v8}, Le2/l;->a(FZZ)J

    move-result-wide v7

    invoke-virtual {v5}, Le2/q;->a()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Le2/l;->g(JJ)I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    const/4 v7, 0x0

    move-object v2, p1

    move v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Le2/h1;->Y0(Lf1/q;Le2/d1;JLe2/q;IZF)V

    :cond_1
    return-void

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p6}, Le2/h1;->a1(Le2/d1;JLe2/q;IZ)V

    return-void

    :cond_3
    const/16 v0, 0x20

    shr-long v2, p2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v2, 0xffffffffL

    and-long v2, p2, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_4

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Le2/h1;->X0(Lf1/q;Le2/d1;JLe2/q;IZ)V

    return-void

    :cond_4
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    if-ne v6, v11, :cond_5

    invoke-virtual {p0}, Le2/h1;->T0()J

    move-result-wide v12

    invoke-virtual {p0, v3, v4, v12, v13}, Le2/h1;->M0(JJ)F

    move-result v2

    goto :goto_1

    :cond_5
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    and-int/2addr v7, v10

    if-ge v7, v9, :cond_7

    iget v7, v5, Le2/q;->n:I

    invoke-static {v5}, Lg5/f;->A(Ljava/util/List;)I

    move-result v9

    if-ne v7, v9, :cond_6

    move/from16 v7, p6

    goto :goto_2

    :cond_6
    move/from16 v7, p6

    invoke-static {v2, v7, v8}, Le2/l;->a(FZZ)J

    move-result-wide v9

    invoke-virtual {v5}, Le2/q;->a()J

    move-result-wide v12

    invoke-static {v12, v13, v9, v10}, Le2/l;->g(JJ)I

    move-result v9

    if-lez v9, :cond_8

    :goto_2
    move v9, v11

    :goto_3
    move-object v0, p0

    move v8, v2

    move-object v2, p1

    goto :goto_4

    :cond_7
    move/from16 v7, p6

    :cond_8
    move v9, v8

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v9}, Le2/h1;->i1(Lf1/q;Le2/d1;JLe2/q;IZFZ)V

    return-void
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public a1(Le2/d1;JLe2/q;IZ)V
    .locals 0

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Le2/h1;->R0(J)J

    move-result-wide p2

    invoke-virtual/range {p0 .. p6}, Le2/h1;->Z0(Le2/d1;JLe2/q;IZ)V

    :cond_0
    return-void
.end method

.method public final b1()V
    .locals 1

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le2/p1;->invalidate()V

    return-void

    :cond_0
    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->b1()V

    :cond_1
    return-void
.end method

.method public final c1()Z
    .locals 2

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    iget v0, p0, Le2/h1;->H:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->c1()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final d1()V
    .locals 0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    invoke-virtual {p0}, Le2/l0;->b()V

    return-void
.end method

.method public final e(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Le2/h1;->R(J)J

    move-result-wide p1

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->D()V

    iget-object p0, p0, Lf2/y;->m0:[F

    invoke-static {p1, p2, p0}, Lm1/z;->b(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e1()V
    .locals 13

    const/16 v0, 0x80

    invoke-static {v0}, Le2/i1;->g(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, v2, Lf1/q;->l:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ld1/g;->e()Li9/c;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-static {v2}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v5

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v6

    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_b

    iget v7, v1, Lf1/q;->o:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    iget v7, v1, Lf1/q;->n:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_a

    move-object v7, v1

    move-object v8, v3

    :goto_3
    if-eqz v7, :cond_a

    instance-of v9, v7, Le2/w;

    if-eqz v9, :cond_3

    check-cast v7, Le2/w;

    iget-wide v9, p0, Lc2/f1;->n:J

    invoke-interface {v7, v9, v10}, Le2/w;->l(J)V

    goto :goto_6

    :cond_3
    iget v9, v7, Lf1/q;->n:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_9

    instance-of v9, v7, Le2/k;

    if-eqz v9, :cond_9

    move-object v9, v7

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x1

    if-eqz v9, :cond_8

    iget v12, v9, Lf1/q;->n:I

    and-int/2addr v12, v0

    if-eqz v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_4

    move-object v7, v9

    goto :goto_5

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Lt0/b;

    const/16 v11, 0x10

    new-array v11, v11, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v8, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v7, v3

    :cond_6
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_8
    if-ne v10, v11, :cond_9

    goto :goto_3

    :cond_9
    :goto_6
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v7

    goto :goto_3

    :cond_a
    if-eq v1, v6, :cond_b

    iget-object v1, v1, Lf1/q;->q:Lf1/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_b
    :goto_7
    invoke-static {v2, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :goto_8
    invoke-static {v2, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_c
    return-void
.end method

.method public final f1()V
    .locals 10

    const/high16 v0, 0x400000

    invoke-static {v0}, Le2/i1;->g(I)Z

    move-result v1

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_a

    iget v3, v1, Lf1/q;->o:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    iget v3, v1, Lf1/q;->n:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_9

    instance-of v6, v4, Le2/w;

    if-eqz v6, :cond_2

    check-cast v4, Le2/w;

    invoke-interface {v4, p0}, Le2/w;->u(Lc2/u;)V

    goto :goto_5

    :cond_2
    iget v6, v4, Lf1/q;->n:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_8

    instance-of v6, v4, Le2/k;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Lf1/q;->n:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_5
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-eq v1, v2, :cond_a

    iget-object v1, v1, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public final g1()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/h1;->C:Z

    iget-object v0, p0, Le2/h1;->U:Le2/e1;

    invoke-virtual {v0}, Le2/e1;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Le2/h1;->m1()V

    iget-wide v0, p0, Le2/h1;->K:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lb3/j;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->N()V

    :cond_0
    return-void
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    return-object p0
.end method

.method public final h1()V
    .locals 9

    const/high16 v0, 0x100000

    invoke-static {v0}, Le2/i1;->g(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Lf1/q;->l:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    if-nez v2, :cond_1

    goto :goto_5

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_9

    iget v1, p0, Lf1/q;->o:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    iget v1, p0, Lf1/q;->n:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move-object v3, p0

    move-object v4, v1

    :goto_2
    if-eqz v3, :cond_8

    iget v5, v3, Lf1/q;->n:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_7

    instance-of v5, v3, Le2/k;

    if-eqz v5, :cond_7

    move-object v5, v3

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_6

    iget v8, v5, Lf1/q;->n:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_2

    move-object v3, v5

    goto :goto_4

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Lt0/b;

    const/16 v7, 0x10

    new-array v7, v7, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v1

    :cond_4
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_2

    :cond_8
    if-eq p0, v2, :cond_9

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_9
    :goto_5
    return-void
.end method

.method public final i1(Lf1/q;Le2/d1;JLe2/q;IZFZ)V
    .locals 17

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Le2/h1;->a1(Le2/d1;JLe2/q;IZ)V

    return-void

    :cond_0
    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x3

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v6, v4, :cond_11

    :goto_0
    move-object/from16 v4, p1

    move-object v5, v2

    :goto_1
    if-eqz v4, :cond_11

    instance-of v7, v4, Le2/v1;

    if-eqz v7, :cond_a

    check-cast v4, Le2/v1;

    invoke-interface {v4}, Le2/v1;->k()J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long v7, p3, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    move-object/from16 v9, p0

    iget-object v10, v9, Le2/h1;->z:Le2/g0;

    iget-object v12, v10, Le2/g0;->L:Lb3/m;

    sget v13, Le2/c2;->b:I

    const-wide/high16 v13, -0x8000000000000000L

    and-long/2addr v13, v4

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x2

    if-eqz v13, :cond_3

    sget-object v15, Lb3/m;->l:Lb3/m;

    if-ne v12, v15, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v14, v4, v5}, Le2/d1;->a(IJ)I

    move-result v12

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v1, v4, v5}, Le2/d1;->a(IJ)I

    move-result v12

    :goto_3
    neg-int v12, v12

    int-to-float v12, v12

    cmpl-float v8, v8, v12

    if-ltz v8, :cond_11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v9}, Lc2/f1;->k0()I

    move-result v8

    iget-object v10, v10, Le2/g0;->L:Lb3/m;

    if-eqz v13, :cond_5

    sget-object v12, Lb3/m;->l:Lb3/m;

    if-ne v10, v12, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v1, v4, v5}, Le2/d1;->a(IJ)I

    move-result v10

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {v14, v4, v5}, Le2/d1;->a(IJ)I

    move-result v10

    :goto_5
    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_11

    const-wide v7, 0xffffffffL

    and-long v7, p3, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v11, v4, v5}, Le2/d1;->a(IJ)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v9}, Lc2/f1;->f0()I

    move-result v8

    invoke-static {v3, v4, v5}, Le2/d1;->a(IJ)I

    move-result v3

    add-int/2addr v3, v8

    int-to-float v3, v3

    cmpg-float v3, v7, v3

    if-gez v3, :cond_11

    new-instance v0, Le2/f1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v8, p7

    move/from16 v10, p9

    move v7, v6

    move-object v1, v9

    move-object/from16 v6, p5

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Le2/f1;-><init>(Le2/h1;Lf1/q;Le2/d1;JLe2/q;IZFZ)V

    move-object v7, v6

    move-object v6, v2

    iget-object v1, v7, Le2/q;->m:Lk/a0;

    iget-object v2, v7, Le2/q;->l:Lk/h0;

    iget v3, v7, Le2/q;->n:I

    invoke-static {v7}, Lg5/f;->A(Ljava/util/List;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6

    iget v3, v7, Le2/q;->n:I

    add-int/lit8 v4, v3, 0x1

    iget v9, v2, Lk/h0;->b:I

    invoke-virtual {v7, v4, v9}, Le2/q;->b(II)V

    iget v4, v7, Le2/q;->n:I

    add-int/2addr v4, v11

    iput v4, v7, Le2/q;->n:I

    invoke-virtual {v2, v6}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-static {v5, v8, v11}, Le2/l;->a(FZZ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lk/a0;->a(J)V

    invoke-virtual {v0}, Le2/f1;->invoke()Ljava/lang/Object;

    iput v3, v7, Le2/q;->n:I

    return-void

    :cond_6
    invoke-virtual {v7}, Le2/q;->a()J

    move-result-wide v3

    iget v9, v7, Le2/q;->n:I

    invoke-static {v3, v4}, Le2/l;->n(J)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v7}, Lg5/f;->A(Ljava/util/List;)I

    move-result v3

    iput v3, v7, Le2/q;->n:I

    add-int/lit8 v4, v3, 0x1

    iget v10, v2, Lk/h0;->b:I

    invoke-virtual {v7, v4, v10}, Le2/q;->b(II)V

    iget v4, v7, Le2/q;->n:I

    add-int/2addr v4, v11

    iput v4, v7, Le2/q;->n:I

    invoke-virtual {v2, v6}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-static {v5, v8, v11}, Le2/l;->a(FZZ)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lk/a0;->a(J)V

    invoke-virtual {v0}, Le2/f1;->invoke()Ljava/lang/Object;

    iput v3, v7, Le2/q;->n:I

    invoke-virtual {v7}, Le2/q;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Le2/l;->j(J)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    add-int/lit8 v0, v9, 0x1

    iget v1, v7, Le2/q;->n:I

    add-int/2addr v1, v11

    invoke-virtual {v7, v0, v1}, Le2/q;->b(II)V

    :cond_7
    iput v9, v7, Le2/q;->n:I

    return-void

    :cond_8
    invoke-static {v3, v4}, Le2/l;->j(J)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, v7, Le2/q;->n:I

    add-int/lit8 v4, v3, 0x1

    iget v9, v2, Lk/h0;->b:I

    invoke-virtual {v7, v4, v9}, Le2/q;->b(II)V

    iget v4, v7, Le2/q;->n:I

    add-int/2addr v4, v11

    iput v4, v7, Le2/q;->n:I

    invoke-virtual {v2, v6}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-static {v5, v8, v11}, Le2/l;->a(FZZ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lk/a0;->a(J)V

    invoke-virtual {v0}, Le2/f1;->invoke()Ljava/lang/Object;

    iput v3, v7, Le2/q;->n:I

    :cond_9
    return-void

    :cond_a
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v8, p7

    iget v9, v4, Lf1/q;->n:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_10

    instance-of v9, v4, Le2/k;

    if-eqz v9, :cond_10

    move-object v9, v4

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v1

    :goto_6
    if-eqz v9, :cond_f

    iget v12, v9, Lf1/q;->n:I

    and-int/2addr v12, v0

    if-eqz v12, :cond_e

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_b

    move-object v4, v9

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    new-instance v5, Lt0/b;

    new-array v12, v0, [Lf1/q;

    invoke-direct {v5, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v5, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v2

    :cond_d
    invoke-virtual {v5, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_e
    :goto_7
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_6

    :cond_f
    if-ne v10, v11, :cond_10

    :goto_8
    move/from16 v6, p6

    goto/16 :goto_1

    :cond_10
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_8

    :cond_11
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v8, p7

    if-eqz p9, :cond_12

    invoke-virtual/range {p0 .. p8}, Le2/h1;->Y0(Lf1/q;Le2/d1;JLe2/q;IZF)V

    return-void

    :cond_12
    move-object/from16 v3, p2

    iget v4, v3, Le2/d1;->a:I

    packed-switch v4, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    move-object v5, v2

    move-object v4, v6

    :goto_9
    if-eqz v4, :cond_1a

    instance-of v9, v4, Le2/v1;

    if-eqz v9, :cond_13

    check-cast v4, Le2/v1;

    invoke-interface {v4}, Le2/v1;->L()V

    goto :goto_c

    :cond_13
    iget v9, v4, Lf1/q;->n:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_19

    instance-of v9, v4, Le2/k;

    if-eqz v9, :cond_19

    move-object v9, v4

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v1

    :goto_a
    if-eqz v9, :cond_18

    iget v12, v9, Lf1/q;->n:I

    and-int/2addr v12, v0

    if-eqz v12, :cond_17

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_14

    move-object v4, v9

    goto :goto_b

    :cond_14
    if-nez v5, :cond_15

    new-instance v5, Lt0/b;

    new-array v12, v0, [Lf1/q;

    invoke-direct {v5, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v5, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v2

    :cond_16
    invoke-virtual {v5, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_17
    :goto_b
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_a

    :cond_18
    if-ne v10, v11, :cond_19

    goto :goto_9

    :cond_19
    :goto_c
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_9

    :cond_1a
    :goto_d
    invoke-virtual {v3}, Le2/d1;->b()I

    move-result v0

    invoke-static {v6, v0}, Le2/l;->d(Le2/j;I)Lf1/q;

    move-result-object v1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v6, p6

    move-object v2, v3

    move-object v5, v7

    move v7, v8

    move-wide/from16 v3, p3

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Le2/h1;->i1(Lf1/q;Le2/d1;JLe2/q;IZFZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object p0

    iget-boolean p0, p0, Lf1/q;->y:Z

    return p0
.end method

.method public abstract j1(Lm1/o;Lp1/b;)V
.end method

.method public final k(Lc2/u;[F)V
    .locals 1

    invoke-static {p1}, Le2/h1;->o1(Lc2/u;)Le2/h1;

    move-result-object p1

    invoke-virtual {p1}, Le2/h1;->d1()V

    invoke-virtual {p0, p1}, Le2/h1;->Q0(Le2/h1;)Le2/h1;

    move-result-object v0

    invoke-static {p2}, Lm1/z;->d([F)V

    invoke-virtual {p1, v0, p2}, Le2/h1;->r1(Le2/h1;[F)V

    invoke-virtual {p0, v0, p2}, Le2/h1;->q1(Le2/h1;[F)V

    return-void
.end method

.method public final k1(JFLi9/c;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Le2/h1;->s1(Li9/c;Z)V

    iget-wide v1, p0, Le2/h1;->K:J

    invoke-static {v1, v2, p1, p2}, Lb3/j;->a(JJ)Z

    move-result p4

    iget-object v1, p0, Le2/h1;->z:Le2/g0;

    if-nez p4, :cond_2

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p4

    const/high16 v2, -0x3f800000    # -4.0f

    check-cast p4, Lf2/y;

    invoke-virtual {p4, v2}, Lf2/y;->N(F)V

    iput-wide p1, p0, Le2/h1;->K:J

    iget-object p4, v1, Le2/g0;->S:Le2/l0;

    iget-object p4, p4, Le2/l0;->p:Le2/x0;

    invoke-virtual {p4}, Le2/x0;->w0()V

    iget-object p4, p0, Le2/h1;->W:Le2/p1;

    if-eqz p4, :cond_0

    check-cast p4, Lf2/r1;

    invoke-virtual {p4, p1, p2}, Lf2/r1;->e(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le2/h1;->B:Le2/h1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le2/h1;->b1()V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Le2/g0;->N()V

    invoke-static {p0}, Le2/p0;->G0(Le2/h1;)V

    iget-object p1, v1, Le2/g0;->z:Le2/q1;

    if-eqz p1, :cond_2

    check-cast p1, Lf2/y;

    invoke-virtual {p1, v1}, Lf2/y;->z(Le2/g0;)V

    :cond_2
    iput p3, p0, Le2/h1;->L:F

    iget-object p1, v1, Le2/g0;->R:Le2/c1;

    iget-object p1, p1, Le2/c1;->d:Le2/h1;

    if-ne p0, p1, :cond_3

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ln2/b;->e(Le2/g0;Z)V

    :cond_3
    iget-boolean p1, p0, Le2/p0;->v:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Le2/h1;->C0()Lc2/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Le2/p0;->w0(Lc2/s0;)V

    :cond_4
    return-void
.end method

.method public final l([F)V
    .locals 6

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v0

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v1

    invoke-static {v1}, Le2/h1;->o1(Lc2/u;)Le2/h1;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Le2/h1;->r1(Le2/h1;[F)V

    instance-of p0, v0, Ly1/g;

    if-eqz p0, :cond_0

    check-cast v0, Ly1/g;

    check-cast v0, Lf2/y;

    invoke-virtual {v0, p1}, Lf2/y;->s([F)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Le2/h1;->A(J)J

    move-result-wide v0

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p1, p0, v0}, Lm1/z;->f([FFF)V

    :cond_1
    return-void
.end method

.method public final l1(Ll1/a;ZZ)V
    .locals 10

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Le2/h1;->D:Z

    if-eqz v4, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Le2/h1;->T0()J

    move-result-wide p2

    shr-long v4, p2, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    and-long/2addr p2, v1

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    div-float/2addr p2, v5

    neg-float p3, v4

    neg-float v5, p2

    iget-wide v6, p0, Lc2/f1;->n:J

    shr-long v8, v6, v3

    long-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    and-long/2addr v6, v1

    long-to-int v4, v6

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p1, p3, v5, v8, v4}, Ll1/a;->a(FFFF)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-wide p2, p0, Lc2/f1;->n:J

    shr-long v4, p2, v3

    long-to-int v4, v4

    int-to-float v4, v4

    and-long/2addr p2, v1

    long-to-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v4, p2}, Ll1/a;->a(FFFF)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ll1/a;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    check-cast v0, Lf2/r1;

    invoke-virtual {v0, p1, p2}, Lf2/r1;->c(Ll1/a;Z)V

    :cond_3
    iget-wide p2, p0, Le2/h1;->K:J

    shr-long v3, p2, v3

    long-to-int p0, v3

    iget v0, p1, Ll1/a;->a:F

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Ll1/a;->a:F

    iget v0, p1, Ll1/a;->c:F

    add-float/2addr v0, p0

    iput v0, p1, Ll1/a;->c:F

    and-long/2addr p2, v1

    long-to-int p0, p2

    iget p2, p1, Ll1/a;->b:F

    int-to-float p0, p0

    add-float/2addr p2, p0

    iput p2, p1, Ll1/a;->b:F

    iget p2, p1, Ll1/a;->d:F

    add-float/2addr p2, p0

    iput p2, p1, Ll1/a;->d:F

    return-void
.end method

.method public final m1()V
    .locals 2

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le2/h1;->s1(Li9/c;Z)V

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0, v1}, Le2/g0;->W(Z)V

    :cond_0
    return-void
.end method

.method public final n1(Lc2/s0;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Le2/h1;->I:Lc2/s0;

    if-eq v1, v2, :cond_18

    iput-object v1, v0, Le2/h1;->I:Lc2/s0;

    iget-object v3, v0, Le2/h1;->z:Le2/g0;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lc2/s0;->e()I

    move-result v5

    invoke-interface {v2}, Lc2/s0;->e()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-interface {v1}, Lc2/s0;->d()I

    move-result v5

    invoke-interface {v2}, Lc2/s0;->d()I

    move-result v2

    if-eq v5, v2, :cond_f

    :cond_0
    invoke-interface {v1}, Lc2/s0;->e()I

    move-result v2

    invoke-interface {v1}, Lc2/s0;->d()I

    move-result v5

    iget-object v6, v0, Le2/h1;->W:Le2/p1;

    const-wide v7, 0xffffffffL

    const/16 v9, 0x20

    if-eqz v6, :cond_1

    int-to-long v10, v2

    shl-long/2addr v10, v9

    int-to-long v12, v5

    and-long/2addr v12, v7

    or-long/2addr v10, v12

    check-cast v6, Lf2/r1;

    invoke-virtual {v6, v10, v11}, Lf2/r1;->f(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Le2/g0;->I()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Le2/h1;->B:Le2/h1;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Le2/h1;->b1()V

    :cond_2
    :goto_0
    int-to-long v10, v2

    shl-long v9, v10, v9

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Lc2/f1;->q0(J)V

    iget-object v2, v0, Le2/h1;->E:Li9/c;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Le2/h1;->t1(Z)V

    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Le2/i1;->g(I)Z

    move-result v5

    invoke-virtual {v0}, Le2/h1;->U0()Lf1/q;

    move-result-object v6

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    if-nez v6, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_e

    iget v7, v5, Lf1/q;->o:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_e

    iget v7, v5, Lf1/q;->n:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    move-object v8, v5

    move-object v9, v7

    :goto_3
    if-eqz v8, :cond_d

    instance-of v10, v8, Le2/n;

    if-eqz v10, :cond_6

    check-cast v8, Le2/n;

    invoke-interface {v8}, Le2/n;->K()V

    goto :goto_6

    :cond_6
    iget v10, v8, Lf1/q;->n:I

    and-int/2addr v10, v2

    if-eqz v10, :cond_c

    instance-of v10, v8, Le2/k;

    if-eqz v10, :cond_c

    move-object v10, v8

    check-cast v10, Le2/k;

    iget-object v10, v10, Le2/k;->A:Lf1/q;

    move v11, v4

    :goto_4
    const/4 v12, 0x1

    if-eqz v10, :cond_b

    iget v13, v10, Lf1/q;->n:I

    and-int/2addr v13, v2

    if-eqz v13, :cond_a

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v12, :cond_7

    move-object v8, v10

    goto :goto_5

    :cond_7
    if-nez v9, :cond_8

    new-instance v9, Lt0/b;

    const/16 v12, 0x10

    new-array v12, v12, [Lf1/q;

    invoke-direct {v9, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v9, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_9
    invoke-virtual {v9, v10}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_a
    :goto_5
    iget-object v10, v10, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_b
    if-ne v11, v12, :cond_c

    goto :goto_3

    :cond_c
    :goto_6
    invoke-static {v9}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v8

    goto :goto_3

    :cond_d
    if-eq v5, v6, :cond_e

    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_e
    :goto_7
    iget-object v2, v3, Le2/g0;->z:Le2/q1;

    if-eqz v2, :cond_f

    check-cast v2, Lf2/y;

    invoke-virtual {v2, v3}, Lf2/y;->z(Le2/g0;)V

    :cond_f
    iget-object v2, v0, Le2/h1;->J:Lk/d0;

    if-eqz v2, :cond_10

    iget v2, v2, Lk/d0;->e:I

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {v1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    :goto_8
    iget-object v2, v0, Le2/h1;->J:Lk/d0;

    invoke-interface {v1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v5

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    iget v6, v2, Lk/d0;->e:I

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v6, v7, :cond_12

    goto :goto_b

    :cond_12
    iget-object v6, v2, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v7, v2, Lk/d0;->c:[I

    iget-object v2, v2, Lk/d0;->a:[J

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_18

    move v9, v4

    :goto_9
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_17

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v4

    :goto_a
    if-ge v14, v12, :cond_16

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_15

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v16, v6, v15

    aget v15, v7, v15

    move-object/from16 v4, v16

    check-cast v4, Lc2/a;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v15, :cond_15

    :goto_b
    iget-object v2, v3, Le2/g0;->S:Le2/l0;

    iget-object v2, v2, Le2/l0;->p:Le2/x0;

    iget-object v2, v2, Le2/x0;->I:Le2/h0;

    invoke-virtual {v2}, Le2/h0;->f()V

    iget-object v2, v0, Le2/h1;->J:Lk/d0;

    if-nez v2, :cond_14

    sget-object v2, Lk/q0;->a:Lk/d0;

    new-instance v2, Lk/d0;

    invoke-direct {v2}, Lk/d0;-><init>()V

    iput-object v2, v0, Le2/h1;->J:Lk/d0;

    :cond_14
    invoke-virtual {v2}, Lk/d0;->a()V

    invoke-interface {v1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v3}, Lk/d0;->g(ILjava/lang/Object;)V

    goto :goto_c

    :cond_15
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_16
    if-ne v12, v13, :cond_18

    :cond_17
    if-eq v9, v8, :cond_18

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_18
    return-void
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lc2/f1;->n:J

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2/h1;->C:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p1()Ll1/c;
    .locals 7

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    iget-object v1, p0, Le2/h1;->M:Ll1/a;

    if-nez v1, :cond_1

    new-instance v1, Ll1/a;

    invoke-direct {v1}, Ll1/a;-><init>()V

    iput-object v1, p0, Le2/h1;->M:Ll1/a;

    :cond_1
    invoke-virtual {p0}, Le2/h1;->T0()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Le2/h1;->L0(J)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    neg-float v5, v5

    iput v5, v1, Ll1/a;->a:F

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    iput v3, v1, Ll1/a;->b:F

    invoke-virtual {p0}, Lc2/f1;->k0()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v3

    iput v4, v1, Ll1/a;->c:F

    invoke-virtual {p0}, Lc2/f1;->f0()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v3

    iput v2, v1, Ll1/a;->d:F

    :goto_0
    if-eq p0, v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Le2/h1;->l1(Ll1/a;ZZ)V

    invoke-virtual {v1}, Ll1/a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0

    :cond_2
    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ll1/c;

    iget v0, v1, Ll1/a;->a:F

    iget v2, v1, Ll1/a;->b:F

    iget v3, v1, Ll1/a;->c:F

    iget v1, v1, Ll1/a;->d:F

    invoke-direct {p0, v0, v2, v3, v1}, Ll1/c;-><init>(FFFF)V

    return-object p0
.end method

.method public final q1(Le2/h1;[F)V
    .locals 5

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le2/h1;->B:Le2/h1;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Le2/h1;->q1(Le2/h1;[F)V

    iget-wide v0, p0, Le2/h1;->K:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lb3/j;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Le2/h1;->Z:[F

    invoke-static {p1}, Lm1/z;->d([F)V

    iget-wide v0, p0, Le2/h1;->K:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    neg-float v2, v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-static {p1, v2, v0}, Lm1/z;->f([FFF)V

    invoke-static {p2, p1}, Lm1/z;->e([F[F)V

    :cond_0
    iget-object p0, p0, Le2/h1;->W:Le2/p1;

    if-eqz p0, :cond_1

    check-cast p0, Lf2/r1;

    invoke-virtual {p0}, Lf2/r1;->a()[F

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2, p0}, Lm1/z;->e([F[F)V

    :cond_1
    return-void
.end method

.method public final r1(Le2/h1;[F)V
    .locals 6

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    check-cast v0, Lf2/r1;

    invoke-virtual {v0}, Lf2/r1;->b()[F

    move-result-object v0

    invoke-static {p2, v0}, Lm1/z;->e([F[F)V

    :cond_0
    iget-wide v0, p0, Le2/h1;->K:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lb3/j;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Le2/h1;->Z:[F

    invoke-static {v2}, Lm1/z;->d([F)V

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    int-to-float v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v2, v3, v0}, Lm1/z;->f([FFF)V

    invoke-static {p2, v2}, Lm1/z;->e([F[F)V

    :cond_1
    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final s1(Li9/c;Z)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Le2/h1;->z:Le2/g0;

    if-nez p2, :cond_1

    iget-object p2, p0, Le2/h1;->E:Li9/c;

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Le2/h1;->F:Lb3/c;

    iget-object v3, v2, Le2/g0;->K:Lb3/c;

    invoke-static {p2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le2/h1;->G:Lb3/m;

    iget-object v3, v2, Le2/g0;->L:Lb3/m;

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    iget-object v3, v2, Le2/g0;->K:Lb3/c;

    iput-object v3, p0, Le2/h1;->F:Lb3/c;

    iget-object v3, v2, Le2/g0;->L:Lb3/m;

    iput-object v3, p0, Le2/h1;->G:Lb3/m;

    invoke-virtual {v2}, Le2/g0;->H()Z

    move-result v3

    iget-object v9, p0, Le2/h1;->U:Le2/e1;

    if-eqz v3, :cond_d

    if-eqz p1, :cond_d

    iput-object p1, p0, Le2/h1;->E:Li9/c;

    iget-object p1, p0, Le2/h1;->W:Le2/p1;

    if-nez p1, :cond_b

    invoke-static {v2}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p1

    iget-object p2, p0, Le2/h1;->T:Lc2/m0;

    if-nez p2, :cond_2

    new-instance p2, Le2/e1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Le2/e1;-><init>(Le2/h1;I)V

    new-instance v0, Lc2/m0;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p0, p2}, Lc2/m0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Le2/h1;->T:Lc2/m0;

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, p2

    :goto_2
    move-object v7, p1

    check-cast v7, Lf2/y;

    iget-object p1, v7, Lf2/y;->H0:Lg5/c;

    :cond_3
    iget-object p2, p1, Lg5/c;->n:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/ReferenceQueue;

    iget-object v0, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {p2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Lt0/b;->j(Ljava/lang/Object;)Z

    :cond_4
    if-nez p2, :cond_3

    :cond_5
    iget p1, v0, Lt0/b;->n:I

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_6
    move-object p1, p2

    :goto_3
    check-cast p1, Le2/p1;

    if-eqz p1, :cond_a

    move-object v0, p1

    check-cast v0, Lf2/r1;

    iget-object v3, v0, Lf2/r1;->m:Lm1/t;

    if-eqz v3, :cond_9

    iget-object v4, v0, Lf2/r1;->l:Lp1/b;

    iget-boolean v4, v4, Lp1/b;->s:Z

    if-nez v4, :cond_7

    const-string v4, "layer should have been released before reuse"

    invoke-static {v4}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v3}, Lm1/t;->b()Lp1/b;

    move-result-object v3

    iput-object v3, v0, Lf2/r1;->l:Lp1/b;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lf2/r1;->r:Z

    iput-object v8, v0, Lf2/r1;->o:Li9/e;

    iput-object v9, v0, Lf2/r1;->p:Li9/a;

    iput-boolean v3, v0, Lf2/r1;->B:Z

    iput-boolean v3, v0, Lf2/r1;->C:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lf2/r1;->D:Z

    iget-object v4, v0, Lf2/r1;->s:[F

    invoke-static {v4}, Lm1/z;->d([F)V

    iget-object v4, v0, Lf2/r1;->t:[F

    if-eqz v4, :cond_8

    invoke-static {v4}, Lm1/z;->d([F)V

    :cond_8
    sget-wide v4, Lm1/k0;->b:J

    iput-wide v4, v0, Lf2/r1;->z:J

    iput-boolean v3, v0, Lf2/r1;->E:Z

    const v4, 0x7fffffff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long v6, v4, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v4, v10

    or-long/2addr v4, v6

    iput-wide v4, v0, Lf2/r1;->q:J

    iput-object p2, v0, Lf2/r1;->A:Lm1/v;

    iput v3, v0, Lf2/r1;->y:I

    goto :goto_4

    :cond_9
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_a
    new-instance v4, Lf2/r1;

    invoke-virtual {v7}, Lf2/y;->getGraphicsContext()Lm1/t;

    move-result-object p1

    invoke-interface {p1}, Lm1/t;->b()Lp1/b;

    move-result-object v5

    invoke-virtual {v7}, Lf2/y;->getGraphicsContext()Lm1/t;

    move-result-object v6

    invoke-direct/range {v4 .. v9}, Lf2/r1;-><init>(Lp1/b;Lm1/t;Lf2/y;Li9/e;Li9/a;)V

    move-object p1, v4

    :goto_4
    iget-wide v3, p0, Lc2/f1;->n:J

    move-object p2, p1

    check-cast p2, Lf2/r1;

    invoke-virtual {p2, v3, v4}, Lf2/r1;->f(J)V

    iget-wide v3, p0, Le2/h1;->K:J

    invoke-virtual {p2, v3, v4}, Lf2/r1;->e(J)V

    iput-object p1, p0, Le2/h1;->W:Le2/p1;

    invoke-virtual {p0, v1}, Le2/h1;->t1(Z)V

    iput-boolean v1, v2, Le2/g0;->V:Z

    invoke-virtual {v9}, Le2/e1;->invoke()Ljava/lang/Object;

    return-void

    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {p0, v1}, Le2/h1;->t1(Z)V

    :cond_c
    return-void

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Le2/h1;->E:Li9/c;

    iget-object p2, p0, Le2/h1;->W:Le2/p1;

    if-eqz p2, :cond_13

    check-cast p2, Lf2/r1;

    iget-object v3, p2, Lf2/r1;->n:Lf2/y;

    invoke-virtual {p2}, Lf2/r1;->b()[F

    move-result-object v4

    invoke-static {v4}, Lm1/v;->r([F)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2}, Le2/g0;->N()V

    :cond_e
    iput-object p1, p2, Lf2/r1;->o:Li9/e;

    iput-object p1, p2, Lf2/r1;->p:Li9/a;

    iput-boolean v1, p2, Lf2/r1;->r:Z

    iget-boolean v4, p2, Lf2/r1;->u:Z

    if-eqz v4, :cond_f

    iput-boolean v0, p2, Lf2/r1;->u:Z

    invoke-virtual {v3, p2, v0}, Lf2/y;->x(Le2/p1;Z)V

    :cond_f
    iget-object v4, p2, Lf2/r1;->m:Lm1/t;

    if-eqz v4, :cond_12

    iget-object v5, p2, Lf2/r1;->l:Lp1/b;

    invoke-interface {v4, v5}, Lm1/t;->a(Lp1/b;)V

    iget-object v4, v3, Lf2/y;->H0:Lg5/c;

    :cond_10
    iget-object v5, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ref/ReferenceQueue;

    iget-object v6, v4, Lg5/c;->m:Ljava/lang/Object;

    check-cast v6, Lt0/b;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v6, v5}, Lt0/b;->j(Ljava/lang/Object;)Z

    :cond_11
    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, p2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object v3, v3, Lf2/y;->O:Lk/h0;

    invoke-virtual {v3, p2}, Lk/h0;->j(Ljava/lang/Object;)Z

    :cond_12
    iput-boolean v1, v2, Le2/g0;->V:Z

    invoke-virtual {v9}, Le2/e1;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object p2

    iget-boolean p2, p2, Lf1/q;->y:Z

    if-eqz p2, :cond_13

    invoke-virtual {v2}, Le2/g0;->I()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, v2, Le2/g0;->z:Le2/q1;

    if-eqz p2, :cond_13

    check-cast p2, Lf2/y;

    invoke-virtual {p2, v2}, Lf2/y;->z(Le2/g0;)V

    :cond_13
    iput-object p1, p0, Le2/h1;->W:Le2/p1;

    iput-boolean v0, p0, Le2/h1;->V:Z

    return-void
.end method

.method public final t1(Z)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Le2/h1;->W:Le2/p1;

    if-eqz v1, :cond_3c

    iget-object v2, v0, Le2/h1;->E:Li9/c;

    if-eqz v2, :cond_3b

    sget-object v3, Le2/h1;->X:Lm1/f0;

    invoke-virtual {v3}, Lm1/f0;->b()V

    iget-object v4, v0, Le2/h1;->z:Le2/g0;

    iget-object v5, v4, Le2/g0;->K:Lb3/c;

    iput-object v5, v3, Lm1/f0;->A:Lb3/c;

    iget-object v5, v4, Le2/g0;->L:Lb3/m;

    iput-object v5, v3, Lm1/f0;->B:Lb3/m;

    iget-wide v5, v0, Lc2/f1;->n:J

    invoke-static {v5, v6}, Ly4/s;->E(J)J

    move-result-wide v5

    iput-wide v5, v3, Lm1/f0;->z:J

    invoke-static {v4}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v5

    check-cast v5, Lf2/y;

    invoke-virtual {v5}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v5

    sget-object v6, Le2/d;->p:Le2/d;

    new-instance v7, Ld5/a;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v2, v0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v5, Le2/s1;->a:Ld1/b0;

    invoke-virtual {v2, v0, v6, v7}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iget-object v2, v0, Le2/h1;->N:Le2/v;

    if-nez v2, :cond_0

    new-instance v2, Le2/v;

    invoke-direct {v2}, Le2/v;-><init>()V

    iput-object v2, v0, Le2/h1;->N:Le2/v;

    :cond_0
    sget-object v5, Le2/h1;->Y:Le2/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, Le2/v;->a:F

    iput v6, v5, Le2/v;->a:F

    iget v6, v2, Le2/v;->b:F

    iput v6, v5, Le2/v;->b:F

    iget v6, v2, Le2/v;->c:F

    iput v6, v5, Le2/v;->c:F

    iget v6, v2, Le2/v;->d:F

    iput v6, v5, Le2/v;->d:F

    iget v6, v2, Le2/v;->e:F

    iput v6, v5, Le2/v;->e:F

    iget-wide v6, v2, Le2/v;->f:J

    iput-wide v6, v5, Le2/v;->f:J

    iget v6, v3, Lm1/f0;->m:F

    iput v6, v2, Le2/v;->a:F

    iget v7, v3, Lm1/f0;->n:F

    iput v7, v2, Le2/v;->b:F

    iget v7, v3, Lm1/f0;->p:F

    iput v7, v2, Le2/v;->c:F

    iget v7, v3, Lm1/f0;->t:F

    iput v7, v2, Le2/v;->d:F

    iget v7, v3, Lm1/f0;->u:F

    iput v7, v2, Le2/v;->e:F

    iget-wide v7, v3, Lm1/f0;->v:J

    iput-wide v7, v2, Le2/v;->f:J

    check-cast v1, Lf2/r1;

    iget-object v9, v1, Lf2/r1;->n:Lf2/y;

    iget v10, v3, Lm1/f0;->l:I

    iget v11, v1, Lf2/r1;->y:I

    or-int/2addr v10, v11

    iget-object v11, v3, Lm1/f0;->B:Lb3/m;

    iput-object v11, v1, Lf2/r1;->w:Lb3/m;

    iget-object v11, v3, Lm1/f0;->A:Lb3/c;

    iput-object v11, v1, Lf2/r1;->v:Lb3/c;

    and-int/lit16 v11, v10, 0x1000

    if-eqz v11, :cond_1

    iput-wide v7, v1, Lf2/r1;->z:J

    :cond_1
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_3

    iget-object v7, v1, Lf2/r1;->l:Lp1/b;

    iget-object v7, v7, Lp1/b;->a:Lp1/c;

    iget v8, v7, Lp1/c;->j:F

    cmpg-float v8, v8, v6

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    iput v6, v7, Lp1/c;->j:F

    iget-object v7, v7, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v7, v6}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    :cond_3
    :goto_0
    and-int/lit8 v6, v10, 0x2

    if-eqz v6, :cond_5

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v7, v3, Lm1/f0;->n:F

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v8, v6, Lp1/c;->k:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    iput v7, v6, Lp1/c;->k:F

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v7}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    :cond_5
    :goto_1
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_7

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v7, v3, Lm1/f0;->o:F

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v8, v6, Lp1/c;->h:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    iput v7, v6, Lp1/c;->h:F

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v7}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    :cond_7
    :goto_2
    and-int/lit8 v6, v10, 0x8

    if-eqz v6, :cond_8

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    :cond_8
    and-int/lit8 v6, v10, 0x10

    if-eqz v6, :cond_a

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v7, v3, Lm1/f0;->p:F

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v8, v6, Lp1/c;->l:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    iput v7, v6, Lp1/c;->l:F

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v7}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    :cond_a
    :goto_3
    and-int/lit8 v6, v10, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_c

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v12, v3, Lm1/f0;->q:F

    iget-object v13, v6, Lp1/b;->a:Lp1/c;

    iget v14, v13, Lp1/c;->m:F

    cmpg-float v14, v14, v12

    if-nez v14, :cond_b

    goto :goto_4

    :cond_b
    iput v12, v13, Lp1/c;->m:F

    iget-object v13, v13, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v13, v12}, Landroid/graphics/RenderNode;->setElevation(F)Z

    iput-boolean v8, v6, Lp1/b;->g:Z

    invoke-virtual {v6}, Lp1/b;->a()V

    :goto_4
    iget v6, v3, Lm1/f0;->q:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    iget-boolean v6, v1, Lf2/r1;->E:Z

    if-nez v6, :cond_c

    iget-object v6, v1, Lf2/r1;->p:Li9/a;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_c
    and-int/lit8 v6, v10, 0x40

    if-eqz v6, :cond_d

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-wide v12, v3, Lm1/f0;->r:J

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget-wide v14, v6, Lp1/c;->n:J

    invoke-static {v12, v13, v14, v15}, Lm1/p;->c(JJ)Z

    move-result v14

    if-nez v14, :cond_d

    iput-wide v12, v6, Lp1/c;->n:J

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-static {v12, v13}, Lm1/v;->y(J)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    :cond_d
    and-int/lit16 v6, v10, 0x80

    if-eqz v6, :cond_e

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-wide v12, v3, Lm1/f0;->s:J

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget-wide v14, v6, Lp1/c;->o:J

    invoke-static {v12, v13, v14, v15}, Lm1/p;->c(JJ)Z

    move-result v14

    if-nez v14, :cond_e

    iput-wide v12, v6, Lp1/c;->o:J

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-static {v12, v13}, Lm1/v;->y(J)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    :cond_e
    and-int/lit16 v6, v10, 0x400

    if-eqz v6, :cond_10

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v12, v3, Lm1/f0;->t:F

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v13, v6, Lp1/c;->p:F

    cmpg-float v13, v13, v12

    if-nez v13, :cond_f

    goto :goto_5

    :cond_f
    iput v12, v6, Lp1/c;->p:F

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v12}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    :cond_10
    :goto_5
    and-int/lit16 v6, v10, 0x100

    if-eqz v6, :cond_11

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    :cond_11
    and-int/lit16 v6, v10, 0x200

    if-eqz v6, :cond_12

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    :cond_12
    and-int/lit16 v6, v10, 0x800

    if-eqz v6, :cond_14

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v12, v3, Lm1/f0;->u:F

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v13, v6, Lp1/c;->q:F

    cmpg-float v13, v13, v12

    if-nez v13, :cond_13

    goto :goto_6

    :cond_13
    iput v12, v6, Lp1/c;->q:F

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v12}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    :cond_14
    :goto_6
    const-wide v16, 0xffffffffL

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    if-eqz v11, :cond_18

    const-wide v18, 0x7fffffff7fffffffL

    iget-wide v12, v1, Lf2/r1;->z:J

    const/16 v20, 0x20

    sget-wide v6, Lm1/k0;->b:J

    invoke-static {v12, v13, v6, v7}, Lm1/k0;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-wide v12, v6, Lp1/b;->v:J

    invoke-static {v12, v13, v14, v15}, Ll1/b;->b(JJ)Z

    move-result v7

    if-nez v7, :cond_15

    iput-wide v14, v6, Lp1/b;->v:J

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->resetPivot()Z

    :cond_15
    move-wide/from16 v21, v14

    goto :goto_7

    :cond_16
    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-wide v12, v1, Lf2/r1;->z:J

    invoke-static {v12, v13}, Lm1/k0;->b(J)F

    move-result v7

    iget-wide v12, v1, Lf2/r1;->q:J

    shr-long v12, v12, v20

    long-to-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v7, v12

    iget-wide v12, v1, Lf2/r1;->z:J

    invoke-static {v12, v13}, Lm1/k0;->c(J)F

    move-result v12

    move/from16 v21, v12

    iget-wide v11, v1, Lf2/r1;->q:J

    and-long v11, v11, v16

    long-to-int v11, v11

    int-to-float v11, v11

    mul-float v12, v21, v11

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-wide/from16 v21, v14

    int-to-long v13, v7

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v11, v7

    shl-long v13, v13, v20

    and-long v11, v11, v16

    or-long/2addr v11, v13

    iget-wide v13, v6, Lp1/b;->v:J

    invoke-static {v13, v14, v11, v12}, Ll1/b;->b(JJ)Z

    move-result v7

    if-nez v7, :cond_19

    iput-wide v11, v6, Lp1/b;->v:J

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget-object v6, v6, Lp1/c;->c:Landroid/graphics/RenderNode;

    and-long v13, v11, v18

    cmp-long v7, v13, v21

    if-nez v7, :cond_17

    invoke-virtual {v6}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_7

    :cond_17
    shr-long v13, v11, v20

    long-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    and-long v11, v11, v16

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    goto :goto_7

    :cond_18
    move-wide/from16 v21, v14

    const-wide v18, 0x7fffffff7fffffffL

    const/16 v20, 0x20

    :cond_19
    :goto_7
    and-int/lit16 v6, v10, 0x4000

    if-eqz v6, :cond_1a

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-boolean v7, v3, Lm1/f0;->x:Z

    iget-boolean v11, v6, Lp1/b;->w:Z

    if-eq v11, v7, :cond_1a

    iput-boolean v7, v6, Lp1/b;->w:Z

    iput-boolean v8, v6, Lp1/b;->g:Z

    invoke-virtual {v6}, Lp1/b;->a()V

    :cond_1a
    const/high16 v6, 0x20000

    and-int/2addr v6, v10

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    :cond_1b
    const/high16 v6, 0x40000

    and-int/2addr v6, v10

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    :cond_1c
    const/high16 v6, 0x80000

    and-int/2addr v6, v10

    if-eqz v6, :cond_1f

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v7, v3, Lm1/f0;->C:I

    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v11, v6, Lp1/c;->i:I

    if-ne v11, v7, :cond_1d

    goto :goto_8

    :cond_1d
    iput v7, v6, Lp1/c;->i:I

    iget-object v11, v6, Lp1/c;->e:Landroid/graphics/Paint;

    if-nez v11, :cond_1e

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, v6, Lp1/c;->e:Landroid/graphics/Paint;

    :cond_1e
    invoke-static {v7}, Lm1/v;->v(I)Landroid/graphics/BlendMode;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {v6}, Lp1/c;->d()V

    :cond_1f
    :goto_8
    const v6, 0x8000

    and-int/2addr v6, v10

    if-eqz v6, :cond_24

    iget-object v6, v1, Lf2/r1;->l:Lp1/b;

    iget v11, v3, Lm1/f0;->y:I

    if-nez v11, :cond_20

    const/4 v12, 0x0

    goto :goto_9

    :cond_20
    if-ne v11, v8, :cond_21

    move v12, v8

    goto :goto_9

    :cond_21
    const/4 v12, 0x2

    if-ne v11, v12, :cond_23

    :goto_9
    iget-object v6, v6, Lp1/b;->a:Lp1/c;

    iget v11, v6, Lp1/c;->u:I

    if-ne v11, v12, :cond_22

    goto :goto_a

    :cond_22
    iput v12, v6, Lp1/c;->u:I

    invoke-virtual {v6}, Lp1/c;->d()V

    goto :goto_a

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported composition strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_a
    and-int/lit16 v6, v10, 0x1f1b

    if-eqz v6, :cond_25

    iput-boolean v8, v1, Lf2/r1;->B:Z

    iput-boolean v8, v1, Lf2/r1;->C:Z

    :cond_25
    iget-object v6, v1, Lf2/r1;->A:Lm1/v;

    iget-object v11, v3, Lm1/f0;->D:Lm1/v;

    invoke-static {v6, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    iget-object v6, v3, Lm1/f0;->D:Lm1/v;

    iput-object v6, v1, Lf2/r1;->A:Lm1/v;

    if-nez v6, :cond_26

    move-object/from16 v29, v9

    move v11, v10

    goto/16 :goto_d

    :cond_26
    iget-object v11, v1, Lf2/r1;->l:Lp1/b;

    instance-of v13, v6, Lm1/b0;

    if-eqz v13, :cond_27

    move-object v13, v6

    check-cast v13, Lm1/b0;

    iget-object v13, v13, Lm1/b0;->c:Ll1/c;

    iget v14, v13, Ll1/c;->a:F

    iget v15, v13, Ll1/c;->b:F

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-object/from16 v29, v9

    int-to-long v8, v7

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move-object/from16 v21, v13

    int-to-long v12, v7

    shl-long v7, v8, v20

    and-long v12, v12, v16

    or-long v24, v7, v12

    move-object/from16 v7, v21

    iget v8, v7, Ll1/c;->c:F

    sub-float/2addr v8, v14

    iget v7, v7, Ll1/c;->d:F

    sub-float/2addr v7, v15

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v12, v7

    shl-long v7, v8, v20

    and-long v12, v12, v16

    or-long v26, v7, v12

    const/16 v28, 0x0

    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v28}, Lp1/b;->g(JJF)V

    :goto_b
    move v11, v10

    goto/16 :goto_c

    :cond_27
    move-object/from16 v29, v9

    move-object v7, v11

    instance-of v8, v6, Lm1/a0;

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_28

    move-object v8, v6

    check-cast v8, Lm1/a0;

    iget-object v8, v8, Lm1/a0;->c:Lm1/g;

    const/4 v9, 0x0

    iput-object v9, v7, Lp1/b;->k:Lm1/v;

    move-wide/from16 v14, v21

    iput-wide v14, v7, Lp1/b;->i:J

    iput-wide v12, v7, Lp1/b;->h:J

    const/4 v11, 0x0

    iput v11, v7, Lp1/b;->j:F

    const/4 v9, 0x1

    iput-boolean v9, v7, Lp1/b;->g:Z

    const/4 v9, 0x0

    iput-boolean v9, v7, Lp1/b;->n:Z

    iput-object v8, v7, Lp1/b;->l:Lm1/g;

    invoke-virtual {v7}, Lp1/b;->a()V

    goto :goto_b

    :cond_28
    instance-of v8, v6, Lm1/c0;

    if-eqz v8, :cond_2b

    move-object v8, v6

    check-cast v8, Lm1/c0;

    iget-object v9, v8, Lm1/c0;->d:Lm1/g;

    if-eqz v9, :cond_29

    const/4 v14, 0x0

    iput-object v14, v7, Lp1/b;->k:Lm1/v;

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v14, v7, Lp1/b;->i:J

    iput-wide v12, v7, Lp1/b;->h:J

    const/4 v11, 0x0

    iput v11, v7, Lp1/b;->j:F

    const/4 v8, 0x1

    iput-boolean v8, v7, Lp1/b;->g:Z

    const/4 v8, 0x0

    iput-boolean v8, v7, Lp1/b;->n:Z

    iput-object v9, v7, Lp1/b;->l:Lm1/g;

    invoke-virtual {v7}, Lp1/b;->a()V

    goto :goto_b

    :cond_29
    iget-object v8, v8, Lm1/c0;->c:Ll1/d;

    iget v9, v8, Ll1/d;->a:F

    iget v12, v8, Ll1/d;->b:F

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v13, v9

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    shl-long v13, v13, v20

    and-long v11, v11, v16

    or-long v24, v13, v11

    invoke-virtual {v8}, Ll1/d;->b()F

    move-result v9

    invoke-virtual {v8}, Ll1/d;->a()F

    move-result v11

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v12, v9

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move v11, v10

    int-to-long v9, v9

    shl-long v12, v12, v20

    and-long v9, v9, v16

    or-long v26, v12, v9

    iget-wide v8, v8, Ll1/d;->h:J

    shr-long v8, v8, v20

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v28

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v28}, Lp1/b;->g(JJF)V

    :goto_c
    instance-of v6, v6, Lm1/a0;

    if-eqz v6, :cond_2a

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-ge v6, v7, :cond_2a

    iget-object v6, v1, Lf2/r1;->p:Li9/a;

    if-eqz v6, :cond_2a

    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_2a
    :goto_d
    const/4 v6, 0x1

    goto :goto_e

    :cond_2b
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    move-object/from16 v29, v9

    move v11, v10

    const/4 v6, 0x0

    :goto_e
    iget v7, v3, Lm1/f0;->l:I

    iput v7, v1, Lf2/r1;->y:I

    if-nez v11, :cond_2d

    if-eqz v6, :cond_2f

    :cond_2d
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object/from16 v6, v29

    invoke-interface {v1, v6, v6}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    goto :goto_f

    :cond_2e
    move-object/from16 v6, v29

    :goto_f
    iget-boolean v1, v6, Lf2/y;->w:Z

    if-eqz v1, :cond_2f

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lf2/y;->N(F)V

    :cond_2f
    iget-boolean v1, v0, Le2/h1;->D:Z

    iget-boolean v6, v3, Lm1/f0;->x:Z

    iput-boolean v6, v0, Le2/h1;->D:Z

    iget v3, v3, Lm1/f0;->o:F

    iput v3, v0, Le2/h1;->H:F

    iget v3, v5, Le2/v;->a:F

    iget v6, v2, Le2/v;->a:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_30

    iget v3, v5, Le2/v;->b:F

    iget v6, v2, Le2/v;->b:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_30

    iget v3, v5, Le2/v;->c:F

    iget v6, v2, Le2/v;->c:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_30

    iget v3, v5, Le2/v;->d:F

    iget v6, v2, Le2/v;->d:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_30

    iget v3, v5, Le2/v;->e:F

    iget v6, v2, Le2/v;->e:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_30

    iget-wide v5, v5, Le2/v;->f:J

    iget-wide v2, v2, Le2/v;->f:J

    invoke-static {v5, v6, v2, v3}, Lm1/k0;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_10

    :cond_30
    const/4 v2, 0x0

    :goto_10
    if-eqz p1, :cond_32

    if-eqz v2, :cond_31

    iget-boolean v3, v0, Le2/h1;->D:Z

    if-eq v1, v3, :cond_32

    :cond_31
    iget-object v1, v4, Le2/g0;->z:Le2/q1;

    if-eqz v1, :cond_32

    check-cast v1, Lf2/y;

    invoke-virtual {v1, v4}, Lf2/y;->z(Le2/g0;)V

    :cond_32
    if-nez v2, :cond_3d

    iget-object v1, v4, Le2/g0;->S:Le2/l0;

    iget v2, v1, Le2/l0;->l:I

    if-lez v2, :cond_35

    iget-boolean v2, v1, Le2/l0;->k:Z

    if-nez v2, :cond_33

    iget-boolean v2, v1, Le2/l0;->j:Z

    if-eqz v2, :cond_34

    :cond_33
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Le2/g0;->W(Z)V

    :cond_34
    iget-object v1, v1, Le2/l0;->p:Le2/x0;

    invoke-virtual {v1}, Le2/x0;->w0()V

    :cond_35
    invoke-virtual {v4}, Le2/g0;->N()V

    invoke-static {v4}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v2

    iget-object v3, v4, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->d:Le2/h1;

    if-ne v0, v3, :cond_36

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Ln2/b;->e(Le2/g0;Z)V

    goto :goto_12

    :cond_36
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Le2/g0;->I()Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_12

    :cond_37
    invoke-static {v4}, Ln2/b;->f(Le2/g0;)J

    move-result-wide v5

    move-wide/from16 v9, v18

    invoke-static {v5, v6, v9, v10}, Lb3/j;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_39

    iput-wide v5, v4, Le2/g0;->q:J

    iput-boolean v8, v4, Le2/g0;->r:Z

    invoke-virtual {v4}, Le2/g0;->z()Lt0/b;

    move-result-object v0

    iget-object v3, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    move v9, v8

    :goto_11
    if-ge v9, v0, :cond_38

    aget-object v5, v3, v9

    check-cast v5, Le2/g0;

    invoke-virtual {v2, v5, v8}, Ln2/b;->e(Le2/g0;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_38
    invoke-virtual {v2, v4}, Ln2/b;->d(Le2/g0;)V

    goto :goto_12

    :cond_39
    invoke-virtual {v2, v4}, Ln2/b;->c(Le2/g0;)V

    :goto_12
    iget v0, v4, Le2/g0;->b0:I

    if-lez v0, :cond_3d

    iget-object v0, v1, Lf2/y;->i0:Le2/v0;

    iget-object v0, v0, Le2/v0;->e:Lg5/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Le2/g0;->b0:I

    if-lez v2, :cond_3a

    iget-object v0, v0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {v0, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v4, Le2/g0;->a0:Z

    :cond_3a
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lf2/y;->G(Le2/g0;)V

    return-void

    :cond_3b
    const-string v0, "updateLayerParameters requires a non-null layerBlock"

    invoke-static {v0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_3c
    iget-object v0, v0, Le2/h1;->E:Li9/c;

    if-nez v0, :cond_3e

    :cond_3d
    return-void

    :cond_3e
    const-string v0, "null layer with a non-null layerBlock"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final u1(J)Z
    .locals 23

    move-object/from16 v0, p0

    const-wide v1, 0x7f8000007f800000L    # 1.404448428688076E306

    and-long v3, p1, v1

    xor-long/2addr v1, v3

    const-wide v3, 0x100000001L

    sub-long/2addr v1, v3

    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    iget-object v1, v0, Le2/h1;->W:Le2/p1;

    if-eqz v1, :cond_c

    iget-boolean v0, v0, Le2/h1;->D:Z

    if-eqz v0, :cond_c

    check-cast v1, Lf2/r1;

    const/16 v0, 0x20

    shr-long v4, p1, v0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const-wide v6, 0xffffffffL

    and-long v8, p1, v6

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget-object v1, v1, Lf2/r1;->l:Lp1/b;

    iget-boolean v8, v1, Lp1/b;->w:Z

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Lp1/b;->d()Lm1/v;

    move-result-object v1

    instance-of v8, v1, Lm1/b0;

    if-eqz v8, :cond_1

    check-cast v1, Lm1/b0;

    iget-object v0, v1, Lm1/b0;->c:Ll1/c;

    iget v1, v0, Ll1/c;->a:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_0

    iget v1, v0, Ll1/c;->c:F

    cmpg-float v1, v5, v1

    if-gez v1, :cond_0

    iget v1, v0, Ll1/c;->b:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_0

    iget v0, v0, Ll1/c;->d:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_1
    instance-of v8, v1, Lm1/c0;

    if-eqz v8, :cond_8

    check-cast v1, Lm1/c0;

    iget-object v1, v1, Lm1/c0;->c:Ll1/d;

    iget v8, v1, Ll1/d;->a:F

    iget-wide v9, v1, Ll1/d;->f:J

    iget-wide v11, v1, Ll1/d;->h:J

    iget-wide v13, v1, Ll1/d;->g:J

    iget v15, v1, Ll1/d;->d:F

    move/from16 p0, v0

    iget v0, v1, Ll1/d;->b:F

    const/16 v16, 0x0

    iget v2, v1, Ll1/d;->c:F

    move/from16 p1, v4

    const/16 v17, 0x1

    iget-wide v3, v1, Ll1/d;->e:J

    cmpg-float v18, v5, v8

    if-ltz v18, :cond_7

    cmpl-float v18, v5, v2

    if-gez v18, :cond_7

    cmpg-float v18, p1, v0

    if-ltz v18, :cond_7

    cmpl-float v18, p1, v15

    if-ltz v18, :cond_2

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v18, v6

    shr-long v6, v3, p0

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    move/from16 p2, v2

    move-wide/from16 v20, v3

    shr-long v2, v9, p0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v7

    invoke-virtual {v1}, Ll1/d;->b()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    shr-long v3, v11, p0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    move v7, v2

    move/from16 v22, v3

    shr-long v2, v13, p0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {v1}, Ll1/d;->b()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    and-long v3, v20, v18

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    and-long v11, v11, v18

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    add-float/2addr v12, v4

    invoke-virtual {v1}, Ll1/d;->a()F

    move-result v4

    cmpg-float v4, v12, v4

    if-gtz v4, :cond_6

    and-long v9, v9, v18

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    and-long v12, v13, v18

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    add-float/2addr v12, v9

    invoke-virtual {v1}, Ll1/d;->a()F

    move-result v9

    cmpg-float v9, v12, v9

    if-gtz v9, :cond_6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, v8

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    sub-float v7, p2, v7

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v2, p2, v0

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v0, v15, v0

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    sub-float/2addr v15, v9

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    add-float/2addr v9, v8

    cmpg-float v8, v5, v6

    if-gez v8, :cond_3

    cmpg-float v8, p1, v3

    if-gez v8, :cond_3

    iget-wide v9, v1, Ll1/d;->e:J

    move v8, v3

    move v7, v6

    move/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lf2/k0;->n(FFFFJ)Z

    move-result v0

    goto/16 :goto_2

    :cond_3
    move/from16 v6, p1

    cmpg-float v3, v5, v9

    if-gez v3, :cond_4

    cmpl-float v3, v6, v15

    if-lez v3, :cond_4

    move v7, v9

    iget-wide v9, v1, Ll1/d;->h:J

    move v8, v15

    invoke-static/range {v5 .. v10}, Lf2/k0;->n(FFFFJ)Z

    move-result v0

    goto :goto_2

    :cond_4
    move v3, v7

    cmpl-float v7, v5, v3

    if-lez v7, :cond_5

    cmpg-float v7, v6, v4

    if-gez v7, :cond_5

    iget-wide v9, v1, Ll1/d;->f:J

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v10}, Lf2/k0;->n(FFFFJ)Z

    move-result v0

    goto :goto_2

    :cond_5
    cmpl-float v3, v5, v2

    if-lez v3, :cond_b

    cmpl-float v3, v6, v0

    if-lez v3, :cond_b

    iget-wide v9, v1, Ll1/d;->g:J

    move v8, v0

    move v7, v2

    invoke-static/range {v5 .. v10}, Lf2/k0;->n(FFFFJ)Z

    move-result v0

    goto :goto_2

    :cond_6
    move/from16 v6, p1

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    invoke-static {v0, v1}, Lm1/g;->b(Lm1/g;Ll1/d;)V

    invoke-static {v5, v6, v0}, Lf2/k0;->m(FFLm1/g;)Z

    move-result v0

    goto :goto_2

    :cond_7
    :goto_0
    move/from16 v0, v16

    goto :goto_2

    :cond_8
    move v6, v4

    const/16 v16, 0x0

    const/16 v17, 0x1

    instance-of v0, v1, Lm1/a0;

    if-eqz v0, :cond_9

    check-cast v1, Lm1/a0;

    iget-object v0, v1, Lm1/a0;->c:Lm1/g;

    invoke-static {v5, v6, v0}, Lf2/k0;->m(FFLm1/g;)Z

    move-result v0

    goto :goto_2

    :cond_9
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x1

    :cond_b
    move/from16 v0, v17

    :goto_2
    if-eqz v0, :cond_e

    goto :goto_3

    :cond_c
    const/16 v17, 0x1

    :goto_3
    return v17

    :cond_d
    const/16 v16, 0x0

    :cond_e
    return v16
.end method

.method public final x0()Le2/p0;
    .locals 0

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    return-object p0
.end method

.method public final z0()Lc2/u;
    .locals 0

    return-object p0
.end method
