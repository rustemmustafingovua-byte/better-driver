.class public final Ln/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/f;


# instance fields
.field public final a:Ln/q1;

.field public final b:Ln/o1;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ln/p;

.field public final f:Ln/p;

.field public final g:Ln/p;

.field public h:J

.field public i:Ln/p;


# direct methods
.method public constructor <init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V
    .locals 0

    invoke-interface {p1, p2}, Ln/j;->a(Ln/o1;)Ln/q1;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/y0;->a:Ln/q1;

    iput-object p2, p0, Ln/y0;->b:Ln/o1;

    iput-object p4, p0, Ln/y0;->c:Ljava/lang/Object;

    iput-object p3, p0, Ln/y0;->d:Ljava/lang/Object;

    iget-object p1, p2, Ln/o1;->a:Li9/c;

    invoke-interface {p1, p3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/p;

    iput-object p1, p0, Ln/y0;->e:Ln/p;

    iget-object p1, p2, Ln/o1;->a:Li9/c;

    invoke-interface {p1, p4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln/p;

    iput-object p2, p0, Ln/y0;->f:Ln/p;

    if-eqz p5, :cond_0

    invoke-static {p5}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/p;

    invoke-virtual {p1}, Ln/p;->c()Ln/p;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ln/y0;->g:Ln/p;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ln/y0;->h:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Ln/y0;->a:Ln/q1;

    invoke-interface {p0}, Ln/q1;->a()Z

    move-result p0

    return p0
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, Ln/y0;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Ln/y0;->f:Ln/p;

    iget-object v1, p0, Ln/y0;->g:Ln/p;

    iget-object v2, p0, Ln/y0;->a:Ln/q1;

    iget-object v3, p0, Ln/y0;->e:Ln/p;

    invoke-interface {v2, v3, v0, v1}, Ln/q1;->b(Ln/p;Ln/p;Ln/p;)J

    move-result-wide v0

    iput-wide v0, p0, Ln/y0;->h:J

    :cond_0
    iget-wide v0, p0, Ln/y0;->h:J

    return-wide v0
.end method

.method public final c()Ln/o1;
    .locals 0

    iget-object p0, p0, Ln/y0;->b:Ln/o1;

    return-object p0
.end method

.method public final d(J)Ln/p;
    .locals 7

    invoke-interface {p0, p1, p2}, Ln/f;->e(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p0, Ln/y0;->f:Ln/p;

    iget-object v6, p0, Ln/y0;->g:Ln/p;

    iget-object v1, p0, Ln/y0;->a:Ln/q1;

    iget-object v4, p0, Ln/y0;->e:Ln/p;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Ln/q1;->p(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Ln/y0;->i:Ln/p;

    if-nez p1, :cond_1

    iget-object p1, p0, Ln/y0;->f:Ln/p;

    iget-object p2, p0, Ln/y0;->g:Ln/p;

    iget-object v0, p0, Ln/y0;->a:Ln/q1;

    iget-object v1, p0, Ln/y0;->e:Ln/p;

    invoke-interface {v0, v1, p1, p2}, Ln/q1;->h(Ln/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p1

    iput-object p1, p0, Ln/y0;->i:Ln/p;

    :cond_1
    return-object p1
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0, p1, p2}, Ln/f;->e(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v5, p0, Ln/y0;->f:Ln/p;

    iget-object v6, p0, Ln/y0;->g:Ln/p;

    iget-object v1, p0, Ln/y0;->a:Ln/q1;

    iget-object v4, p0, Ln/y0;->e:Ln/p;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Ln/q1;->i(JLn/p;Ln/p;Ln/p;)Ln/p;

    move-result-object p1

    invoke-virtual {p1}, Ln/p;->b()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Ln/p;->a(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AnimationVector cannot contain a NaN. "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Animation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", playTimeNanos: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln/n0;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ln/y0;->b:Ln/o1;

    iget-object p0, p0, Ln/o1;->b:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Ln/y0;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/y0;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetBasedAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln/y0;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/y0;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/y0;->g:Ln/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ln/f;->b()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms,animationSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln/y0;->a:Ln/q1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
