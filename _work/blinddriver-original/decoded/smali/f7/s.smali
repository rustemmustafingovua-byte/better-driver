.class public final Lf7/s;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Landroid/content/Context;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr0/u0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf7/s;->a:I

    iput-object p1, p0, Lf7/s;->b:Landroid/content/Context;

    iput-object p2, p0, Lf7/s;->c:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg5/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf7/s;->a:I

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lf7/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lf7/s;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "c"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "i"

    invoke-static {p2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lf7/s;->c:Ljava/lang/Object;

    check-cast p1, Lr0/u0;

    iget-object p0, p0, Lf7/s;->b:Landroid/content/Context;

    invoke-static {p0}, Lod/m;->O(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lf7/s;->c:Ljava/lang/Object;

    check-cast p0, Lg5/l;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
