.class public final Lc2/k1;
.super Le2/d0;
.source "SourceFile"


# static fields
.field public static final b:Lc2/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/k1;

    const-string v1, "Undefined intrinsics block and it is required"

    invoke-direct {v0, v1}, Le2/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc2/k1;->b:Lc2/k1;

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sget-object v0, Lu8/s;->l:Lu8/s;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/q0;

    invoke-interface {v5, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v5

    iget v6, v5, Lc2/f1;->l:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v5, Lc2/f1;->m:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, p3, p4}, Lb3/b;->g(IJ)I

    move-result p2

    invoke-static {v4, p3, p4}, Lb3/b;->f(IJ)I

    move-result p3

    new-instance p4, Lc2/j1;

    const/4 v1, 0x0

    invoke-direct {p4, v1, p0}, Lc2/j1;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {p1, p2, p3, v0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    invoke-static {p2, p3, p4}, Lb3/b;->g(IJ)I

    move-result p2

    iget v1, p0, Lc2/f1;->m:I

    invoke-static {v1, p3, p4}, Lb3/b;->f(IJ)I

    move-result p3

    new-instance p4, Lc2/i1;

    const/4 v1, 0x0

    invoke-direct {p4, p0, v1}, Lc2/i1;-><init>(Lc2/f1;I)V

    invoke-interface {p1, p2, p3, v0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result p2

    sget-object p3, Lc2/g1;->n:Lc2/g1;

    invoke-interface {p1, p0, p2, v0, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
