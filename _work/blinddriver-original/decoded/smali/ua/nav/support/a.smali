.class public final Lua/nav/support/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lmd/a;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lgd/d;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Lha/c;

.field public final e:Lca/c;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmd/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/support/a;->Companion:Lmd/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lgd/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/nav/support/a;->a:Landroid/app/Application;

    iput-object p2, p0, Lua/nav/support/a;->b:Lgd/d;

    const-string p2, "dev_messages"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    sget-object p2, Lua/nav/support/DevMessage;->Companion:Lua/nav/support/DevMessage$Companion;

    invoke-virtual {p2}, Lua/nav/support/DevMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    invoke-static {p2}, Ly4/s;->a(Lkotlinx/serialization/KSerializer;)Lha/c;

    move-result-object p2

    iput-object p2, p0, Lua/nav/support/a;->d:Lha/c;

    new-instance v1, Lca/c;

    invoke-direct {v1}, Lca/c;-><init>()V

    iput-object v1, p0, Lua/nav/support/a;->e:Lca/c;

    const-string v1, "[]"

    :try_start_0
    sget-object v2, Lgd/h;->c:Lia/r;

    const-string v3, "history"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v2, v1, p2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_1
    instance-of p2, p1, Lt8/l;

    if-eqz p2, :cond_1

    sget-object p1, Lu8/r;->l:Lu8/r;

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/support/a;->f:Lx9/l0;

    iput-object p1, p0, Lua/nav/support/a;->g:Lx9/l0;

    iget-object p1, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    const-string p2, "unread"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/support/a;->h:Lx9/l0;

    iput-object p1, p0, Lua/nav/support/a;->i:Lx9/l0;

    iget-object p1, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    const-string p2, "boost_until"

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/support/a;->j:Lx9/l0;

    iput-object p1, p0, Lua/nav/support/a;->k:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    const-string v2, "last_contact"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-lez p0, :cond_0

    sub-long/2addr v0, v5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unread"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lua/nav/support/a;->h:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Li3/f;

    iget-object p0, p0, Lua/nav/support/a;->a:Landroid/app/Application;

    invoke-direct {v0, p0}, Li3/f;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    iget-object v0, v0, Li3/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    iget-object p0, p0, Lua/nav/support/a;->a:Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "dev_messages"

    const-string v3, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Li3/f;

    invoke-direct {v1, p0}, Li3/f;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Li3/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lua/nav/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0xc000000

    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Li3/d;

    invoke-direct {v3, p0, v2}, Li3/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080077

    iget-object v2, v3, Li3/d;->s:Landroid/app/Notification;

    iput p0, v2, Landroid/app/Notification;->icon:I

    const-string p0, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 BlindDriver"

    invoke-static {p0}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Li3/d;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Li3/d;->f:Ljava/lang/CharSequence;

    new-instance p0, Lg5/c;

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lg5/c;-><init>(IZ)V

    invoke-static {p1}, Li3/d;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lg5/c;->n:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Li3/d;->d(Lg5/c;)V

    iput-object v1, v3, Li3/d;->g:Landroid/app/PendingIntent;

    const/16 p0, 0x10

    invoke-virtual {v3, p0}, Li3/d;->c(I)V

    invoke-virtual {v3}, Li3/d;->a()Landroid/app/Notification;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    :try_start_0
    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v0

    const-string v5, "boost_until"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "last_contact"

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lua/nav/support/a;->j:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lua/nav/support/a;->Companion:Lmd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lua/nav/support/a;->a:Landroid/app/Application;

    invoke-static {p0}, Lmd/a;->a(Landroid/app/Application;)V

    return-void
.end method

