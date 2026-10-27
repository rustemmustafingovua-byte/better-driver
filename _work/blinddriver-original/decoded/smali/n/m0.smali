.class public final Ln/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Lca/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lca/c;

    invoke-direct {v0}, Lca/c;-><init>()V

    iput-object v0, p0, Ln/m0;->b:Lca/c;

    return-void
.end method

.method public static a(Ln/m0;Li9/c;Ly8/c;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ln/j0;->l:Ln/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf2/z2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lf2/z2;-><init>(Ln/m0;Li9/c;Ly8/c;)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
