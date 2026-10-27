.class public final Le3/b;
.super Lja/c;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Le3/b;->n:I

    iput-object p1, p0, Le3/b;->o:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lja/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lq3/x0;Ljava/util/List;)Lq3/x0;
    .locals 5

    iget p2, p0, Le3/b;->n:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Le3/b;->o:Landroid/view/ViewGroup;

    check-cast p0, Lf3/t;

    iget-boolean p2, p0, Lf3/t;->w:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p1, v1, v2, v3, p0}, Lq3/u0;->r(IIII)Lq3/x0;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object p0, p0, Le3/b;->o:Landroid/view/ViewGroup;

    check-cast p0, Le3/z;

    invoke-virtual {p0, p1}, Le3/k;->g(Lq3/x0;)Lq3/x0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lq3/e0;Lg5/l;)Lg5/l;
    .locals 12

    iget p1, p0, Le3/b;->n:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Le3/b;->o:Landroid/view/ViewGroup;

    check-cast p0, Lf3/t;

    iget-boolean p1, p0, Lf3/t;->w:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v3, p0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    iget p1, p0, Ll3/b;->a:I

    new-instance v0, Lg5/l;

    iget-object v1, p2, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Ll3/b;

    iget v2, p0, Ll3/b;->b:I

    iget v3, p0, Ll3/b;->c:I

    iget p0, p0, Ll3/b;->d:I

    invoke-static {v1, p1, v2, v3, p0}, Lq3/x0;->a(Ll3/b;IIII)Ll3/b;

    move-result-object v1

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Ll3/b;

    invoke-static {p2, p1, v2, v3, p0}, Lq3/x0;->a(Ll3/b;IIII)Ll3/b;

    move-result-object p0

    const/16 p1, 0xa

    invoke-direct {v0, p1, v1, p0}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    :goto_0
    return-object p2

    :pswitch_0
    iget-object p0, p0, Le3/b;->o:Landroid/view/ViewGroup;

    check-cast p0, Le3/z;

    iget-object p0, p0, Le3/k;->K:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    iget-object p1, p0, Le2/s;->c0:Le2/b2;

    iget-boolean p1, p1, Lf1/q;->y:Z

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Le2/h1;->R(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lr5/h1;->D(J)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int v2, v2

    const/4 v3, 0x0

    if-gez v2, :cond_3

    move v2, v3

    :cond_3
    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-gez v0, :cond_4

    move v0, v3

    :cond_4
    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v1

    invoke-interface {v1}, Lc2/u;->o()J

    move-result-wide v6

    shr-long v8, v6, p1

    long-to-int v1, v8

    and-long/2addr v6, v4

    long-to-int v6, v6

    iget-wide v7, p0, Lc2/f1;->n:J

    shr-long v9, v7, p1

    long-to-int v9, v9

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-float v8, v9

    int-to-float v7, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    shl-long v7, v8, p1

    and-long v9, v10, v4

    or-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Le2/h1;->R(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lr5/h1;->D(J)J

    move-result-wide v7

    shr-long p0, v7, p1

    long-to-int p0, p0

    sub-int/2addr v1, p0

    if-gez v1, :cond_5

    move v1, v3

    :cond_5
    and-long p0, v7, v4

    long-to-int p0, p0

    sub-int/2addr v6, p0

    if-gez v6, :cond_6

    goto :goto_1

    :cond_6
    move v3, v6

    :goto_1
    if-nez v2, :cond_7

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lg5/l;

    iget-object p1, p2, Lg5/l;->m:Ljava/lang/Object;

    check-cast p1, Ll3/b;

    invoke-static {p1, v2, v0, v1, v3}, Le3/k;->f(Ll3/b;IIII)Ll3/b;

    move-result-object p1

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Ll3/b;

    invoke-static {p2, v2, v0, v1, v3}, Le3/k;->f(Ll3/b;IIII)Ll3/b;

    move-result-object p2

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, p0

    :goto_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