.method public final e(ZLa9/c;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lua/nav/support/a;->h:Lx9/l0;

    instance-of v1, p2, Lmd/b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lmd/b;

    iget v2, v1, Lmd/b;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lmd/b;->p:I

    goto :goto_0

    :cond_0
    new-instance v1, Lmd/b;

    invoke-direct {v1, p0, p2}, Lmd/b;-><init>(Lua/nav/support/a;La9/c;)V

    :goto_0
    iget-object p2, v1, Lmd/b;->n:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lmd/b;->p:I

    const-string v4, "last_id"

    iget-object v5, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean p1, v1, Lmd/b;->l:Z

    iget-object v1, v1, Lmd/b;->m:Lca/a;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p1, v1, Lmd/b;->l:Z

    iget-object v3, v1, Lmd/b;->m:Lca/a;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lua/nav/support/a;->e:Lca/c;

    iput-object p2, v1, Lmd/b;->m:Lca/a;

    iput-boolean p1, v1, Lmd/b;->l:Z

    iput v7, v1, Lmd/b;->p:I

    invoke-virtual {p2, v1}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/16 v9, 0x0

    :try_start_1
    invoke-interface {v5, v4, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v3, p0, Lua/nav/support/a;->b:Lgd/d;

    iput-object p2, v1, Lmd/b;->m:Lca/a;

    iput-boolean p1, v1, Lmd/b;->l:Z

    iput v6, v1, Lmd/b;->p:I

    sget-object v6, Lu9/e0;->a:Lba/e;

    sget-object v6, Lba/d;->n:Lba/d;

    new-instance v7, Lua/nav/net/c;

    invoke-direct {v7, v3, v9, v10, v8}, Lua/nav/net/c;-><init>(Lgd/d;JLy8/c;)V

    invoke-static {v6, v7, v1}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v11, v1

    move-object v1, p2

    move-object p2, v11

    :goto_3
    :try_start_2
    check-cast p2, Ljava/util/List;

    const/4 v2, 0x0

    if-nez p2, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v2, p0, Lua/nav/support/a;->f:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p2}, Lb6/g;->z(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lua/nav/support/a;->f(Ljava/util/List;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/support/DevMessage;

    iget-wide v5, v5, Lua/nav/support/DevMessage;->a:J

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/support/DevMessage;

    iget-wide v9, v7, Lua/nav/support/DevMessage;->a:J

    cmp-long v7, v5, v9

    if-gez v7, :cond_8

    move-wide v5, v9

    goto :goto_4

    :cond_9
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "unread"

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v8, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p1, :cond_a

    invoke-static {p2}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/support/DevMessage;

    iget-object p1, p1, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lua/nav/support/a;->c(Ljava/lang/String;)V

    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v1, Lca/c;

    invoke-virtual {v1, v8}, Lca/c;->f(Ljava/lang/Object;)V

    return-object p0

    :cond_b
    :try_start_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    move-object v1, p2

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_7
    check-cast v1, Lca/c;

    invoke-virtual {v1, v8}, Lca/c;->f(Ljava/lang/Object;)V

    throw p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lua/nav/support/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lgd/h;->c:Lia/r;

    iget-object v2, p0, Lua/nav/support/a;->d:Lha/c;

    invoke-virtual {v1, v2, p1}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "history"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lua/nav/support/a;->f:Lx9/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lmd/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmd/c;

    iget v1, v0, Lmd/c;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmd/c;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmd/c;

    invoke-direct {v0, p0, p2}, Lmd/c;-><init>(Lua/nav/support/a;La9/c;)V

    :goto_0
    iget-object p2, v0, Lmd/c;->o:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lmd/c;->q:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lmd/c;->n:J

    iget-object p1, v0, Lmd/c;->m:Lca/c;

    iget-object v0, v0, Lmd/c;->l:Ljava/lang/String;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object v9, v0

    move-wide v7, v1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lmd/c;->l:Ljava/lang/String;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d0

    invoke-static {p2, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    iput-object p1, v0, Lmd/c;->l:Ljava/lang/String;

    iput v4, v0, Lmd/c;->q:I

    sget-object p2, Lu9/e0;->a:Lba/e;

    sget-object p2, Lba/d;->n:Lba/d;

    new-instance v2, Lua/nav/net/g;

    iget-object v4, p0, Lua/nav/support/a;->b:Lgd/d;

    invoke-direct {v2, v4, p1, v5}, Lua/nav/net/g;-><init>(Lgd/d;Ljava/lang/String;Ly8/c;)V

    invoke-static {p2, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-object p1, v0, Lmd/c;->l:Ljava/lang/String;

    iget-object p2, p0, Lua/nav/support/a;->e:Lca/c;

    iput-object p2, v0, Lmd/c;->m:Lca/c;

    iput-wide v6, v0, Lmd/c;->n:J

    iput v3, v0, Lmd/c;->q:I

    invoke-virtual {p2, v0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object v9, p1

    move-object p1, p2

    move-wide v7, v6

    :goto_3
    :try_start_0
    iget-object p2, p0, Lua/nav/support/a;->f:Lx9/l0;

    invoke-virtual {p2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    new-instance v6, Lua/nav/support/DevMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lua/nav/support/DevMessage;-><init>(JLjava/lang/String;JZ)V

    invoke-static {p2, v6}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const/16 v0, 0x32

    invoke-static {v0, p2}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lua/nav/support/a;->f(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v5}, Lca/c;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lua/nav/support/a;->d()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, v5}, Lca/c;->f(Ljava/lang/Object;)V

    throw p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
