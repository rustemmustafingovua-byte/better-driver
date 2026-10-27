.class public abstract Le2/q0;
.super Le2/p0;
.source "SourceFile"

# interfaces
.implements Lc2/q0;


# instance fields
.field public A:J

.field public B:Ljava/util/LinkedHashMap;

.field public final C:Lc2/p0;

.field public D:Lc2/s0;

.field public final E:Lk/d0;

.field public final z:Le2/h1;


# direct methods
.method public constructor <init>(Le2/h1;)V
    .locals 2

    invoke-direct {p0}, Le2/p0;-><init>()V

    iput-object p1, p0, Le2/q0;->z:Le2/h1;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le2/q0;->A:J

    new-instance p1, Lc2/p0;

    invoke-direct {p1, p0}, Lc2/p0;-><init>(Le2/q0;)V

    iput-object p1, p0, Le2/q0;->C:Lc2/p0;

    sget-object p1, Lk/q0;->a:Lk/d0;

    new-instance p1, Lk/d0;

    invoke-direct {p1}, Lk/d0;-><init>()V

    iput-object p1, p0, Le2/q0;->E:Lk/d0;

    return-void
.end method

.method public static final J0(Le2/q0;Lc2/s0;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc2/s0;->e()I

    move-result v0

    invoke-interface {p1}, Lc2/s0;->d()I

    move-result v1

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lc2/f1;->q0(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc2/f1;->q0(J)V

    :goto_0
    iget-object v0, p0, Le2/q0;->D:Lc2/s0;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Le2/q0;->B:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-interface {p1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Le2/q0;->B:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le2/q0;->z:Le2/h1;

    iget-object v0, v0, Le2/h1;->z:Le2/g0;

    iget-object v0, v0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->q:Le2/t0;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Le2/t0;->C:Le2/h0;

    invoke-virtual {v0}, Le2/h0;->f()V

    iget-object v0, p0, Le2/q0;->B:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le2/q0;->B:Ljava/util/LinkedHashMap;

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    iput-object p1, p0, Le2/q0;->D:Lc2/s0;

    return-void
.end method


# virtual methods
.method public final A0()Z
    .locals 0

    iget-object p0, p0, Le2/q0;->D:Lc2/s0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B0()Le2/g0;
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    return-object p0
.end method

.method public final C0()Lc2/s0;
    .locals 0

    iget-object p0, p0, Le2/q0;->D:Lc2/s0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "LookaheadDelegate has not been measured yet when measureResult is requested."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final D0()Le2/p0;
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E0()J
    .locals 2

    iget-wide v0, p0, Le2/q0;->A:J

    return-wide v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Le2/h1;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I0()V
    .locals 4

    iget-wide v0, p0, Le2/q0;->A:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Le2/q0;->o0(JFLi9/c;)V

    return-void
.end method

.method public K0()V
    .locals 0

    invoke-virtual {p0}, Le2/q0;->C0()Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->c()V

    return-void
.end method

.method public final L0(J)V
    .locals 2

    iget-wide v0, p0, Le2/q0;->A:J

    invoke-static {v0, v1, p1, p2}, Lb3/j;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Le2/q0;->A:J

    iget-object p1, p0, Le2/q0;->z:Le2/h1;

    iget-object p2, p1, Le2/h1;->z:Le2/g0;

    iget-object p2, p2, Le2/g0;->S:Le2/l0;

    iget-object p2, p2, Le2/l0;->q:Le2/t0;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Le2/t0;->w0()V

    :cond_0
    invoke-static {p1}, Le2/p0;->G0(Le2/h1;)V

    :cond_1
    iget-boolean p1, p0, Le2/p0;->v:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Le2/q0;->C0()Lc2/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Le2/p0;->w0(Lc2/s0;)V

    :cond_2
    return-void
.end method

.method public final M0(Le2/q0;Z)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Le2/p0;->t:Z

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-wide v2, p0, Le2/q0;->A:J

    invoke-static {v0, v1, v2, v3}, Lb3/j;->c(JJ)J

    move-result-wide v0

    :cond_1
    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Le2/h1;->S()F

    move-result p0

    return p0
.end method

.method public final T()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Le2/h1;->a()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    return-object p0
.end method

.method public final o0(JFLi9/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le2/q0;->L0(J)V

    iget-boolean p1, p0, Le2/p0;->u:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le2/q0;->K0()V

    return-void
.end method

.method public final x0()Le2/p0;
    .locals 0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final z0()Lc2/u;
    .locals 0

    iget-object p0, p0, Le2/q0;->C:Lc2/p0;

    return-object p0
.end method
