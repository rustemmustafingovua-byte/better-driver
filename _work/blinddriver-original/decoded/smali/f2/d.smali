.class public final Lf2/d;
.super Lf2/b;
.source "SourceFile"


# static fields
.field public static d:Lf2/d;

.field public static final e:La3/j;

.field public static final f:La3/j;


# instance fields
.field public c:Lp2/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, La3/j;->m:La3/j;

    sput-object v0, Lf2/d;->e:La3/j;

    sget-object v0, La3/j;->l:La3/j;

    sput-object v0, Lf2/d;->f:La3/j;

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
    sget-object v0, Lf2/d;->e:La3/j;

    const-string v2, "layoutResult"

    if-gez p1, :cond_3

    iget-object p1, p0, Lf2/d;->c:Lp2/j0;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    iget-object p1, p1, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p1, v3}, Lp2/n;->d(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v3, p0, Lf2/d;->c:Lp2/j0;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v3, p1}, Lp2/n;->d(I)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lf2/d;->g(ILa3/j;)I

    move-result v4

    if-ne v4, p1, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v3, 0x1

    :goto_0
    iget-object v3, p0, Lf2/d;->c:Lp2/j0;

    if-eqz v3, :cond_6

    iget-object v2, v3, Lp2/j0;->b:Lp2/n;

    iget v2, v2, Lp2/n;->f:I

    if-lt p1, v2, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0, p1, v0}, Lf2/d;->g(ILa3/j;)I

    move-result v0

    sget-object v1, Lf2/d;->f:La3/j;

    invoke-virtual {p0, p1, v1}, Lf2/d;->g(ILa3/j;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lf2/b;->c(II)[I

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(I)[I
    .locals 4

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
    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v2, Lf2/d;->f:La3/j;

    const-string v3, "layoutResult"

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lf2/d;->c:Lp2/j0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lf2/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p1, v0}, Lp2/n;->d(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lf2/d;->c:Lp2/j0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v0, p1}, Lp2/n;->d(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lf2/d;->g(ILa3/j;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v0, -0x1

    :goto_0
    if-gez p1, :cond_5

    return-object v1

    :cond_5
    sget-object v0, Lf2/d;->e:La3/j;

    invoke-virtual {p0, p1, v0}, Lf2/d;->g(ILa3/j;)I

    move-result v0

    invoke-virtual {p0, p1, v2}, Lf2/d;->g(ILa3/j;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lf2/b;->c(II)[I

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(ILa3/j;)I
    .locals 4

    iget-object v0, p0, Lf2/d;->c:Lp2/j0;

    const/4 v1, 0x0

    const-string v2, "layoutResult"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lp2/j0;->g(I)I

    move-result v0

    iget-object v3, p0, Lf2/d;->c:Lp2/j0;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lp2/j0;->h(I)La3/j;

    move-result-object v0

    if-eq p2, v0, :cond_1

    iget-object p0, p0, Lf2/d;->c:Lp2/j0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lp2/j0;->g(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lf2/d;->c:Lp2/j0;

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
