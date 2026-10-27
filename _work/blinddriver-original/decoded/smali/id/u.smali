.class public final Lid/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/d1;


# static fields
.field public static final Companion:Lid/s;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/u;->Companion:Lid/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://router.project-osrm.org"

    iput-object v0, p0, Lid/u;->l:Ljava/lang/String;

    const-string v0, "OSRM"

    iput-object v0, p0, Lid/u;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lid/t;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/t;

    iget v1, v0, Lid/t;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/t;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/t;

    invoke-direct {v0, p0, p3}, Lid/t;-><init>(Lid/u;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/t;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/t;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

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

    if-lt p3, v2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_3

    const-string p3, "3"

    goto :goto_1

    :cond_3
    const-string p3, "false"

    :goto_1
    new-instance v8, Lgd/e;

    const/16 v2, 0x8

    invoke-direct {v8, v2}, Lgd/e;-><init>(I)V

    const/16 v9, 0x1e

    const-string v5, ";"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {v5, v6, p2}, Lid/i1;->a(DI)Ljava/lang/String;

    move-result-object p2

    const-string v2, "&bearings="

    invoke-static {v2, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lid/u;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/route/v1/driving/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?alternatives="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overview=full&geometries=polyline6&steps=true"

    invoke-static {v2, p1, p2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lsc/r0;->a:Lsc/f;

    iput v3, v0, Lid/t;->n:I

    sget-object p2, Lsc/r0;->a:Lsc/f;

    invoke-interface {p2, p1, v0}, Lsc/f;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Ljava/lang/String;

    sget-object p1, Lid/u;->Companion:Lid/s;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lid/u;->m:Ljava/lang/String;

    const-string p1, "routes"

    invoke-static {p3, p0, p1}, Lid/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0449\u043e\u043d\u0430\u0439\u043c\u0435\u043d\u0448\u0435 \u0434\u0432\u0456 \u0442\u043e\u0447\u043a\u0438"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lid/u;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lid/u;->m:Ljava/lang/String;

    return-object p0
.end method
