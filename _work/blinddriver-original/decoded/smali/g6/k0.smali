.class public final Lg6/k0;
.super Lg6/p0;
.source "SourceFile"


# static fields
.field public static final s:Lg6/k0;

.field public static final t:Lg6/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/k0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lg6/k0;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Lg6/k0;->s:Lg6/k0;

    new-instance v0, Lg6/k0;

    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/k0;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    sput-object v0, Lg6/k0;->t:Lg6/k0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Double;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Lt6/f;->r:Lt6/f;

    invoke-direct {p0, p1, v1, p2, v0}, Lg6/p0;-><init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;)Ljava/lang/Double;
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lg6/p0;->q:Ljava/lang/Object;

    const/4 v4, 0x4

    const/4 v5, 0x3

    iget-object v6, p0, Lg6/f1;->l:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    if-eq v0, v5, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    :cond_1
    invoke-static {p1, p2, v6}, Lg6/f1;->k(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_2
    if-ne v0, v4, :cond_3

    check-cast v3, Ljava/lang/Double;

    return-object v3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_7
    invoke-virtual {p2, v6, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lg6/f1;->e(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p2, v0}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_9
    if-ne v1, v4, :cond_a

    check-cast v3, Ljava/lang/Double;

    return-object v3

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p2}, Lg6/p0;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_b
    invoke-static {v0}, Lw5/h;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ls5/c;->d(I)V

    :try_start_0
    sget-object p0, Ls5/s;->o:Ls5/s;

    invoke-virtual {p1, p0}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_c
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "not a valid `Double` value"

    invoke-virtual {p2, v6, v0, p1, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ls5/n;->C:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->E(Ls5/k;Lb6/i;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg6/k0;->Z(Ls5/k;Lb6/i;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    sget-object p3, Ls5/n;->C:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p3, p0, Lg6/p0;->r:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->E(Ls5/k;Lb6/i;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg6/k0;->Z(Ls5/k;Lb6/i;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
