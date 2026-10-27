.class public final Lc5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/e;


# instance fields
.field public final a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/g;->a:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final a(Lx4/d;)Lx9/c;
    .locals 3

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/m0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, p0, v1, v2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    new-instance p0, Lx9/c;

    const/4 p1, -0x2

    sget-object v1, Lw9/a;->l:Lw9/a;

    sget-object v2, Ly8/i;->l:Ly8/i;

    invoke-direct {p0, v0, v2, p1, v1}, Lx9/c;-><init>(Li9/e;Ly8/h;ILw9/a;)V

    return-object p0
.end method

.method public final b(Lg5/o;)Z
    .locals 0

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lg5/o;->j:Lx4/d;

    invoke-virtual {p0}, Lx4/d;->a()Landroid/net/NetworkRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lg5/o;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lc5/g;->b(Lg5/o;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn\'t supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
