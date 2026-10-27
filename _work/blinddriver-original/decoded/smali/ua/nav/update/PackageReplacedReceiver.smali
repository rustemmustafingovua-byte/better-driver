.class public final Lua/nav/update/PackageReplacedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-static {p0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "BlindDriver \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043e"

    const-string p2, "\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e \u0432\u0435\u0440\u0441\u0456\u044e 1.0.1. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438."

    invoke-static {p1, p0, p2}, Lr5/h1;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
