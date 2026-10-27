.class public final Le3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final synthetic a:Le3/z;

.field public final synthetic b:Le2/g0;


# direct methods
.method public constructor <init>(Le3/z;Le2/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/f;->a:Le3/z;

    iput-object p2, p0, Le3/f;->b:Le2/g0;

    return-void
.end method


# virtual methods
.method public final e(Lc2/p;Ljava/util/List;I)I
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object p0, p0, Le3/f;->a:Le3/z;

    invoke-virtual {p0}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, p3, v0}, Le3/k;->e(Le3/z;III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object p0, p0, Le3/f;->a:Le3/z;

    invoke-virtual {p0}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, p3, v0}, Le3/k;->e(Le3/z;III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final g(Lc2/p;Ljava/util/List;I)I
    .locals 0

    iget-object p0, p0, Le3/f;->a:Le3/z;

    invoke-virtual {p0}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p1}, Le3/k;->e(Le3/z;III)I

    move-result p1

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final h(Lc2/p;Ljava/util/List;I)I
    .locals 0

    iget-object p0, p0, Le3/f;->a:Le3/z;

    invoke-virtual {p0}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p1}, Le3/k;->e(Le3/z;III)I

    move-result p1

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 4

    iget-object p2, p0, Le3/f;->a:Le3/z;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v1, Lu8/s;->l:Lu8/s;

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result p2

    sget-object p3, Le3/c;->n:Le3/c;

    invoke-interface {p1, p0, p2, v1, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_1
    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v2

    invoke-virtual {p2}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, v2, v3}, Le3/k;->e(Le3/z;III)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v2

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    invoke-virtual {p2}, Le3/k;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, p3, p4}, Le3/k;->e(Le3/z;III)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    new-instance v0, Le3/d;

    iget-object p0, p0, Le3/f;->b:Le2/g0;

    const/4 v2, 0x1

    invoke-direct {v0, p2, p0, v2}, Le3/d;-><init>(Le3/z;Le2/g0;I)V

    invoke-interface {p1, p3, p4, v1, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
