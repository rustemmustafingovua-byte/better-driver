.class public final Lr0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/x1;


# instance fields
.field public final l:Li9/c;

.field public m:Lr0/f0;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/e0;->l:Li9/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lr0/e0;->m:Lr0/f0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr0/f0;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr0/e0;->m:Lr0/f0;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr0/e0;->l:Li9/c;

    sget-object v1, Lr0/r;->c:Lr0/g0;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/f0;

    iput-object v0, p0, Lr0/e0;->m:Lr0/f0;

    return-void
.end method
