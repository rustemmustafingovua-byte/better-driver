.class public final Le2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc2/f1;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Le2/a;

.field public final i:Ljava/util/HashMap;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Le2/a;I)V
    .locals 0

    iput p2, p0, Le2/h0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lc2/f1;

    iput-object p1, p0, Le2/h0;->a:Lc2/f1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/h0;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le2/h0;->i:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Le2/h0;Lc2/a;ILe2/h1;)V
    .locals 9

    iget-object v0, p0, Le2/h0;->i:Ljava/util/HashMap;

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    :goto_0
    or-long/2addr v1, v3

    :cond_0
    iget v3, p0, Le2/h0;->j:I

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p3}, Le2/h1;->S0()Le2/q0;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v3, v3, Le2/q0;->A:J

    shr-long v7, v3, p2

    long-to-int v7, v7

    int-to-float v7, v7

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v7, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v7, p2

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    invoke-static {v3, v4, v1, v2}, Ll1/b;->e(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_0
    iget-object v3, p3, Le2/h1;->W:Le2/p1;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    check-cast v3, Lf2/r1;

    invoke-virtual {v3, v4, v1, v2}, Lf2/r1;->d(ZJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p3, Le2/h1;->K:J

    invoke-static {v1, v2, v3, v4}, Lr5/h1;->v(JJ)J

    move-result-wide v1

    :goto_1
    iget-object p3, p3, Le2/h1;->B:Le2/h1;

    invoke-static {p3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Le2/h0;->a:Lc2/f1;

    invoke-interface {v3}, Le2/a;->f()Le2/s;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p3}, Le2/h0;->b(Le2/h1;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3, p1}, Le2/h0;->c(Le2/h1;Lc2/a;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    shl-long v1, v2, p2

    and-long v3, v7, v5

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lc2/k;

    if-eqz p0, :cond_3

    and-long p2, v1, v5

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_2

    :cond_3
    shr-long p2, v1, p2

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, v0}, Lu8/v;->I(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object p3, Lc2/d;->a:Lc2/k;

    iget-object p3, p1, Lc2/a;->a:Lj9/l;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Le2/h1;)Ljava/util/Map;
    .locals 0

    iget p0, p0, Le2/h0;->j:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Le2/q0;->C0()Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Le2/h1;->C0()Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Le2/h1;Lc2/a;)I
    .locals 0

    iget p0, p0, Le2/h0;->j:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Le2/p0;->d0(Lc2/a;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1, p2}, Le2/p0;->d0(Lc2/a;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Le2/h0;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le2/h0;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le2/h0;->f:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Le2/h0;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final e()Z
    .locals 0

    invoke-virtual {p0}, Le2/h0;->h()V

    iget-object p0, p0, Le2/h0;->h:Le2/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/h0;->b:Z

    iget-object v0, p0, Le2/h0;->a:Lc2/f1;

    invoke-interface {v0}, Le2/a;->i()Le2/a;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Le2/h0;->c:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Le2/a;->W()V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Le2/h0;->e:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Le2/h0;->d:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-interface {v1}, Le2/a;->requestLayout()V

    :cond_3
    :goto_0
    iget-boolean v2, p0, Le2/h0;->f:Z

    if-eqz v2, :cond_4

    invoke-interface {v0}, Le2/a;->W()V

    :cond_4
    iget-boolean p0, p0, Le2/h0;->g:Z

    if-eqz p0, :cond_5

    invoke-interface {v0}, Le2/a;->requestLayout()V

    :cond_5
    invoke-interface {v1}, Le2/a;->b()Le2/h0;

    move-result-object p0

    invoke-virtual {p0}, Le2/h0;->f()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Le2/h0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v1, Landroidx/fragment/app/t;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Le2/h0;->a:Lc2/f1;

    invoke-interface {v2, v1}, Le2/a;->F(Landroidx/fragment/app/t;)V

    invoke-interface {v2}, Le2/a;->f()Le2/s;

    move-result-object v1

    invoke-virtual {p0, v1}, Le2/h0;->b(Le2/h1;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/h0;->b:Z

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Le2/h0;->d()Z

    move-result v0

    iget-object v1, p0, Le2/h0;->a:Lc2/f1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Le2/a;->i()Le2/a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Le2/a;->b()Le2/h0;

    move-result-object v0

    iget-object v1, v0, Le2/h0;->h:Le2/a;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Le2/a;->b()Le2/h0;

    move-result-object v0

    invoke-virtual {v0}, Le2/h0;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le2/h0;->h:Le2/a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le2/a;->b()Le2/h0;

    move-result-object v1

    invoke-virtual {v1}, Le2/h0;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Le2/a;->i()Le2/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le2/a;->b()Le2/h0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Le2/h0;->h()V

    :cond_4
    invoke-interface {v0}, Le2/a;->i()Le2/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le2/a;->b()Le2/h0;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Le2/h0;->h:Le2/a;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Le2/h0;->h:Le2/a;

    :cond_6
    :goto_1
    return-void
.end method
