.class public final Lx/o;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/j;


# static fields
.field public static final C:Lx/m;


# instance fields
.field public A:Lr/a;

.field public B:Lr/m1;

.field public z:Lw/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx/o;->C:Lx/m;

    return-void
.end method


# virtual methods
.method public final M0(Lx/j;I)Z
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :goto_0
    iget-object v0, p0, Lx/o;->B:Lr/m1;

    sget-object v2, Lr/m1;->m:Lr/m1;

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :goto_1
    iget-object v0, p0, Lx/o;->B:Lr/m1;

    sget-object v2, Lr/m1;->l:Lr/m1;

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_3
    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lx/o;->N0(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p1, p1, Lx/j;->b:I

    iget-object p0, p0, Lx/o;->z:Lw/d;

    iget-object p0, p0, Lw/d;->a:Lw/p;

    invoke-virtual {p0}, Lw/p;->g()Lw/k;

    move-result-object p0

    iget p0, p0, Lw/k;->n:I

    sub-int/2addr p0, v1

    if-ge p1, p0, :cond_7

    goto :goto_3

    :cond_6
    iget p0, p1, Lx/j;->a:I

    if-lez p0, :cond_7

    :goto_3
    return v1

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lazy list does not support beyond bounds layout for the specified direction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N0(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    return v0

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->L:Lb3/m;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_8

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    return v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lazy list does not support beyond bounds layout for the specified direction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 1

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/16 v0, 0xa

    invoke-direct {p4, p0, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
