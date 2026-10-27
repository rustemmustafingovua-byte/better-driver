.class public final Ll2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILo0/f5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ll2/f;->a:I

    .line 3
    iput-object p2, p0, Ll2/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq2/j;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ll2/f;->c:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Ll2/f;->a:I

    return-void
.end method


# virtual methods
.method public a(IZZZ)F
    .locals 5

    iget-object v0, p0, Ll2/f;->c:Ljava/lang/Object;

    check-cast v0, Lq2/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v3, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-static {v3, p1, p2}, Lq2/g;->d(Landroid/text/Layout;IZ)I

    move-result v3

    iget-object v4, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Lq2/j;->f(I)I

    move-result v3

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    mul-int/lit8 v4, p1, 0x4

    if-eqz p4, :cond_2

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :cond_4
    :goto_2
    add-int/2addr v4, v1

    iget v1, p0, Ll2/f;->a:I

    if-ne v1, v4, :cond_5

    iget p0, p0, Ll2/f;->b:F

    return p0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v0, p1, p2}, Lq2/j;->h(IZ)F

    move-result p1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1, p2}, Lq2/j;->i(IZ)F

    move-result p1

    :goto_3
    if-eqz p3, :cond_7

    iput v4, p0, Ll2/f;->a:I

    iput p1, p0, Ll2/f;->b:F

    :cond_7
    return p1
.end method

.method public b(FLa9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Ll2/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ll2/e;

    iget v1, v0, Ll2/e;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll2/e;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll2/e;

    invoke-direct {v0, p0, p2}, Ll2/e;-><init>(Ll2/f;La9/c;)V

    :goto_0
    iget-object p2, v0, Ll2/e;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Ll2/e;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Ll2/f;->c:Ljava/lang/Object;

    check-cast p2, Lo0/f5;

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    iput v3, v0, Ll2/e;->n:I

    invoke-virtual {p2, v2, v0}, Lo0/f5;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p2, p0, Ll2/f;->b:F

    add-float/2addr p2, p1

    iput p2, p0, Ll2/f;->b:F

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
