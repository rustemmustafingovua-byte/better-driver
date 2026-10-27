.class public final Ls6/m;
.super Ln6/e;
.source "SourceFile"


# instance fields
.field public final a:Ln6/e;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln6/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls6/m;->a:Ln6/e;

    iput-object p2, p0, Ls6/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lb6/f;)Ln6/e;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls6/m;->a:Ln6/e;

    invoke-virtual {p0}, Ln6/e;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lr5/s0;
    .locals 0

    iget-object p0, p0, Ls6/m;->a:Ln6/e;

    invoke-virtual {p0}, Ln6/e;->c()Lr5/s0;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 1

    iget-object v0, p0, Ls6/m;->b:Ljava/lang/Object;

    iput-object v0, p2, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    iget-object p0, p0, Ls6/m;->a:Ln6/e;

    invoke-virtual {p0, p1, p2}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;
    .locals 0

    iget-object p0, p0, Ls6/m;->a:Ln6/e;

    invoke-virtual {p0, p1, p2}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    return-object p0
.end method
