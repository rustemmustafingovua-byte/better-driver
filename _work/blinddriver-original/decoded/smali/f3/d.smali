.class public final Lf3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# static fields
.field public static final b:Lf3/d;

.field public static final c:Lf3/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf3/d;-><init>(I)V

    sput-object v0, Lf3/d;->b:Lf3/d;

    new-instance v0, Lf3/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf3/d;-><init>(I)V

    sput-object v0, Lf3/d;->c:Lf3/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 7

    iget p0, p0, Lf3/d;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sget-object v0, Lu8/s;->l:Lu8/s;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/q0;

    invoke-interface {v5, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v5

    iget v6, v5, Lc2/f1;->l:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v5, Lc2/f1;->m:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lc2/j1;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, Lc2/j1;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {p1, v3, v4, v0, p2}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lc2/i1;

    const/4 v1, 0x2

    invoke-direct {p4, p0, v1}, Lc2/i1;-><init>(Lc2/f1;I)V

    invoke-interface {p1, p2, p3, v0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Lf3/b;->q:Lf3/b;

    invoke-interface {p1, v1, v1, v0, p0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v1, v0, :cond_3

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

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v2

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v3

    :cond_4
    new-instance p2, Lc2/j1;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lc2/j1;-><init>(ILjava/util/ArrayList;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, v2, v3, p0, p2}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
