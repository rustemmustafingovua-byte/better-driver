.class public abstract Lbd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "\"fetched\"\\s*:\\s*\"([0-9]{4}-[0-9]{2}-[0-9]{2})\""

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbd/a;->a:Lr9/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x258

    invoke-static {v0, p0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lbd/a;->a:Lr9/i;

    invoke-virtual {v1, p0, v0}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v0}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lia/c;->d:Lia/b;

    invoke-virtual {v0, p0}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object p0

    instance-of v0, p0, Lia/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lia/y;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "points"

    invoke-virtual {p0, v0}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lia/e;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lia/e;

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :cond_3
    iget-object p0, v1, Lia/e;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lia/l;

    invoke-static {v1}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v1

    iget-object v2, v1, Lia/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lia/e;->a(I)Lia/l;

    move-result-object v2

    invoke-static {v2}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v2

    invoke-virtual {v2}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lia/e;->a(I)Lia/l;

    move-result-object v2

    invoke-static {v2}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v2

    invoke-virtual {v2}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    new-instance v3, Lbd/j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lia/e;->a(I)Lia/l;

    move-result-object v1

    invoke-static {v1}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v1

    invoke-virtual {v1}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lbd/j;-><init>(DDLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method
