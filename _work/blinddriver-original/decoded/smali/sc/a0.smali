.class public final Lsc/a0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public l:I

.field public synthetic m:D

.field public synthetic n:D

.field public synthetic o:D


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    check-cast p4, Ly8/c;

    new-instance v2, Lsc/a0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p4}, La9/i;-><init>(ILy8/c;)V

    iput-wide p0, v2, Lsc/a0;->m:D

    iput-wide v0, v2, Lsc/a0;->n:D

    iput-wide p2, v2, Lsc/a0;->o:D

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v2, p0}, Lsc/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-wide v1, p0, Lsc/a0;->m:D

    iget-wide v3, p0, Lsc/a0;->n:D

    iget-wide v5, p0, Lsc/a0;->o:D

    sget-object v9, Lz8/a;->l:Lz8/a;

    iget v0, p0, Lsc/a0;->l:I

    const/4 v10, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v8, :cond_1

    if-ne v0, v10, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object p1

    invoke-virtual {p1}, Lid/e;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v0, Lsc/z;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lsc/z;-><init>(DDDLy8/c;)V

    iput-wide v1, p0, Lsc/a0;->m:D

    iput-wide v3, p0, Lsc/a0;->n:D

    iput-wide v5, p0, Lsc/a0;->o:D

    iput v8, p0, Lsc/a0;->l:I

    invoke-static {p1, v0, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_4
    sget-object p1, Lsc/i0;->S:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p1, :cond_6

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v11, Lz9/n;->a:Lv9/d;

    new-instance v0, Lsc/z;

    const/4 v8, 0x0

    move-wide v6, v5

    move-wide v4, v3

    move-wide v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lsc/z;-><init>(Lorg/maplibre/android/maps/MapLibreMap;DDDLy8/c;)V

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    iput-wide v1, p0, Lsc/a0;->m:D

    iput-wide v3, p0, Lsc/a0;->n:D

    iput-wide v5, p0, Lsc/a0;->o:D

    iput v10, p0, Lsc/a0;->l:I

    invoke-static {v11, v0, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_5

    :goto_1
    return-object v9

    :cond_5
    :goto_2
    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_7

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_7
    return-object p1
.end method
