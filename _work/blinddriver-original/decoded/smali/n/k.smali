.class public final Ln/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public final l:Ln/o1;

.field public final m:Lr0/e1;

.field public n:Ln/p;

.field public o:J

.field public p:J

.field public q:Z


# direct methods
.method public synthetic constructor <init>(Ln/o1;Ljava/lang/Object;Ln/p;I)V
    .locals 9

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v8}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V

    return-void
.end method

.method public constructor <init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln/k;->l:Ln/o1;

    .line 4
    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/k;->m:Lr0/e1;

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p3}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Ln/o1;->a:Li9/c;

    .line 7
    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/p;

    invoke-virtual {p1}, Ln/p;->d()V

    .line 8
    :goto_0
    iput-object p1, p0, Ln/k;->n:Ln/p;

    .line 9
    iput-wide p4, p0, Ln/k;->o:J

    .line 10
    iput-wide p6, p0, Ln/k;->p:J

    .line 11
    iput-boolean p8, p0, Ln/k;->q:Z

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln/k;->m:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationState(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln/k;->m:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/k;->l:Ln/o1;

    iget-object v1, v1, Ln/o1;->b:Li9/c;

    iget-object v2, p0, Ln/k;->n:Ln/p;

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ln/k;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastFrameTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln/k;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", finishedTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln/k;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
