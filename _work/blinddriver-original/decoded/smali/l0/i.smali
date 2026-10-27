.class public final Ll0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/x1;


# instance fields
.field public final l:J

.field public final m:Lm0/i1;

.field public final n:J

.field public o:Ll0/m;

.field public p:Lm0/q;

.field public final q:Lf1/r;


# direct methods
.method public constructor <init>(JLm0/i1;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll0/i;->l:J

    iput-object p3, p0, Ll0/i;->m:Lm0/i1;

    iput-wide p4, p0, Ll0/i;->n:J

    sget-object p4, Ll0/m;->c:Ll0/m;

    iput-object p4, p0, Ll0/i;->o:Ll0/m;

    new-instance p4, Ll0/h;

    const/4 p5, 0x2

    invoke-direct {p4, p0, p5}, Ll0/h;-><init>(Ll0/i;I)V

    new-instance p5, Ll0/k;

    invoke-direct {p5, p4, p3, p1, p2}, Ll0/k;-><init>(Ll0/h;Lm0/i1;J)V

    new-instance v0, Ll0/l;

    invoke-direct {v0, p4, p3, p1, p2}, Ll0/l;-><init>(Ll0/h;Lm0/i1;J)V

    new-instance p1, Ll0/j;

    invoke-direct {p1, v0, p5}, Ll0/j;-><init>(Ll0/l;Ll0/k;)V

    sget-object p2, Ly1/g0;->a:Ly1/l;

    new-instance p2, Ly1/f0;

    const/4 p3, 0x4

    invoke-direct {p2, v0, p5, p1, p3}, Ly1/f0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    sget-object p1, Ly1/r;->a:Ly1/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ly1/t;->b:Ly1/a;

    invoke-static {p2, p1}, Ly1/t;->g(Lf1/r;Ly1/a;)Lf1/r;

    move-result-object p1

    iput-object p1, p0, Ll0/i;->q:Lf1/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ll0/i;->p:Lm0/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll0/i;->m:Lm0/i1;

    invoke-virtual {v1, v0}, Lm0/i1;->d(Lm0/q;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/i;->p:Lm0/q;

    :cond_0
    return-void
.end method

.method public final b(Lp2/j0;)V
    .locals 3

    iget-object v0, p0, Ll0/i;->o:Ll0/m;

    iget-object v0, v0, Ll0/m;->b:Lp2/j0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lp2/j0;->a:Lp2/i0;

    iget-object v0, v0, Lp2/i0;->a:Lp2/g;

    iget-object v1, p1, Lp2/j0;->a:Lp2/i0;

    iget-object v1, v1, Lp2/i0;->a:Lp2/g;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll0/i;->m:Lm0/i1;

    iget-object v0, v0, Lm0/i1;->i:Lm0/i0;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Ll0/i;->l:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm0/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ll0/i;->o:Ll0/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Ll0/m;->a(Ll0/m;Le2/h1;Lp2/j0;I)Ll0/m;

    move-result-object p1

    iput-object p1, p0, Ll0/i;->o:Ll0/m;

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ll0/i;->p:Lm0/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll0/i;->m:Lm0/i1;

    invoke-virtual {v1, v0}, Lm0/i1;->d(Lm0/q;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll0/i;->p:Lm0/q;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    new-instance v0, Lm0/q;

    new-instance v1, Ll0/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ll0/h;-><init>(Ll0/i;I)V

    new-instance v2, Ll0/h;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ll0/h;-><init>(Ll0/i;I)V

    iget-wide v3, p0, Ll0/i;->l:J

    invoke-direct {v0, v3, v4, v1, v2}, Lm0/q;-><init>(JLl0/h;Ll0/h;)V

    iget-object v1, p0, Ll0/i;->m:Lm0/i1;

    iget-object v2, v1, Lm0/i1;->c:Lk/b0;

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The selectable contains an invalid id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lt/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v3, v4}, Lk/b0;->b(J)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Another selectable with the id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".selectableId has already subscribed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lt/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v3, v4, v0}, Lk/b0;->h(JLjava/lang/Object;)V

    iget-object v2, v1, Lm0/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lm0/i1;->a:Z

    iput-object v0, p0, Ll0/i;->p:Lm0/q;

    return-void
.end method
