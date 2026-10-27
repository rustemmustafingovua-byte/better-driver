.class public final Lgc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/f;


# instance fields
.field public a:[Lpb/a;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Lpb/i;


# virtual methods
.method public final a(ILpb/a;)Lgc/b;
    .locals 11

    iget-object v2, p0, Lgc/i;->a:[Lpb/a;

    aget-object v3, v2, p1

    invoke-virtual {p2, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-object v3, v2, v3

    invoke-virtual {p2, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    aget-object v3, v2, p1

    invoke-virtual {v3, p2}, Lpb/a;->i(Lpb/a;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_2

    :goto_2
    move-object v7, v3

    goto :goto_3

    :cond_2
    if-lez p1, :cond_3

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v2, v3

    goto :goto_2

    :cond_3
    aget-object v3, v2, v4

    array-length v7, v2

    sub-int/2addr v7, v5

    aget-object v7, v2, v7

    invoke-virtual {v3, v7}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, p1, -0x1

    if-gez v3, :cond_4

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    :cond_4
    aget-object v3, v2, v3

    goto :goto_2

    :cond_5
    move-object v7, v9

    :goto_3
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, p2}, Lpb/a;->i(Lpb/a;)Z

    move-result v10

    if-nez v10, :cond_6

    move-object v9, v3

    goto :goto_5

    :cond_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge p1, v3, :cond_7

    add-int/lit8 v1, p1, 0x2

    aget-object v9, v2, v1

    goto :goto_5

    :cond_7
    aget-object v3, v2, v4

    array-length v4, v2

    sub-int/2addr v4, v5

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v1, p1, 0x2

    array-length v3, v2

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_8

    goto :goto_4

    :cond_8
    move v5, v1

    :goto_4
    aget-object v9, v2, v5

    :cond_9
    :goto_5
    new-instance v1, Lgc/b;

    move-object v2, v1

    iget-boolean v1, p0, Lgc/i;->b:Z

    move-object v3, v2

    iget v2, p0, Lgc/i;->c:I

    move-object v4, v3

    iget v3, p0, Lgc/i;->d:I

    move-object v5, v4

    iget v4, p0, Lgc/i;->e:I

    iget-object v0, p0, Lgc/i;->f:Lpb/i;

    move-object v8, v5

    move-object v5, v0

    move-object v0, v8

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lgc/b;-><init>(ZIIILpb/i;ZLpb/a;Lpb/a;Lpb/a;)V

    return-object v0
.end method

.method public final b(I)Lpb/a;
    .locals 0

    iget-object p0, p0, Lgc/i;->a:[Lpb/a;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final c()[Lpb/a;
    .locals 0

    iget-object p0, p0, Lgc/i;->a:[Lpb/a;

    return-object p0
.end method

.method public final d(ILpb/a;)Z
    .locals 3

    iget-object p0, p0, Lgc/i;->a:[Lpb/a;

    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Lpb/a;->i(Lpb/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-object v0, p0, v0

    invoke-virtual {p2, v0}, Lpb/a;->i(Lpb/a;)Z

    move-result p2

    if-eqz p2, :cond_3

    array-length p2, p0

    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    aget-object p2, p0, v0

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lgc/i;->a:[Lpb/a;

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lqb/a;

    iget-object p0, p0, Lgc/i;->a:[Lpb/a;

    invoke-direct {v0, p0}, Lqb/a;-><init>([Lpb/a;)V

    invoke-static {v0}, Ld7/g;->v(Lqb/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
