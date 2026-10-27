.class public final Lr6/p;
.super Lb6/u;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final l:Ln6/e;

.field public final m:Lb6/u;


# direct methods
.method public constructor <init>(Ln6/e;Lb6/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/p;->l:Ln6/e;

    iput-object p2, p0, Lr6/p;->m:Lb6/u;

    return-void
.end method


# virtual methods
.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 2

    iget-object v0, p0, Lr6/p;->m:Lb6/u;

    instance-of v1, v0, Lq6/i;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Lr6/p;

    iget-object p0, p0, Lr6/p;->l:Ln6/e;

    invoke-direct {p2, p0, p1}, Lr6/p;-><init>(Ln6/e;Lb6/u;)V

    return-object p2
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object v0, p0, Lr6/p;->m:Lb6/u;

    iget-object p0, p0, Lr6/p;->l:Ln6/e;

    invoke-virtual {v0, p1, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 0

    iget-object p0, p0, Lr6/p;->m:Lb6/u;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method
