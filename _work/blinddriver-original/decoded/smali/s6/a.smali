.class public abstract Ls6/a;
.super Lq6/h;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final n:Lb6/f;

.field public final o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ls6/a;->n:Lb6/f;

    .line 3
    iput-object p1, p0, Ls6/a;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ls6/a;Lb6/f;Ljava/lang/Boolean;)V
    .locals 1

    .line 4
    iget-object p1, p1, Ls6/n0;->l:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 6
    iput-object p2, p0, Ls6/a;->n:Lb6/f;

    .line 7
    iput-object p3, p0, Ls6/a;->o:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lr5/n;->p:Lr5/n;

    invoke-virtual {p1, v0}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Ls6/a;->o:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Ls6/a;->k(Lb6/f;Ljava/lang/Boolean;)Lb6/u;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final j(Lb6/r0;)Z
    .locals 0

    iget-object p0, p0, Ls6/a;->o:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    sget-object p0, Lb6/q0;->E:Lb6/q0;

    iget-object p1, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p1, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract k(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
.end method

.method public abstract l(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p4, p1, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Ls6/a;->l(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method
