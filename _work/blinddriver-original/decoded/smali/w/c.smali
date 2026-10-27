.class public final Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/d0;

.field public final synthetic b:Lw/p;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lw/p;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/c;->b:Lw/p;

    iput-boolean p2, p0, Lw/c;->c:Z

    new-instance p2, Lod/x4;

    const/16 v0, 0xe

    invoke-direct {p2, v0, p1}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lw/c;->a:Lr0/d0;

    return-void
.end method
