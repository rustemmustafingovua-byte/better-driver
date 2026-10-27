.class public abstract Lc1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/u2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lb0/u2;-><init>(I)V

    new-instance v1, Lad/b2;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lad/b2;-><init>(I)V

    new-instance v2, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lc1/k;->a:Lg5/c;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;
    .locals 11

    iget-wide v0, p3, Lr0/q;->T:J

    const/16 v2, 0x24

    invoke-static {v2}, Lwa/h;->i(I)V

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    const-string v0, "toString(...)"

    invoke-static {v6, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc1/h;->a:Lr0/s2;

    invoke-virtual {p3, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc1/f;

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v0, v2, :cond_2

    if-eqz v5, :cond_0

    invoke-interface {v5, v6}, Lc1/f;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lc1/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    move-object v7, v0

    new-instance v3, Lc1/b;

    move-object v8, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lc1/b;-><init>(Lc1/j;Lc1/f;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p3, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v8, p0

    move-object v4, p1

    :goto_1
    check-cast v0, Lc1/b;

    iget-object p0, v0, Lc1/b;->p:[Ljava/lang/Object;

    invoke-static {v8, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object v1, v0, Lc1/b;->o:Ljava/lang/Object;

    :cond_3
    if-nez v1, :cond_4

    invoke-interface {p2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    :cond_4
    invoke-virtual {p3, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    and-int/lit8 p1, p4, 0x70

    xor-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-le p1, p2, :cond_5

    invoke-virtual {p3, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    and-int/lit8 p1, p4, 0x30

    if-ne p1, p2, :cond_7

    :cond_6
    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    or-int/2addr p0, p1

    invoke-virtual {p3, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_9

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v8, v1

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v3, Lc1/a;

    const/4 v10, 0x0

    move-object v7, v6

    move-object v9, v8

    move-object v8, v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    invoke-direct/range {v3 .. v10}, Lc1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object p1, v3

    :goto_4
    check-cast p1, Li9/a;

    invoke-static {p1, p3}, Lr0/r;->j(Li9/a;Lr0/q;)V

    return-object v8
.end method

.method public static final c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;
    .locals 2

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc1/k;->a:Lg5/c;

    const/16 v1, 0xd80

    invoke-static {p0, v0, p1, p2, v1}, Lc1/k;->b([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    shl-int/lit8 p4, p4, 0x3

    and-int/lit16 p4, p4, 0x1c00

    const/16 v0, 0x180

    or-int/2addr p4, v0

    invoke-static {p0, p1, p2, p3, p4}, Lc1/k;->b([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
