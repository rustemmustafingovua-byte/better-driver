.class public final synthetic Ly4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Lg5/j;

.field public final synthetic n:Lx4/a;

.field public final synthetic o:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lg5/j;Lx4/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/i;->l:Ljava/util/List;

    iput-object p2, p0, Ly4/i;->m:Lg5/j;

    iput-object p3, p0, Ly4/i;->n:Lx4/a;

    iput-object p4, p0, Ly4/i;->o:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly4/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/g;

    iget-object v3, p0, Ly4/i;->m:Lg5/j;

    iget-object v3, v3, Lg5/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ly4/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly4/i;->n:Lx4/a;

    iget-object p0, p0, Ly4/i;->o:Landroidx/work/impl/WorkDatabase;

    invoke-static {v1, p0, v0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
