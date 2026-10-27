.class public final Lu9/q1;
.super Lz9/q;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final p:J


# direct methods
.method public constructor <init>(JLu9/r1;)V
    .locals 1

    invoke-interface {p3}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    iput-wide p1, p0, Lu9/q1;->p:J

    return-void
.end method


# virtual methods
.method public final R()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lu9/c1;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lu9/q1;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lu9/a;->n:Ly8/h;

    invoke-static {v0}, Lu9/v;->l(Ly8/h;)Lu9/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed out waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lu9/q1;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lu9/p1;

    invoke-direct {v1, v0, p0}, Lu9/p1;-><init>(Ljava/lang/String;Lu9/v0;)V

    invoke-virtual {p0, v1}, Lu9/c1;->s(Ljava/lang/Object;)Z

    return-void
.end method
