.class public final Lp/f1;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Li9/c;

.field public final b:Li9/c;

.field public final c:Lp/v1;


# direct methods
.method public constructor <init>(Li9/c;Li9/c;Lp/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/f1;->a:Li9/c;

    iput-object p2, p0, Lp/f1;->b:Li9/c;

    iput-object p3, p0, Lp/f1;->c:Lp/v1;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lp/h1;

    iget-object v1, p0, Lp/f1;->a:Li9/c;

    iget-object v2, p0, Lp/f1;->b:Li9/c;

    iget-object p0, p0, Lp/f1;->c:Lp/v1;

    invoke-direct {v0, v1, v2, p0}, Lp/h1;-><init>(Li9/c;Li9/c;Lp/v1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 7

    check-cast p1, Lp/h1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lp/h1;->B:Lp/v1;

    iget-object v1, p1, Lp/h1;->C:Landroid/view/View;

    iget-object v2, p1, Lp/h1;->D:Lb3/c;

    iget-object v3, p0, Lp/f1;->a:Li9/c;

    iput-object v3, p1, Lp/h1;->z:Li9/c;

    iget-object v3, p0, Lp/f1;->b:Li9/c;

    iput-object v3, p1, Lp/h1;->A:Li9/c;

    iget-object p0, p0, Lp/f1;->c:Lp/v1;

    iput-object p0, p1, Lp/h1;->B:Lp/v1;

    invoke-static {p1}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v4

    iget-object v4, v4, Le2/g0;->K:Lb3/c;

    iget-object v5, p1, Lp/h1;->E:Lm2/j;

    if-eqz v5, :cond_2

    sget-object v5, Lp/i1;->a:Lm2/w;

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-static {v5, v5}, Lb3/f;->b(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5, v5}, Lb3/f;->b(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v4, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lp/h1;->N0()V

    :cond_2
    invoke-virtual {p1}, Lp/h1;->O0()V

    return-void
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lp/f1;->a:Li9/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lm/a;->c(FII)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lm/a;->g(IIZ)I

    move-result v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v0, v2, v4, v5}, Lm/a;->f(IIJ)I

    move-result v0

    invoke-static {v1, v0, v2}, Lm/a;->c(FII)I

    move-result v0

    invoke-static {v1, v0, v2}, Lm/a;->c(FII)I

    move-result v0

    invoke-static {v0, v2, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v1, p0, Lp/f1;->b:Li9/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lp/f1;->c:Lp/v1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
