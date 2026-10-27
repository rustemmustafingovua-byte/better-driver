.class public final Lm0/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/c2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm0/v1;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm0/a1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/a1;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lm0/a1;->b:Z

    return-void
.end method

.method public constructor <init>(ZLm0/b1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm0/a1;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lm0/a1;->b:Z

    iput-object p2, p0, Lm0/a1;->c:Ljava/lang/Object;

    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method

.method private final g(JLm0/b0;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(JLm0/b0;)V
    .locals 5

    iget p1, p0, Lm0/a1;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p1, Lm0/b1;

    invoke-virtual {p1}, Lm0/b1;->e()Lb0/d1;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lm0/b1;->f()Lm0/a0;

    move-result-object p2

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lm0/a1;->b:Z

    if-eqz p0, :cond_1

    iget-object p3, p2, Lm0/a0;->a:Lm0/z;

    goto :goto_0

    :cond_1
    iget-object p3, p2, Lm0/a0;->b:Lm0/z;

    :goto_0
    iget-object v0, p1, Lm0/b1;->a:Lm0/i1;

    iget-object v0, v0, Lm0/i1;->c:Lk/b0;

    iget-wide v1, p3, Lm0/z;->c:J

    invoke-virtual {v0, v1, v2}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    check-cast p3, Lm0/q;

    invoke-virtual {p3}, Lm0/q;->c()Lc2/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, p2, p0}, Lm0/q;->a(Lm0/a0;Z)J

    move-result-wide p2

    const-wide v1, 0x7fffffff7fffffffL

    and-long/2addr v1, p2

    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, p3}, Lm0/s0;->a(J)J

    move-result-wide p2

    invoke-virtual {p1}, Lm0/b1;->j()Lc2/u;

    move-result-object p0

    invoke-interface {p0, v0, p2, p3}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p2

    iget-object p0, p1, Lm0/b1;->n:Lr0/e1;

    new-instance v0, Ll1/b;

    invoke-direct {v0, p2, p3}, Ll1/b;-><init>(J)V

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p1, Lm0/b1;->o:Lr0/e1;

    new-instance p1, Ll1/b;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ll1/b;-><init>(J)V

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const-string p0, "Current selectable should have layout coordinates."

    invoke-static {p0}, Lt/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    const-string p0, "SelectionRegistrar should contain the current selection\'s selectableIds"

    invoke-static {p0}, Lt/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lm0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/v1;

    iget-object v0, p0, Lm0/v1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm0/v1;->t(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/b1;->x:Z

    invoke-virtual {p0}, Lm0/b1;->o()V

    iget-object v0, p0, Lm0/b1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lm0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/v1;

    iget-object v0, p0, Lm0/v1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm0/v1;->t(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/b1;->x:Z

    invoke-virtual {p0}, Lm0/b1;->o()V

    iget-object v0, p0, Lm0/b1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 8

    iget v0, p0, Lm0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast v0, Lm0/v1;

    iget-boolean p0, p0, Lm0/a1;->b:Z

    if-eqz p0, :cond_0

    sget-object v1, Lb0/d1;->m:Lb0/d1;

    goto :goto_0

    :cond_0
    sget-object v1, Lb0/d1;->n:Lb0/d1;

    :goto_0
    iget-object v2, v0, Lm0/v1;->r:Lr0/e1;

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lm0/v1;->l(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Lm0/s0;->a(J)J

    move-result-wide v1

    iget-object p0, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lb0/z2;->e(J)J

    move-result-wide v1

    iput-wide v1, v0, Lm0/v1;->o:J

    new-instance p0, Ll1/b;

    invoke-direct {p0, v1, v2}, Ll1/b;-><init>(J)V

    iget-object v1, v0, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lm0/v1;->q:J

    const/4 p0, -0x1

    iput p0, v0, Lm0/v1;->t:I

    iget-object p0, v0, Lm0/v1;->d:Lb0/r1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lb0/r1;->q:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lm0/v1;->t(Z)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast v0, Lm0/b1;

    iget-boolean p0, p0, Lm0/a1;->b:Z

    if-eqz p0, :cond_4

    iget-object v1, v0, Lm0/b1;->p:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/b;

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lm0/b1;->q:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/b;

    :goto_2
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p0, :cond_6

    iget-object v2, v1, Lm0/a0;->a:Lm0/z;

    goto :goto_3

    :cond_6
    iget-object v2, v1, Lm0/a0;->b:Lm0/z;

    :goto_3
    invoke-virtual {v0, v2}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lm0/q;->c()Lc2/u;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v1, p0}, Lm0/q;->a(Lm0/a0;Z)J

    move-result-wide v1

    const-wide v4, 0x7fffffff7fffffffL

    and-long/2addr v4, v1

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v1, v2}, Lm0/s0;->a(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lm0/b1;->j()Lc2/u;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v1

    new-instance v3, Ll1/b;

    invoke-direct {v3, v1, v2}, Ll1/b;-><init>(J)V

    iget-object v1, v0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {v1, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    if-eqz p0, :cond_a

    sget-object p0, Lb0/d1;->m:Lb0/d1;

    goto :goto_4

    :cond_a
    sget-object p0, Lb0/d1;->n:Lb0/d1;

    :goto_4
    iget-object v1, v0, Lm0/b1;->r:Lr0/e1;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lm0/b1;->x:Z

    invoke-virtual {v0}, Lm0/b1;->o()V

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(J)V
    .locals 9

    iget v0, p0, Lm0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/a1;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lm0/v1;

    iget-wide v2, v1, Lm0/v1;->q:J

    invoke-static {v2, v3, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    iput-wide p1, v1, Lm0/v1;->q:J

    iget-wide v2, v1, Lm0/v1;->o:J

    invoke-static {v2, v3, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    new-instance v0, Ll1/b;

    invoke-direct {v0, p1, p2}, Ll1/b;-><init>(J)V

    iget-object p1, v1, Lm0/v1;->s:Lr0/e1;

    invoke-virtual {p1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    invoke-virtual {v1}, Lm0/v1;->i()Ll1/b;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v3, p1, Ll1/b;->a:J

    sget-object v7, Lm0/c0;->g:Lm0/b0;

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lm0/a1;->b:Z

    invoke-static/range {v1 .. v8}, Lm0/v1;->c(Lm0/v1;Lu2/x;JZZLm0/b0;Z)J

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lm0/v1;->t(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lm0/a1;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lm0/b1;

    iget-object v0, v1, Lm0/b1;->n:Lr0/e1;

    iget-object v8, v1, Lm0/b1;->o:Lr0/e1;

    invoke-virtual {v1}, Lm0/b1;->e()Lb0/d1;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v2, v2, Ll1/b;->a:J

    invoke-static {v2, v3, p1, p2}, Ll1/b;->e(JJ)J

    move-result-wide p1

    new-instance v2, Ll1/b;

    invoke-direct {v2, p1, p2}, Ll1/b;-><init>(J)V

    invoke-virtual {v8, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/b;

    iget-wide p1, p1, Ll1/b;->a:J

    invoke-virtual {v8}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/b;

    iget-wide v2, v2, Ll1/b;->a:J

    invoke-static {p1, p2, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v2

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/b;

    iget-wide v4, p1, Ll1/b;->a:J

    iget-boolean v6, p0, Lm0/a1;->b:Z

    sget-object v7, Lm0/c0;->g:Lm0/b0;

    invoke-virtual/range {v1 .. v7}, Lm0/b1;->n(JJZLm0/b0;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ll1/b;

    invoke-direct {p0, v2, v3}, Ll1/b;-><init>(J)V

    invoke-virtual {v0, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    new-instance p0, Ll1/b;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Ll1/b;-><init>(J)V

    invoke-virtual {v8, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel()V
    .locals 2

    iget v0, p0, Lm0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lm0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/b1;->x:Z

    invoke-virtual {p0}, Lm0/b1;->o()V

    iget-object v0, p0, Lm0/b1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {p0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
