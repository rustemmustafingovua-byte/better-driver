.class public final Lc5/e;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/e;->a:I

    .line 2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 3
    iput-object p1, p0, Lc5/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le5/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/e;->a:I

    iput-object p1, p0, Lc5/e;->b:Ljava/lang/Object;

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    iget v0, p0, Lc5/e;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "network"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object v0, Le5/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network capabilities changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/e;->b:Ljava/lang/Object;

    check-cast p0, Le5/h;

    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x12

    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    new-instance v2, Lc5/h;

    invoke-direct {v2, p1, v0, v1, p2}, Lc5/h;-><init>(ZZZZ)V

    invoke-virtual {p0, v2}, Le5/f;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "network"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object p2, Lc5/p;->a:Ljava/lang/String;

    const-string v0, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    invoke-virtual {p1, p2, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/e;->b:Ljava/lang/Object;

    check-cast p0, Lc5/f;

    sget-object p1, Lc5/a;->a:Lc5/a;

    invoke-virtual {p0, p1}, Lc5/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    iget v0, p0, Lc5/e;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "network"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object v0, Le5/i;->a:Ljava/lang/String;

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/e;->b:Ljava/lang/Object;

    check-cast p0, Le5/h;

    iget-object p1, p0, Le5/h;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Le5/i;->a(Landroid/net/ConnectivityManager;)Lc5/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le5/f;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "network"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p1

    sget-object v0, Lc5/p;->a:Ljava/lang/String;

    const-string v1, "NetworkRequestConstraintController onLost callback"

    invoke-virtual {p1, v0, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/e;->b:Ljava/lang/Object;

    check-cast p0, Lc5/f;

    new-instance p1, Lc5/b;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lc5/b;-><init>(I)V

    invoke-virtual {p0, p1}, Lc5/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
