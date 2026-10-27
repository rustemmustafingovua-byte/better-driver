.class public final Lla/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final l:Lg7/c;

.field public final m:Lla/w;

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:Lla/o;

.field public final q:Lla/p;

.field public final r:Lla/e0;

.field public final s:Lla/c0;

.field public final t:Lla/c0;

.field public final u:Lla/c0;

.field public final v:J

.field public final w:J

.field public final x:Lk4/h;

.field public final y:Lla/h0;

.field public final z:Z


# direct methods
.method public constructor <init>(Lg7/c;Lla/w;Ljava/lang/String;ILla/o;Lla/p;Lla/e0;Lla/c0;Lla/c0;Lla/c0;JJLk4/h;Lla/h0;)V
    .locals 2

    move-object/from16 v0, p16

    const-string v1, "request"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "protocol"

    invoke-static {p2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-static {p3, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p7, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trailersSource"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/c0;->l:Lg7/c;

    iput-object p2, p0, Lla/c0;->m:Lla/w;

    iput-object p3, p0, Lla/c0;->n:Ljava/lang/String;

    iput p4, p0, Lla/c0;->o:I

    iput-object p5, p0, Lla/c0;->p:Lla/o;

    iput-object p6, p0, Lla/c0;->q:Lla/p;

    iput-object p7, p0, Lla/c0;->r:Lla/e0;

    iput-object p8, p0, Lla/c0;->s:Lla/c0;

    iput-object p9, p0, Lla/c0;->t:Lla/c0;

    iput-object p10, p0, Lla/c0;->u:Lla/c0;

    iput-wide p11, p0, Lla/c0;->v:J

    move-wide p1, p13

    iput-wide p1, p0, Lla/c0;->w:J

    move-object/from16 p1, p15

    iput-object p1, p0, Lla/c0;->x:Lk4/h;

    iput-object v0, p0, Lla/c0;->y:Lla/h0;

    const/16 p1, 0xc8

    const/4 p2, 0x0

    if-gt p1, p4, :cond_0

    const/16 p1, 0x12c

    if-ge p4, p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lla/c0;->z:Z

    return-void
.end method


# virtual methods
.method public final b()Lla/b0;
    .locals 3

    new-instance v0, Lla/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lla/b0;->c:I

    sget-object v1, Lla/e0;->l:Lla/d0;

    iput-object v1, v0, Lla/b0;->g:Lla/e0;

    sget-object v1, Lla/h0;->c:Lla/b;

    iput-object v1, v0, Lla/b0;->n:Lla/h0;

    iget-object v1, p0, Lla/c0;->l:Lg7/c;

    iput-object v1, v0, Lla/b0;->a:Lg7/c;

    iget-object v1, p0, Lla/c0;->m:Lla/w;

    iput-object v1, v0, Lla/b0;->b:Lla/w;

    iget v1, p0, Lla/c0;->o:I

    iput v1, v0, Lla/b0;->c:I

    iget-object v1, p0, Lla/c0;->n:Ljava/lang/String;

    iput-object v1, v0, Lla/b0;->d:Ljava/lang/String;

    iget-object v1, p0, Lla/c0;->p:Lla/o;

    iput-object v1, v0, Lla/b0;->e:Lla/o;

    iget-object v1, p0, Lla/c0;->q:Lla/p;

    invoke-virtual {v1}, Lla/p;->c()Lc5/o;

    move-result-object v1

    iput-object v1, v0, Lla/b0;->f:Lc5/o;

    iget-object v1, p0, Lla/c0;->r:Lla/e0;

    iput-object v1, v0, Lla/b0;->g:Lla/e0;

    iget-object v1, p0, Lla/c0;->s:Lla/c0;

    iput-object v1, v0, Lla/b0;->h:Lla/c0;

    iget-object v1, p0, Lla/c0;->t:Lla/c0;

    iput-object v1, v0, Lla/b0;->i:Lla/c0;

    iget-object v1, p0, Lla/c0;->u:Lla/c0;

    iput-object v1, v0, Lla/b0;->j:Lla/c0;

    iget-wide v1, p0, Lla/c0;->v:J

    iput-wide v1, v0, Lla/b0;->k:J

    iget-wide v1, p0, Lla/c0;->w:J

    iput-wide v1, v0, Lla/b0;->l:J

    iget-object v1, p0, Lla/c0;->x:Lk4/h;

    iput-object v1, v0, Lla/b0;->m:Lk4/h;

    iget-object p0, p0, Lla/c0;->y:Lla/h0;

    iput-object p0, v0, Lla/b0;->n:Lla/h0;

    return-object v0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lla/c0;->r:Lla/e0;

    invoke-virtual {p0}, Lla/e0;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lla/c0;->m:Lla/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lla/c0;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lla/c0;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lla/c0;->l:Lg7/c;

    iget-object p0, p0, Lg7/c;->c:Ljava/lang/Object;

    check-cast p0, Lla/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
