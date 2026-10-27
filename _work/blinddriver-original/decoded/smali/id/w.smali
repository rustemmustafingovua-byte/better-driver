.class public final Lid/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/routing/PackDownloadService;


# direct methods
.method public synthetic constructor <init>(Lua/nav/routing/PackDownloadService;I)V
    .locals 0

    iput p2, p0, Lid/w;->l:I

    iput-object p1, p0, Lid/w;->m:Lua/nav/routing/PackDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 2

    iget p2, p0, Lid/w;->l:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lid/e1;

    iget-boolean p2, p1, Lid/e1;->c:Z

    iget v0, p1, Lid/e1;->d:I

    if-eqz p2, :cond_0

    const-class p2, Landroid/app/NotificationManager;

    iget-object p0, p0, Lid/w;->m:Lua/nav/routing/PackDownloadService;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iget-object p1, p1, Lid/e1;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433"

    invoke-virtual {p0, v0, v1, p1}, Lua/nav/routing/PackDownloadService;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p2, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lyc/d;

    iget-boolean p2, p1, Lyc/d;->c:Z

    iget v0, p1, Lyc/d;->d:I

    if-eqz p2, :cond_2

    const-class p2, Landroid/app/NotificationManager;

    iget-object p0, p0, Lid/w;->m:Lua/nav/routing/PackDownloadService;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iget-object p1, p1, Lyc/d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \u00b7 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u0430\u0434\u0440\u0435\u0441"

    invoke-virtual {p0, v0, v1, p1}, Lua/nav/routing/PackDownloadService;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p2, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
