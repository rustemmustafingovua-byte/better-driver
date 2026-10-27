.class public final Lp/h0;
.super Lp/g;
.source "SourceFile"


# instance fields
.field public X:Li9/a;

.field public Y:Z

.field public final Z:Lk/b0;

.field public final a0:Lk/b0;


# direct methods
.method public constructor <init>(Li9/a;Li9/a;Ls/i;Z)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v7, p1

    move-object v1, p3

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lp/g;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    iput-object p2, v0, Lp/h0;->X:Li9/a;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lp/h0;->Y:Z

    sget-object p0, Lk/o;->a:Lk/b0;

    new-instance p0, Lk/b0;

    invoke-direct {p0}, Lk/b0;-><init>()V

    iput-object p0, v0, Lp/h0;->Z:Lk/b0;

    new-instance p0, Lk/b0;

    invoke-direct {p0}, Lk/b0;-><init>()V

    iput-object p0, v0, Lp/h0;->a0:Lk/b0;

    return-void
.end method


# virtual methods
.method public final G0()V
    .locals 0

    invoke-virtual {p0}, Lp/h0;->b1()V

    return-void
.end method

.method public final P0(Lm2/x;)V
    .locals 3

    iget-object v0, p0, Lp/h0;->X:Li9/a;

    if-eqz v0, :cond_0

    new-instance v0, Lod/x4;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/l;->c:Lm2/w;

    new-instance v1, Lm2/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final Q0()Ly1/k0;
    .locals 2

    new-instance v0, Lb0/w0;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    sget-object p0, Ly1/g0;->a:Ly1/l;

    new-instance p0, Ly1/k0;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Ly1/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    return-object p0
.end method

.method public final X0()V
    .locals 0

    invoke-virtual {p0}, Lp/h0;->b1()V

    return-void
.end method

.method public final Y0(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Lp/h0;->X:Li9/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp/h0;->Z:Lk/b0;

    invoke-virtual {p1, v0, v1}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v2

    new-instance v3, Lad/w;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5, v4}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v4, 0x3

    invoke-static {v2, v5, v5, v3, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lk/b0;->h(JLjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lp/h0;->a0:Lk/b0;

    invoke-virtual {p0, v0, v1}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp/e0;

    return p1
.end method

.method public final Z0(Landroid/view/KeyEvent;)V
    .locals 5

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Lp/h0;->Z:Lk/b0;

    invoke-virtual {p1, v0, v1}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu9/v0;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lu9/v0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Lk/b0;->g(J)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    iget-object p0, p0, Lp/g;->H:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final b1()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lp/h0;->Z:Lk/b0;

    iget-object v2, v1, Lk/b0;->c:[Ljava/lang/Object;

    iget-object v3, v1, Lk/b0;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-ltz v4, :cond_3

    move v14, v13

    const-wide/16 v15, 0x80

    :goto_0
    aget-wide v5, v3, v14

    const-wide/16 v17, 0xff

    not-long v7, v5

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_2

    sub-int v7, v14, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    move v8, v13

    :goto_1
    if-ge v8, v7, :cond_1

    and-long v19, v5, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_0

    shl-int/lit8 v19, v14, 0x3

    add-int v19, v19, v8

    aget-object v19, v2, v19

    move/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Lu9/v0;

    move-wide/from16 v21, v10

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_0
    move/from16 v20, v9

    move-wide/from16 v21, v10

    :goto_2
    shr-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v20

    move-wide/from16 v10, v21

    goto :goto_1

    :cond_1
    move/from16 v20, v9

    move-wide/from16 v21, v10

    if-ne v7, v12, :cond_4

    goto :goto_3

    :cond_2
    move/from16 v20, v9

    move-wide/from16 v21, v10

    :goto_3
    if-eq v14, v4, :cond_4

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v20

    move-wide/from16 v10, v21

    goto :goto_0

    :cond_3
    move/from16 v20, v9

    move-wide/from16 v21, v10

    const-wide/16 v15, 0x80

    const-wide/16 v17, 0xff

    :cond_4
    invoke-virtual {v1}, Lk/b0;->a()V

    iget-object v0, v0, Lp/h0;->a0:Lk/b0;

    iget-object v1, v0, Lk/b0;->c:[Ljava/lang/Object;

    iget-object v2, v0, Lk/b0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_8

    move v4, v13

    :goto_4
    aget-wide v5, v2, v4

    not-long v7, v5

    shl-long v7, v7, v20

    and-long/2addr v7, v5

    and-long v7, v7, v21

    cmp-long v7, v7, v21

    if-eqz v7, :cond_7

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    move v8, v13

    :goto_5
    if-ge v8, v7, :cond_6

    and-long v9, v5, v17

    cmp-long v9, v9, v15

    if-ltz v9, :cond_5

    shr-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    shl-int/lit8 v0, v4, 0x3

    add-int/2addr v0, v8

    aget-object v0, v1, v0

    check-cast v0, Lp/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :cond_6
    if-ne v7, v12, :cond_8

    :cond_7
    if-eq v4, v3, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lk/b0;->a()V

    return-void
.end method
