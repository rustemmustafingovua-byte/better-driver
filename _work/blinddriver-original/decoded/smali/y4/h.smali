.class public final synthetic Ly4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/b;


# instance fields
.field public final synthetic l:Ljava/util/concurrent/Executor;

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Lx4/a;

.field public final synthetic o:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lx4/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/h;->l:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ly4/h;->m:Ljava/util/List;

    iput-object p3, p0, Ly4/h;->n:Lx4/a;

    iput-object p4, p0, Ly4/h;->o:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final e(Lg5/j;Z)V
    .locals 3

    new-instance p2, Ly4/i;

    iget-object v0, p0, Ly4/h;->m:Ljava/util/List;

    iget-object v1, p0, Ly4/h;->n:Lx4/a;

    iget-object v2, p0, Ly4/h;->o:Landroidx/work/impl/WorkDatabase;

    invoke-direct {p2, v0, p1, v1, v2}, Ly4/i;-><init>(Ljava/util/List;Lg5/j;Lx4/a;Landroidx/work/impl/WorkDatabase;)V

    iget-object p0, p0, Ly4/h;->l:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
