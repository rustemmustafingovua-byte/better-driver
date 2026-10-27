.class public final Lr4/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Lr4/c;

.field public final n:Ld1/c0;

.field public final o:Z

.field public p:Z

.field public final q:Ls4/a;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lr4/c;Ld1/c0;Z)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p4, Ld1/c0;->b:I

    new-instance v6, Lr4/d;

    invoke-direct {v6, p4, p3}, Lr4/d;-><init>(Ld1/c0;Lr4/c;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object v2, v1, Lr4/f;->l:Landroid/content/Context;

    iput-object p3, v1, Lr4/f;->m:Lr4/c;

    iput-object p4, v1, Lr4/f;->n:Ld1/c0;

    iput-boolean p5, v1, Lr4/f;->o:Z

    new-instance p0, Ls4/a;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p1, "randomUUID().toString()"

    invoke-static {p2, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ls4/a;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    iput-object p0, v1, Lr4/f;->q:Ls4/a;

    return-void
.end method


# virtual methods
.method public final b(Z)Lr4/b;
    .locals 3

    iget-object v0, p0, Lr4/f;->q:Ls4/a;

    :try_start_0
    iget-boolean v1, p0, Lr4/f;->r:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ls4/a;->a(Z)V

    iput-boolean v2, p0, Lr4/f;->p:Z

    invoke-virtual {p0, p1}, Lr4/f;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-boolean v2, p0, Lr4/f;->p:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lr4/f;->close()V

    invoke-virtual {p0, p1}, Lr4/f;->b(Z)Lr4/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ls4/a;->b()V

    return-object p0

    :cond_1
    :try_start_1
    iget-object p0, p0, Lr4/f;->m:Lr4/c;

    invoke-static {p0, v1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ls4/a;->b()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Ls4/a;->b()V

    throw p0
.end method

.method public final c(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const-string v0, "{\n                super.\u2026eDatabase()\n            }"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lr4/f;->q:Ls4/a;

    :try_start_0
    iget-boolean v1, v0, Ls4/a;->a:Z

    invoke-virtual {v0, v1}, Ls4/a;->a(Z)V

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v1, p0, Lr4/f;->m:Lr4/c;

    const/4 v2, 0x0

    iput-object v2, v1, Lr4/c;->a:Lr4/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr4/f;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ls4/a;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ls4/a;->b()V

    throw p0
.end method

.method public final d(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lr4/f;->r:Z

    iget-object v2, p0, Lr4/f;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid database parent file, not a directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SupportSQLite"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lr4/f;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lr4/f;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception v1

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    instance-of v3, v1, Lr4/e;

    if-eqz v3, :cond_3

    check-cast v1, Lr4/e;

    iget v3, v1, Lr4/e;->l:I

    invoke-static {v3}, Landroidx/fragment/app/t1;->d(I)I

    move-result v3

    iget-object v1, v1, Lr4/e;->m:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    instance-of v3, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    throw v1

    :cond_2
    throw v1

    :cond_3
    instance-of v3, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lr4/f;->o:Z

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :try_start_3
    invoke-virtual {p0, p1}, Lr4/f;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_3
    .catch Lr4/e; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    iget-object p0, p0, Lr4/e;->m:Ljava/lang/Throwable;

    throw p0

    :cond_4
    throw v1

    :cond_5
    throw v1
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "db"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/f;->p:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lr4/f;->n:Ld1/c0;

    if-nez v0, :cond_0

    iget v0, v2, Ld1/c0;->b:I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lr4/f;->m:Lr4/c;

    invoke-static {p0, p1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lr4/e;

    invoke-direct {p1, v1, p0}, Lr4/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lr4/f;->n:Ld1/c0;

    iget-object p0, p0, Lr4/f;->m:Lr4/c;

    invoke-static {p0, p1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld1/c0;->j(Lr4/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lr4/e;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lr4/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/f;->p:Z

    :try_start_0
    iget-object v0, p0, Lr4/f;->n:Ld1/c0;

    iget-object p0, p0, Lr4/f;->m:Lr4/c;

    invoke-static {p0, p1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ld1/c0;->l(Lr4/b;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lr4/e;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lr4/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lr4/f;->p:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/f;->n:Ld1/c0;

    iget-object v1, p0, Lr4/f;->m:Lr4/c;

    invoke-static {v1, p1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld1/c0;->k(Lr4/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lr4/e;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lr4/e;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/f;->r:Z

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/f;->p:Z

    :try_start_0
    iget-object v0, p0, Lr4/f;->n:Ld1/c0;

    iget-object p0, p0, Lr4/f;->m:Lr4/c;

    invoke-static {p0, p1}, Ll9/a;->r(Lr4/c;Landroid/database/sqlite/SQLiteDatabase;)Lr4/b;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ld1/c0;->l(Lr4/b;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lr4/e;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lr4/e;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method
