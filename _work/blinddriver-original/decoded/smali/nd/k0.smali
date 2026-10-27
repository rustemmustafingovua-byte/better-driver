.class public abstract Lnd/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lnd/k0;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x78a78b27

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lnd/k0;->a:Lr0/a0;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd/j0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Lr0/q;->q(Z)V

    return-object p0

    :cond_0
    invoke-virtual {p2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v4, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    or-int/2addr p3, v2

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p3, :cond_4

    sget-object p3, Lr0/m;->a:Lr0/e;

    if-ne v2, p3, :cond_5

    :cond_4
    new-instance v2, Lb0/r0;

    const/16 p3, 0x11

    invoke-direct {v2, p3, v0, p1}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Li9/c;

    invoke-static {p0, v2}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object p0

    invoke-virtual {p2, v1}, Lr0/q;->q(Z)V

    return-object p0
.end method
