.class public final synthetic Led/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final synthetic b:Landroid/app/Application;

.field public final synthetic c:Lp2/y;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/app/Application;Lp2/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Led/a;->b:Landroid/app/Application;

    iput-object p3, p0, Led/a;->c:Lp2/y;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    iget-object v0, p0, Led/a;->b:Landroid/app/Application;

    iget-object v1, p0, Led/a;->c:Lp2/y;

    const-string v2, "\n"

    sget-object v3, Led/b;->a:Lr9/i;

    :try_start_0
    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Led/b;->d(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v5, "last_crash.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Lad/b2;

    const/16 v7, 0x19

    invoke-direct {v0, v7}, Lad/b2;-><init>(I)V

    invoke-static {v0, p2}, Lq9/j;->C(Li9/c;Ljava/lang/Object;)Lq9/h;

    move-result-object v0

    new-instance v7, Lad/b2;

    const/16 v8, 0x1a

    invoke-direct {v7, v8}, Lad/b2;-><init>(I)V

    new-instance v8, Lq9/g;

    sget-object v9, Lq9/m;->s:Lq9/m;

    invoke-direct {v8, v0, v7, v9}, Lq9/g;-><init>(Lq9/h;Li9/c;Li9/c;)V

    instance-of v0, v8, Lq9/d;

    if-eqz v0, :cond_0

    check-cast v8, Lq9/d;

    invoke-interface {v8}, Lq9/d;->take()Lq9/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lq9/o;

    invoke-direct {v0, v8}, Lq9/o;-><init>(Lq9/h;)V

    :goto_0
    invoke-static {v0}, Lq9/j;->E(Lq9/h;)Ljava/util/List;

    move-result-object v7

    const-string v8, "\n"

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    iget-object p0, p0, Led/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
