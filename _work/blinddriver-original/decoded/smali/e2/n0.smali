.class public final Le2/n0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Le2/p0;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Le2/u1;


# direct methods
.method public constructor <init>(Le2/p0;JJLe2/u1;)V
    .locals 0

    iput-object p1, p0, Le2/n0;->l:Le2/p0;

    iput-wide p2, p0, Le2/n0;->m:J

    iput-wide p4, p0, Le2/n0;->n:J

    iput-object p6, p0, Le2/n0;->o:Le2/u1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le2/n0;->l:Le2/p0;

    invoke-virtual {v0}, Le2/p0;->F0()Le2/m0;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Le2/m0;->l:Z

    invoke-virtual {v0}, Le2/p0;->F0()Le2/m0;

    move-result-object v1

    iget-wide v2, p0, Le2/n0;->m:J

    iput-wide v2, v1, Le2/m0;->m:J

    invoke-virtual {v0}, Le2/p0;->F0()Le2/m0;

    move-result-object v1

    iget-wide v2, p0, Le2/n0;->n:J

    iput-wide v2, v1, Le2/m0;->n:J

    iget-object p0, p0, Le2/n0;->o:Le2/u1;

    iget-object p0, p0, Le2/u1;->l:Lc2/s0;

    invoke-interface {p0}, Lc2/s0;->f()Li9/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Le2/p0;->F0()Le2/m0;

    move-result-object v0

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
