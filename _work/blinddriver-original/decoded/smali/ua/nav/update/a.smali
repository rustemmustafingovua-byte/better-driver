.class public final Lua/nav/update/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lqd/r;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lu9/t;

.field public final c:Lqd/u;

.field public final d:Lx9/l0;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public final l:Lt8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqd/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/update/a;->Companion:Lqd/r;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/nav/update/a;->a:Landroid/app/Application;

    iput-object p2, p0, Lua/nav/update/a;->b:Lu9/t;

    new-instance p2, Lqd/u;

    invoke-direct {p2, p1}, Lqd/u;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lua/nav/update/a;->c:Lqd/u;

    invoke-virtual {p0}, Lua/nav/update/a;->c()Lqd/q;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/update/a;->d:Lx9/l0;

    iput-object p1, p0, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqd/q;

    const-string v0, "banner_hidden_day"

    const/4 v1, 0x0

    iget-object p2, p2, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lqd/q;->a:Lqd/o;

    sget-object v1, Lqd/o;->m:Lqd/o;

    if-ne p1, v1, :cond_0

    invoke-static {p2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/update/a;->f:Lx9/l0;

    iput-object p1, p0, Lua/nav/update/a;->g:Lx9/l0;

    sget-object p1, Lqd/c;->a:Lqd/c;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/update/a;->h:Lx9/l0;

    iput-object p1, p0, Lua/nav/update/a;->i:Lx9/l0;

    sget-object p1, Lqd/i;->a:Lqd/i;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/update/a;->j:Lx9/l0;

    iput-object p1, p0, Lua/nav/update/a;->k:Lx9/l0;

    new-instance p1, Lp/a1;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lp/a1;-><init>(I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lua/nav/update/a;->l:Lt8/o;

    return-void
.end method

.method public static l(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const-string p0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    return-object p0

    :cond_4
    :goto_2
    const-string p0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u044c"

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lua/nav/update/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "boot_count"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    instance-of v1, p0, Lt8/l;

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final b(La9/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lqd/t;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lqd/t;

    iget v3, v2, Lqd/t;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lqd/t;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lqd/t;

    invoke-direct {v2, v1, v0}, Lqd/t;-><init>(Lua/nav/update/a;La9/c;)V

    :goto_0
    iget-object v0, v2, Lqd/t;->l:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lqd/t;->n:I

    iget-object v5, v1, Lua/nav/update/a;->h:Lx9/l0;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lqd/a;->a:Lqd/a;

    invoke-virtual {v5, v7, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_1
    iput v6, v2, Lqd/t;->n:I

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v4, Lad/t0;

    const/16 v8, 0xa

    invoke-direct {v4, v1, v7, v8}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v4, v2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v0, Lqd/s;

    sget-object v2, Lua/nav/update/ReleaseInfo;->Companion:Lua/nav/update/ReleaseInfo$Companion;

    iget-object v3, v0, Lqd/s;->a:Ljava/lang/String;

    iget-object v0, v0, Lqd/s;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lua/nav/update/ReleaseInfo$Companion;->a(Ljava/lang/String;)Lua/nav/update/ReleaseInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Lua/nav/update/ReleaseInfo;->a(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_b

    iget-object v4, v1, Lua/nav/update/a;->c:Lqd/u;

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v4}, Lqd/u;->a()Lqd/f;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v1}, Lua/nav/update/a;->a()I

    move-result v0

    if-nez v10, :cond_4

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_4
    iget-wide v6, v10, Lqd/f;->a:J

    iget v15, v10, Lqd/f;->c:I

    if-ne v15, v0, :cond_5

    iget-wide v8, v10, Lqd/f;->b:J

    cmp-long v10, v13, v8

    if-ltz v10, :cond_5

    sub-long v8, v13, v8

    add-long/2addr v6, v8

    :cond_5
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v8, v6

    :goto_2
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-string v8, "clock_boot"

    const-string v9, "clock_elapsed"

    const-string v10, "clock_wall"

    iget-object v11, v4, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v10, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11, v9, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11, v8, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-virtual {v1}, Lua/nav/update/a;->h()J

    move-result-wide v6

    sget-object v0, Lua/nav/update/ReleaseInfo;->k:Lia/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lua/nav/update/ReleaseInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v2, v3}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "latest_json"

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v3, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_8

    :try_start_3
    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    move-object v15, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_3

    :goto_4
    instance-of v0, v15, Lt8/l;

    if-eqz v0, :cond_7

    const/4 v15, 0x0

    :cond_7
    check-cast v15, Ljava/lang/Long;

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    const-string v8, "gating_fallback_ms"

    iget-object v9, v0, Luc/f;->a:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-lez v12, :cond_a

    invoke-interface {v9, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v0, Luc/f;->g:Lx9/l0;

    invoke-virtual {v0}, Luc/f;->d()Luc/c;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v0, Luc/f;->i:Lx9/l0;

    invoke-virtual {v0}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lx9/l0;->j(Ljava/lang/Object;)V

    :cond_a
    :goto_6
    iget-object v0, v4, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_check_ms"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lqd/d;

    invoke-direct {v0, v6, v7}, Lqd/d;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lua/nav/update/a;->i()V

    invoke-virtual {v1}, Lua/nav/update/a;->j()V

    const/4 v6, 0x1

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u043e\u043f\u0438\u0441\u0430\u043d\u043d\u044f \u0432\u0438\u043f\u0443\u0441\u043a\u0443"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_7
    sget-object v1, Lgd/h;->a:Lr9/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_d
    invoke-static {v1}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "check: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lqd/b;

    invoke-static {v0}, Lua/nav/update/a;->l(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lqd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lqd/q;
    .locals 3

    sget-object v0, Lua/nav/update/ReleaseInfo;->Companion:Lua/nav/update/ReleaseInfo$Companion;

    iget-object p0, p0, Lua/nav/update/a;->c:Lqd/u;

    iget-object p0, p0, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v1, "latest_json"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lua/nav/update/ReleaseInfo$Companion;->a(Ljava/lang/String;)Lua/nav/update/ReleaseInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Lua/nav/update/ReleaseInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    const v0, 0x18e4a81

    if-eqz p0, :cond_1

    iget v1, p0, Lua/nav/update/ReleaseInfo;->a:I

    if-le v1, v0, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p0, :cond_2

    iget p0, p0, Lua/nav/update/ReleaseInfo;->h:I

    if-ge v0, p0, :cond_2

    new-instance p0, Lqd/q;

    sget-object v0, Lqd/o;->n:Lqd/o;

    sget-object v2, Lqd/p;->m:Lqd/p;

    invoke-direct {p0, v0, v2, v1}, Lqd/q;-><init>(Lqd/o;Lqd/p;Lua/nav/update/ReleaseInfo;)V

    return-object p0

    :cond_2
    new-instance p0, Lqd/q;

    if-eqz v1, :cond_3

    sget-object v0, Lqd/o;->m:Lqd/o;

    sget-object v2, Lqd/p;->l:Lqd/p;

    invoke-direct {p0, v0, v2, v1}, Lqd/q;-><init>(Lqd/o;Lqd/p;Lua/nav/update/ReleaseInfo;)V

    return-object p0

    :cond_3
    sget-object v0, Lqd/o;->l:Lqd/o;

    sget-object v1, Lqd/p;->l:Lqd/p;

    invoke-direct {p0, v0, v1, v2}, Lqd/q;-><init>(Lqd/o;Lqd/p;Lua/nav/update/ReleaseInfo;)V

    return-object p0
.end method

.method public final d()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/update/a;->g:Lx9/l0;

    return-object p0
.end method

.method public final e()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/update/a;->i:Lx9/l0;

    return-object p0
.end method

.method public final f()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/update/a;->k:Lx9/l0;

    return-object p0
.end method

.method public final g()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/update/a;->e:Lx9/l0;

    return-object p0
.end method

.method public final h()J
    .locals 9

    iget-object v0, p0, Lua/nav/update/a;->c:Lqd/u;

    invoke-virtual {v0}, Lqd/u;->a()Lqd/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0}, Lua/nav/update/a;->a()I

    move-result p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lqd/f;->a:J

    iget v7, v0, Lqd/f;->c:I

    if-ne v7, p0, :cond_1

    iget-wide v7, v0, Lqd/f;->b:J

    cmp-long p0, v3, v7

    if-ltz p0, :cond_1

    sub-long/2addr v3, v7

    add-long/2addr v5, v3

    :cond_1
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final i()V
    .locals 5

    invoke-virtual {p0}, Lua/nav/update/a;->c()Lqd/q;

    move-result-object v0

    iget-object v1, p0, Lua/nav/update/a;->d:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd/q;

    iget-object v1, p0, Lua/nav/update/a;->c:Lqd/u;

    iget-object v1, v1, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v3, "banner_hidden_day"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {v0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lqd/q;->a:Lqd/o;

    sget-object v4, Lqd/o;->m:Lqd/o;

    if-ne v0, v4, :cond_0

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lua/nav/update/a;->f:Lx9/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 9

    iget-object v0, p0, Lua/nav/update/a;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd/q;

    iget-object v1, v0, Lqd/q;->a:Lqd/o;

    iget-object v2, v0, Lqd/q;->c:Lua/nav/update/ReleaseInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    const-string v4, "notified_code"

    iget-object v5, p0, Lua/nav/update/a;->a:Landroid/app/Application;

    const-string v6, ""

    const/4 v7, 0x1

    iget-object p0, p0, Lua/nav/update/a;->c:Lqd/u;

    if-eq v1, v7, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget-object p0, p0, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, v0, Lqd/q;->b:Lqd/p;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    if-ne p0, v7, :cond_0

    const-string v6, "\u0426\u044f \u0432\u0435\u0440\u0441\u0456\u044f \u0431\u0456\u043b\u044c\u0448\u0435 \u043d\u0435 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f. \u041e\u043d\u043e\u0432\u0456\u0442\u044c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a."

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f BlindDriver"

    invoke-static {v5, p0, v6}, Lr5/h1;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    if-eqz v2, :cond_8

    iget v1, v2, Lua/nav/update/ReleaseInfo;->a:I

    iget-object v8, p0, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v8, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, v0, Lqd/q;->a:Lqd/o;

    sget-object v0, Lqd/v;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-ne p0, v7, :cond_6

    iget-object p0, v2, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    if-nez p0, :cond_5

    move-object p0, v6

    :cond_5
    const-string v0, "\u0412\u0438\u0439\u0448\u043b\u0430 \u043d\u043e\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u044f "

    const-string v1, ". \u0420\u0430\u0434\u0438\u043c\u043e \u043e\u043d\u043e\u0432\u0438\u0442\u0438\u0441\u044f: \u0443 \u043d\u0456\u0439 \u0432\u0438\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043d\u044f \u0439 \u043f\u043e\u043a\u0440\u0430\u0449\u0435\u043d\u043d\u044f."

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v6, p0

    :goto_2
    const-string p0, "\u0412\u0438\u0439\u0448\u043b\u0430 \u043d\u043e\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u044f BlindDriver"

    invoke-static {v5, p0, v6}, Lr5/h1;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final k()V
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Lod/d7;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    iget-object v2, v1, Lua/nav/update/a;->b:Lu9/t;

    const/4 v4, 0x3

    invoke-static {v2, v3, v3, v0, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lx4/u;

    const-class v6, Lua/nav/update/UpdateWorker;

    const-wide/16 v7, 0x18

    const-wide/16 v9, 0x6

    invoke-direct/range {v5 .. v11}, Lx4/u;-><init>(Ljava/lang/Class;JJLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lh5/e;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Lh5/e;

    invoke-direct {v7, v3}, Lh5/e;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v17

    new-instance v6, Lx4/d;

    const-wide/16 v13, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v15, v13

    invoke-direct/range {v6 .. v17}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    iget-object v0, v5, Lk4/p;->b:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    iput-object v6, v0, Lg5/o;->j:Lx4/d;

    invoke-virtual {v5}, Lk4/p;->b()Lx4/z;

    move-result-object v0

    check-cast v0, Lx4/y;

    iget-object v5, v1, Lua/nav/update/a;->a:Landroid/app/Application;

    invoke-static {v5}, Ly4/q;->M(Landroid/content/Context;)Ly4/q;

    move-result-object v5

    const-string v6, "update-check"

    invoke-virtual {v5, v6, v0}, Ly4/q;->L(Ljava/lang/String;Lx4/y;)Lx4/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WorkManager: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UpdateManager"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lua/nav/update/a;->c:Lqd/u;

    iget-object v0, v0, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v5, "last_check_ms"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lua/nav/update/a;->h()J

    move-result-wide v5

    sub-long/2addr v5, v8

    const-wide/32 v7, 0x1499700

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    :cond_1
    new-instance v0, Lod/d7;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v5}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    invoke-static {v2, v3, v3, v0, v4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_2
    return-void
.end method
