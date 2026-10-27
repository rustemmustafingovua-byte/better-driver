.class public final Lm0/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# static fields
.field public static final a:Lm0/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/k1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm0/k1;->a:Lm0/k1;

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/q0;

    invoke-interface {v4, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v4

    iget v5, v4, Lc2/f1;->l:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v4, Lc2/f1;->m:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lb0/i;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lb0/i;-><init>(ILjava/util/ArrayList;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, v2, v3, p0, p2}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
