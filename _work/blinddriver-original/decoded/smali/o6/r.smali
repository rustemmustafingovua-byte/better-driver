.class public abstract Lo6/r;
.super Ln6/e;
.source "SourceFile"


# instance fields
.field public final a:Lo6/p;

.field public final b:Lb6/f;


# direct methods
.method public constructor <init>(Lo6/p;Lb6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo6/r;->a:Lo6/p;

    iput-object p2, p0, Lo6/r;->b:Lb6/f;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 2

    iget-object v0, p2, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    iget-object v1, p2, Lcom/fasterxml/jackson/core/type/b;->b:Ljava/lang/Class;

    iget-object p0, p0, Lo6/r;->a:Lo6/p;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lo6/p;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lo6/p;->d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    :cond_1
    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    if-nez p0, :cond_4

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->f:Ls5/n;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/fasterxml/jackson/core/type/b;->g:Z

    sget-object v0, Ls5/n;->u:Ls5/n;

    if-ne p0, v0, :cond_2

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ls5/g;->o0(Ljava/lang/Object;)V

    return-object p2

    :cond_2
    sget-object v0, Ls5/n;->w:Ls5/n;

    if-ne p0, v0, :cond_3

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ls5/g;->l0(Ljava/lang/Object;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-virtual {p1, p2}, Ls5/g;->v0(Lcom/fasterxml/jackson/core/type/b;)V

    return-object p2
.end method

.method public f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 1

    if-nez p2, :cond_2

    iget-object p0, p2, Lcom/fasterxml/jackson/core/type/b;->f:Ls5/n;

    sget-object v0, Ls5/n;->u:Ls5/n;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls5/g;->R()V

    return-object p2

    :cond_0
    sget-object v0, Ls5/n;->w:Ls5/n;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Ls5/g;->P()V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p1, p2}, Ls5/g;->w0(Lcom/fasterxml/jackson/core/type/b;)V

    return-object p2
.end method
