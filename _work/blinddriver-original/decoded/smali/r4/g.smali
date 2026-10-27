.class public final Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/b;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Ljava/lang/String;

.field public final n:Ld1/c0;

.field public final o:Z

.field public final p:Z

.field public final q:Lt8/o;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld1/c0;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g;->l:Landroid/content/Context;

    iput-object p2, p0, Lr4/g;->m:Ljava/lang/String;

    iput-object p3, p0, Lr4/g;->n:Ld1/c0;

    iput-boolean p4, p0, Lr4/g;->o:Z

    iput-boolean p5, p0, Lr4/g;->p:Z

    new-instance p1, Lc2/l0;

    const/16 p2, 0x10

    invoke-direct {p1, p2, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lr4/g;->q:Lt8/o;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lr4/g;->q:Lt8/o;

    iget-object v0, v0, Lt8/o;->m:Ljava/lang/Object;

    sget-object v1, Lt8/w;->a:Lt8/w;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lr4/g;->q:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/f;

    invoke-virtual {p0}, Lr4/f;->close()V

    :cond_0
    return-void
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lr4/g;->q:Lt8/o;

    iget-object v0, v0, Lt8/o;->m:Ljava/lang/Object;

    sget-object v1, Lt8/w;->a:Lt8/w;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lr4/g;->q:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/f;

    const-string v1, "sQLiteOpenHelper"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lr4/g;->r:Z

    return-void
.end method

.method public final v()Lr4/b;
    .locals 1

    iget-object p0, p0, Lr4/g;->q:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/f;->b(Z)Lr4/b;

    move-result-object p0

    return-object p0
.end method
