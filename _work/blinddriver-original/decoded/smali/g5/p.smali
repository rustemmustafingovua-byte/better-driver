.class public final Lg5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic l:Lk4/n;

.field public final synthetic m:Lg5/q;


# direct methods
.method public constructor <init>(Lg5/q;Lk4/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/p;->m:Lg5/q;

    iput-object p2, p0, Lg5/p;->l:Lk4/n;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/p;->m:Lg5/q;

    iget-object v0, v0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p0, p0, Lg5/p;->l:Lk4/n;

    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lg5/p;->l:Lk4/n;

    invoke-virtual {p0}, Lk4/n;->c()V

    return-void
.end method
