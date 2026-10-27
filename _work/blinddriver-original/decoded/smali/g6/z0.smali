.class public final Lg6/z0;
.super Lg6/b1;
.source "SourceFile"


# static fields
.field public static final s:Lg6/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/z0;

    const-class v1, [J

    invoke-direct {v0, v1}, Lg6/b1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/z0;->s:Lg6/z0;

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [J

    check-cast p2, [J

    array-length p0, p1

    array-length v0, p2

    add-int v1, p0, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final a0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0
.end method

.method public final c0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->K(Ls5/k;Lb6/i;)J

    move-result-wide p0

    const/4 p2, 0x1

    new-array p2, p2, [J

    const/4 v0, 0x0

    aput-wide p0, p2, v0

    return-object p2
.end method

.method public final d0(Le6/r;Ljava/lang/Boolean;)Lg6/b1;
    .locals 1

    new-instance v0, Lg6/z0;

    invoke-direct {v0, p0, p1, p2}, Lg6/b1;-><init>(Lg6/b1;Le6/r;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lg6/b1;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lb6/i;->Z()Lf8/u3;

    move-result-object v0

    iget-object v1, v0, Lf8/u3;->e:Ljava/lang/Object;

    check-cast v1, Lu6/c;

    if-nez v1, :cond_1

    new-instance v1, Lu6/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lu6/c;-><init>(I)V

    iput-object v1, v0, Lf8/u3;->e:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lf8/u3;->e:Ljava/lang/Object;

    check-cast v0, Lu6/c;

    invoke-virtual {v0}, Lu6/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-eq v4, v5, :cond_6

    sget-object v5, Ls5/n;->B:Ls5/n;

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v5, Ls5/n;->F:Ls5/n;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lg6/b1;->q:Le6/r;

    if-eqz v4, :cond_3

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lg6/f1;->K(Ls5/k;Lb6/i;)J

    move-result-wide v4

    :goto_1
    array-length v6, v1

    if-lt v3, v6, :cond_5

    invoke-virtual {v0, v3, v1}, Lu6/c;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    move-object v1, v6

    :cond_5
    add-int/lit8 v6, v3, 0x1

    :try_start_1
    aput-wide v4, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v6

    goto :goto_0

    :catch_1
    move-exception p0

    move v3, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3, v1}, Lu6/c;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0

    :goto_2
    iget p1, v0, Lu6/c;->d:I

    add-int/2addr p1, v3

    invoke-static {p0, v1, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method
