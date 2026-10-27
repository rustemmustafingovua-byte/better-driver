.class public final Lu9/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/g;


# instance fields
.field public final l:Li9/c;

.field public final m:Ly8/g;


# direct methods
.method public constructor <init>(Ly8/g;Li9/c;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu9/o;->l:Li9/c;

    instance-of p2, p1, Lu9/o;

    if-eqz p2, :cond_0

    check-cast p1, Lu9/o;

    iget-object p1, p1, Lu9/o;->m:Ly8/g;

    :cond_0
    iput-object p1, p0, Lu9/o;->m:Ly8/g;

    return-void
.end method
