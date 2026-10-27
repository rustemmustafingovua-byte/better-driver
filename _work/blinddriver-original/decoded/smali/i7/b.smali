.class public final Li7/b;
.super Lwa/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Li7/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Le7/g;Le7/h;)Le7/c;
    .locals 7

    iget v0, p0, Li7/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lwa/h;->g(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Le7/g;Le7/h;)Le7/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p4}, Lm/a;->h(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_1
    check-cast p4, Ls7/a;

    new-instance v0, Lt7/a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p3, Lg7/c;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p4, "com.google.android.gms.signin.internal.clientRequestedAccount"

    const/4 v1, 0x0

    invoke-virtual {v4, p4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p0, :cond_0

    const-string p4, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4, p4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 p4, 0x0

    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt7/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Landroid/os/Bundle;Le7/g;Le7/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic h(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Lf7/o;Lf7/o;)Le7/c;
    .locals 7

    iget v0, p0, Li7/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lwa/h;->h(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Lf7/o;Lf7/o;)Le7/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p4, Le7/a;

    move-object v1, p1

    new-instance p1, Lp7/d;

    move-object p4, p3

    move-object p3, p2

    move-object p2, v1

    invoke-direct/range {p1 .. p6}, Lp7/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Lf7/o;Lf7/o;)V

    return-object p1

    :pswitch_1
    move-object v4, p4

    check-cast v4, Lg7/k;

    new-instance v0, Li7/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Li7/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Lg7/k;Lf7/o;Lf7/o;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
