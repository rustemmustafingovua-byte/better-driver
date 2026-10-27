.class public final Landroidx/lifecycle/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final l:Landroidx/lifecycle/x;

.field public final m:Landroidx/lifecycle/o;

.field public n:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/x;Landroidx/lifecycle/o;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/y0;->l:Landroidx/lifecycle/x;

    iput-object p2, p0, Landroidx/lifecycle/y0;->m:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/y0;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/y0;->l:Landroidx/lifecycle/x;

    iget-object v1, p0, Landroidx/lifecycle/y0;->m:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/y0;->n:Z

    :cond_0
    return-void
.end method
