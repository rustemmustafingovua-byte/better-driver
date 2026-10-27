.class public final Lva/a;
.super Lva/c;
.source "SourceFile"


# instance fields
.field public c:Landroid/content/Context;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwa/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lwa/n;

    sget-object v2, Lwa/f;->e:Lwa/e;

    invoke-direct {v1, v2}, Lwa/n;-><init>(Lwa/m;)V

    new-instance v2, Lwa/n;

    sget-object v3, Lwa/l;->a:Lwa/j;

    invoke-direct {v2, v3}, Lwa/n;-><init>(Lwa/m;)V

    new-instance v3, Lwa/n;

    sget-object v4, Lwa/i;->a:Lwa/g;

    invoke-direct {v3, v4}, Lwa/n;-><init>(Lwa/m;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lwa/o;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    move-object v4, v3

    check-cast v4, Lwa/o;

    invoke-interface {v4}, Lwa/o;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lva/a;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lza/b;
    .locals 1

    const-string v0, "buildTrustRootIndex"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lva/c;->a(Ljavax/net/ssl/X509TrustManager;)Lza/b;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lq3/a0;->e()Landroid/util/CloseGuard;

    move-result-object p0

    invoke-static {p0}, Lq3/a0;->l(Landroid/util/CloseGuard;)V

    return-object p0

    :cond_0
    invoke-super {p0}, Lva/c;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const-string p0, "null cannot be cast to non-null type android.util.CloseGuard"

    invoke-static {p1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq3/a0;->f(Ljava/lang/Object;)Landroid/util/CloseGuard;

    move-result-object p0

    invoke-static {p0}, Lq3/a0;->t(Landroid/util/CloseGuard;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lva/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Ljavax/net/ssl/SSLContext;
    .locals 1

    const-string v0, "newSSLContext"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    invoke-super {p0}, Lva/c;->e()Ljavax/net/ssl/SSLContext;

    move-result-object p0

    return-object p0
.end method
