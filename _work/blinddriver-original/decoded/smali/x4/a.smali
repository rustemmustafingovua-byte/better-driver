.class public final Lx4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lba/e;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lx4/j;

.field public final e:Lx4/j;

.field public final f:Lx4/j;

.field public final g:Lq3/k;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Lx4/j;


# direct methods
.method public constructor <init>(Lx4/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lg5/f;->f(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lx4/a;->a:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lu9/e0;->a:Lba/e;

    iput-object p1, p0, Lx4/a;->b:Lba/e;

    const/4 p1, 0x1

    invoke-static {p1}, Lg5/f;->f(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lx4/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lx4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lx4/a;->d:Lx4/j;

    sget-object v0, Lx4/j;->a:Lx4/j;

    iput-object v0, p0, Lx4/a;->e:Lx4/j;

    sget-object v0, Lx4/j;->b:Lx4/j;

    iput-object v0, p0, Lx4/a;->f:Lx4/j;

    new-instance v0, Lq3/k;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lq3/k;-><init>(I)V

    iput-object v0, p0, Lx4/a;->g:Lq3/k;

    const/4 v0, 0x4

    iput v0, p0, Lx4/a;->h:I

    const v0, 0x7fffffff

    iput v0, p0, Lx4/a;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lx4/a;->k:I

    const/16 v0, 0x8

    iput v0, p0, Lx4/a;->j:I

    iput-boolean p1, p0, Lx4/a;->l:Z

    new-instance p1, Lx4/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/a;->m:Lx4/j;

    return-void
.end method
