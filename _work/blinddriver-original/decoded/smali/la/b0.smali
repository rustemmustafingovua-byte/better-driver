.class public final Lla/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg7/c;

.field public b:Lla/w;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lla/o;

.field public f:Lc5/o;

.field public g:Lla/e0;

.field public h:Lla/c0;

.field public i:Lla/c0;

.field public j:Lla/c0;

.field public k:J

.field public l:J

.field public m:Lk4/h;

.field public n:Lla/h0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lla/b0;->c:I

    sget-object v0, Lla/e0;->l:Lla/d0;

    iput-object v0, p0, Lla/b0;->g:Lla/e0;

    sget-object v0, Lla/h0;->c:Lla/b;

    iput-object v0, p0, Lla/b0;->n:Lla/h0;

    new-instance v0, Lc5/o;

    invoke-direct {v0}, Lc5/o;-><init>()V

    iput-object v0, p0, Lla/b0;->f:Lc5/o;

    return-void
.end method

.method public static b(Ljava/lang/String;Lla/c0;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lla/c0;->s:Lla/c0;

    if-nez v0, :cond_2

    iget-object v0, p1, Lla/c0;->t:Lla/c0;

    if-nez v0, :cond_1

    iget-object p1, p1, Lla/c0;->u:Lla/c0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lla/c0;
    .locals 17

    move-object/from16 v0, p0

    iget v4, v0, Lla/b0;->c:I

    if-ltz v4, :cond_3

    iget-object v1, v0, Lla/b0;->a:Lg7/c;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lla/b0;->b:Lla/w;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lla/b0;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, v0, Lla/b0;->e:Lla/o;

    iget-object v6, v0, Lla/b0;->f:Lc5/o;

    invoke-virtual {v6}, Lc5/o;->g()Lla/p;

    move-result-object v6

    iget-object v7, v0, Lla/b0;->g:Lla/e0;

    iget-object v8, v0, Lla/b0;->h:Lla/c0;

    iget-object v9, v0, Lla/b0;->i:Lla/c0;

    iget-object v10, v0, Lla/b0;->j:Lla/c0;

    iget-wide v11, v0, Lla/b0;->k:J

    iget-wide v13, v0, Lla/b0;->l:J

    iget-object v15, v0, Lla/b0;->m:Lk4/h;

    iget-object v0, v0, Lla/b0;->n:Lla/h0;

    move-object/from16 v16, v0

    new-instance v0, Lla/c0;

    invoke-direct/range {v0 .. v16}, Lla/c0;-><init>(Lg7/c;Lla/w;Ljava/lang/String;ILla/o;Lla/p;Lla/e0;Lla/c0;Lla/c0;Lla/c0;JJLk4/h;Lla/h0;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lla/b0;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
