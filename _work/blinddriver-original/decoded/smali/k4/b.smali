.class public final Lk4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lq4/a;

.field public final d:Lia/z;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lq4/a;Lia/z;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "migrationContainer"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "journalMode"

    invoke-static {p7, v0}, La6/q;->r(ILjava/lang/String;)V

    const-string v0, "queryExecutor"

    invoke-static {p8, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverters"

    invoke-static {p13, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p13, "autoMigrationSpecs"

    invoke-static {p14, p13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lk4/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lk4/b;->c:Lq4/a;

    iput-object p4, p0, Lk4/b;->d:Lia/z;

    iput-object p5, p0, Lk4/b;->e:Ljava/util/List;

    iput-boolean p6, p0, Lk4/b;->f:Z

    iput p7, p0, Lk4/b;->g:I

    iput-object p8, p0, Lk4/b;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lk4/b;->i:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Lk4/b;->j:Z

    iput-boolean p11, p0, Lk4/b;->k:Z

    iput-object p12, p0, Lk4/b;->l:Ljava/util/Set;

    return-void
.end method
