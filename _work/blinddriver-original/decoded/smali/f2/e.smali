.class public final Lf2/e;
.super Lf2/b;
.source "SourceFile"


# static fields
.field public static e:Lf2/e;

.field public static final f:La3/j;

.field public static final g:La3/j;


# instance fields
.field public c:Lp2/j0;

.field public d:Lm2/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, La3/j;->m:La3/j;

    sput-object v0, Lf2/e;->f:La3/j;

    sget-object v0, La3/j;->l:La3/j;

    sput-object v0, Lf2/e;->g:La3/j;

    return-void
.end method


# virtual methods
.method public final b(I)[I
    .locals 5

    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lf2/e;->d:Lm2/p;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lm2/p;->g()Ll1/c;

    move-result-object v0

    iget v2, v0, Ll1/c;->d:F

    iget v0, v0, Ll1/c;->b:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lf2/e;->c:Lp2/j0;

    const-string v3, "layoutResult"

    if-eqz v2, :cond_9

    iget-object v2, v2, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v2, p1}, Lp2/n;->d(I)I

    move-result v2

    iget-object v4, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v4, v2}, Lp2/n;->f(I)F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_6

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    iget v4, v0, Lp2/n;->f:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lp2/n;->f(I)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v0, v2}, Lp2/n;->e(F)I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    iget v0, v0, Lp2/n;->f:I

    goto :goto_1

    :goto_2
    sget-object v1, Lf2/e;->g:La3/j;

    invoke-virtual {p0, v0, v1}, Lf2/e;->g(ILa3/j;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lf2/b;->c(II)[I

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_a
    :try_start_1
    const-string p0, "node"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1
.end method

.method public final e(I)[I
    .locals 5

    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lf2/e;->d:Lm2/p;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lm2/p;->g()Ll1/c;

    move-result-object v0

    iget v2, v0, Ll1/c;->d:F

    iget v0, v0, Ll1/c;->b:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-object v2, p0, Lf2/e;->c:Lp2/j0;

    const-string v3, "layoutResult"

    if-eqz v2, :cond_7

    iget-object v2, v2, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v2, p1}, Lp2/n;->d(I)I

    move-result v2

    iget-object v4, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v4, v2}, Lp2/n;->f(I)F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v0, v4}, Lp2/n;->e(F)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_5

    if-ge v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    sget-object v1, Lf2/e;->f:La3/j;

    invoke-virtual {p0, v0, v1}, Lf2/e;->g(ILa3/j;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lf2/b;->c(II)[I

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_8
    :try_start_1
    const-string p0, "node"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1
.end method

.method public final g(ILa3/j;)I
    .locals 4

    iget-object v0, p0, Lf2/e;->c:Lp2/j0;

    const/4 v1, 0x0

    const-string v2, "layoutResult"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lp2/j0;->g(I)I

    move-result v0

    iget-object v3, p0, Lf2/e;->c:Lp2/j0;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lp2/j0;->h(I)La3/j;

    move-result-object v0

    if-eq p2, v0, :cond_1

    iget-object p0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lp2/j0;->g(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lf2/e;->c:Lp2/j0;

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    iget-object p0, p0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p0, p1, p2}, Lp2/n;->c(IZ)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_2
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method
