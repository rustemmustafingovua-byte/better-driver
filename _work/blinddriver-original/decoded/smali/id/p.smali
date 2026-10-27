.class public final Lid/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/d1;
.implements Lf3/z;


# instance fields
.field public final l:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lid/p;->l:Li9/a;

    return-void
.end method

.method public constructor <init>(Lp/a1;)V
    .locals 1

    const-string v0, "tokenProvider"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/p;->l:Li9/a;

    return-void
.end method


# virtual methods
.method public a(Lb3/k;JLb3/m;J)J
    .locals 7

    iget-object p0, p0, Lid/p;->l:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/j;

    iget-wide v0, p0, Lb3/j;->a:J

    iget p0, p1, Lb3/k;->a:I

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    add-int/2addr p0, v3

    shr-long v3, p5, v2

    long-to-int v3, v3

    shr-long v4, p2, v2

    long-to-int v4, v4

    sget-object v5, Lb3/m;->l:Lb3/m;

    const/4 v6, 0x1

    if-ne p4, v5, :cond_0

    move p4, v6

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p0, v3, p4, v4}, Lq/b;->a(IIZI)I

    move-result p0

    iget p1, p1, Lb3/k;->b:I

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int p4, v0

    add-int/2addr p1, p4

    and-long p4, p5, v3

    long-to-int p4, p4

    and-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p1, p4, v6, p2}, Lq/b;->a(IIZI)I

    move-result p1

    int-to-long p2, p0

    shl-long/2addr p2, v2

    int-to-long p0, p1

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lid/o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/o;

    iget v1, v0, Lid/o;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/o;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/o;

    invoke-direct {v0, p0, p3}, Lid/o;-><init>(Lid/p;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/o;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/o;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lid/o;->l:Lid/s;

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x2

    if-lt p3, v2, :cond_6

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p2, p3, v2}, Lid/i1;->a(DI)Ljava/lang/String;

    move-result-object p2

    const-string p3, "&bearings="

    invoke-static {p3, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    new-instance v8, Lgd/e;

    const/16 p3, 0x8

    invoke-direct {v8, p3}, Lgd/e;-><init>(I)V

    const/16 v9, 0x1e

    const-string v5, ";"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lid/p;->l:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string p3, "?alternatives=true&geometries=polyline6&overview=full&steps=true&annotations=maxspeed,congestion&language=uk"

    const-string v2, "&access_token="

    const-string v4, "https://api.mapbox.com/directions/v5/mapbox/driving-traffic/"

    invoke-static {v4, p1, p3, p2, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lid/u;->Companion:Lid/s;

    sget-object p2, Lsc/r0;->a:Lsc/f;

    iput-object p1, v0, Lid/o;->l:Lid/s;

    iput v3, v0, Lid/o;->o:I

    sget-object p2, Lsc/r0;->a:Lsc/f;

    invoke-interface {p2, p0, v0}, Lsc/f;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, p1

    :goto_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Mapbox"

    const-string p1, "routes"

    invoke-static {p3, p0, p1}, Lid/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0449\u043e\u043d\u0430\u0439\u043c\u0435\u043d\u0448\u0435 \u0434\u0432\u0456 \u0442\u043e\u0447\u043a\u0438"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lid/p;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Mapbox"

    return-object p0
.end method
